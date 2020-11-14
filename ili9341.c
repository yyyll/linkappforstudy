/**
 * @file ili9341.c
 *
 */

/*********************
 *      INCLUDES
 *********************/
#include "ili9341.h"
#include "driver/gpio.h"
#include <string.h>

#include "ulog/ulog.h"
#include "lvgl.h"
/*********************
 *      DEFINES
 *********************/
// 240*320

#define _ESPOS_TIME_DELAY_TICK 100

#define SPI_CS(X)    X?gpio_set_level(ILI9341_CS, 1)  :gpio_set_level(ILI9341_CS, 0)  
#define SPI_CLK(X)   X?gpio_set_level(ILI9341_CLK, 1) :gpio_set_level(ILI9341_CLK, 0)      
#define SPI_SDA(X)   X?gpio_set_level(ILI9341_MOSI, 1):gpio_set_level(ILI9341_MOSI, 0)
#define SPI_RS(X)    X?gpio_set_level(ILI9341_RS, 1)  :gpio_set_level(ILI9341_RS, 0)

/**********************
 *      TYPEDEFS
 **********************/

/*The LCD needs a bunch of command/argument values to be initialized. They are stored in this struct. */
typedef struct
{
	uint8_t cmd;
	uint8_t data[16];
	uint8_t databytes; //No of data in data; bit 7 = delay after set; 0xFF = end of cmds.
} lcd_init_cmd_t;

/**********************
 *  STATIC PROTOTYPES
 **********************/
static void ili9341_send_cmd(uint8_t cmd);
static void ili9341_send_data(void *data, uint16_t length);
static void spi_send_byte(char data);
static void spi_send_bytes(void *data, uint16_t length);
void lcd_spi_gpio_init(void);
/**********************
 *  STATIC VARIABLES
 **********************/

/**********************
 *      MACROS
 **********************/

/**********************
 *   GLOBAL FUNCTIONS
 **********************/
void lcd_debug_task(void *arg)
{
    lv_color_t color = LV_COLOR_WHITE;
	static int state = 0;
	
	switch(state++)
	{
		// B R G
		case 0: color = LV_COLOR_WHITE; 
			LOG("WHITE=%x\n", color.full);
			break;
		case 1: color = LV_COLOR_BLACK; 
			LOG("=======================BLACK=%x\n", color.full);
			break;
		case 2: color = LV_COLOR_GREEN; 
			LOG("=======================GREEN=%x\n", color.full);
			break; // 蓝色
		case 3: color = LV_COLOR_BLUE; 
			LOG("=======================BLUE=%x\n", color.full);
			break; // 绿色
		case 4: color = LV_COLOR_RED; 
			LOG("=======================RED=%x\n", color.full);
			break; // 蓝色
		case 5: color = LV_COLOR_YELLOW; 
			LOG("=======================YEL=%x\n", color.full);
			break; // 黄色
		case 6: color = LV_COLOR_PURPLE; 
			LOG("=======================PURL=%x\n", color.full);
			break; // 黄色
		default: break;
	}
	LOG("lcd_debug_task %x deep=%d\n", color, LV_COLOR_DEPTH);
	if (state > 6)
		state = 0;

    ili9431_fill(0, 0, ILI9341_HOR_RES, ILI9341_VER_RES, color.full);
	aos_post_delayed_action(5000, lcd_debug_task, NULL);
}

void ili9431_init(void)
{
	lcd_init_cmd_t ili_init_cmds[] = {
		{_RDDSDR, {0x03, 0x80, 0x02}, 3},
		{_PWCRTLB, {0x00, 0xc1, 0X30}, 3},
		{_PWRONCTRL, {0x64,0x03,0x12,0x81}, 4},
		{_DTCTRLA, {0x85,0x00,0x78}, 3},
		{_PWCTRLA, {0x39,0x2c,0x00,0x34,0x02}, 5},
		{_PRCTRL, {0x20}, 1},
		{_DTCTRLB, {0x00, 0x00}, 2},
		{_PWCTRL1, {0x23}, 1},		 /*Power control*/
		{_PWCTRL2, {0x10}, 1},		 /*Power control */
		{_VMCTRL1, {0x3e, 0x28}, 2}, /*VCOM control*/
		{_VMCTRL2, {0x86}, 1},		 /*VCOM control*/
		{_MADCTL, {0x48}, 1},		 /*Memory Access Control*/
		{_PIXSET, {0x55}, 1},		 /*Pixel Format Set*/
		{_FRMCTR1, {0x00, 0x18}, 2},
		{_DISCTRL, {0x08,0x82,0x27}, 3},
		{_ENA3G, {0x00}, 1},
		{_GAMSET, {0x01}, 1},
		{_PGAMCTRL, {0x0f,0x31,0x2b,0x0c,0x0e,0x09,0x54,0xa8,0x46,0x0c,0x17,0x09,0x0f,0x07,0x00}, 15},
		{_NGAMCTRL, {0x00,0x19,0x1b,0x04,0x10,0x07,0x2a,0x47,0x39,0x03,0x06,0x06,0x30,0x38,0x0f}, 15},
		{_SLPOUT, {0}, 0},
		{_DISPON, {0}, 0},
		{0, {0}, 0xff}, // end flag
	};
	lcd_spi_gpio_init();
	SPI_CS(1);

	LOG("ILI9341 initialization.\n");
	LOG("ILI9341_HOR_RES=%d", ILI9341_HOR_RES);
	LOG("ILI9341_VER_RES=%d", ILI9341_VER_RES);

	//Send all the commands
	uint16_t cmd = 0;
	while (ili_init_cmds[cmd].databytes != 0xff)
	{
		ili9341_send_cmd(ili_init_cmds[cmd].cmd);
		ili9341_send_data(ili_init_cmds[cmd].data, ili_init_cmds[cmd].databytes & 0x1F);
		cmd++;
	}

	ili9431_fill(0, 0, ILI9341_HOR_RES, ILI9341_VER_RES, 0xFFFF);
}

void ili9341_WriteReg(uint8_t Command, uint8_t *Parameters, uint8_t NbParameters)
{
  uint8_t i;

  /* Send command */
  ili9341_send_cmd(Command);
  
  /* Send command's parameters if any */
  ili9341_send_data(Parameters, NbParameters);
}

void  ili9341_SetCursor(uint16_t Xpos, uint16_t Ypos)
{
  uint8_t   parameter[4];
  /* CASET: Comumn Addrses Set */
  parameter[0] = 0x00;     
  parameter[1] = 0x00 + Xpos;
  parameter[2] = 0x00;
  parameter[3] = 0xEF + Xpos;
  ili9341_WriteReg(0x2A, parameter, 4);
  /* RASET: Row Addrses Set */  
  parameter[0] = 0x00;
  parameter[1] = 0x00 + Ypos;
  parameter[2] = 0x01;
  parameter[3] = 0x3F + Ypos;
  ili9341_WriteReg(0x2B, parameter, 4);
}

uint8_t endian_buffer[480];

void lcd_WriteLine(uint16_t Xpos, uint16_t Ypos, uint16_t *RGBCode, uint16_t pointNum)
{
  int i = 0;
  uint8_t   parameter[4];

  /* Set Cursor */
  /* CASET: Comumn Addrses Set */
  parameter[0] = 0x00;     
  parameter[1] = 0x00 + Xpos;
  parameter[2] = 0x00;
  parameter[3] = 0xEF;
  ili9341_WriteReg(0x2A, parameter, 4);
  /* RASET: Row Addrses Set */  
  parameter[0] = (Ypos & 0xff00) >> 8;
  parameter[1] = 0xFF & Ypos;
  parameter[2] = (Ypos & 0xff00) >> 8;
  parameter[3] = 0xFF & Ypos;
  ili9341_WriteReg(0x2B, parameter, 4);

  /* Prepare to write to LCD RAM */
  ili9341_WriteReg(0x2C, (uint8_t*)NULL, 0);   /* RAM write data command */

  for (i = 0; i < pointNum; i++) {
    endian_buffer[2*i] = (uint8_t)(RGBCode[i] >> 8);
    endian_buffer[2*i + 1] = (uint8_t)RGBCode[i];
  }

  /* Write RAM data */
  ili9341_send_data(endian_buffer, pointNum*2);
}

/**********************
 *   STATIC FUNCTIONS
 **********************/

static void ili9341_send_cmd(uint8_t cmd)
{
	gpio_set_level(ILI9341_RS, 0);
	spi_send_bytes(&cmd, 1);
}

static void ili9341_send_data(void *data, uint16_t length)
{
	gpio_set_level(ILI9341_RS, 1);
	spi_send_bytes(data, length);
}

void lcd_spi_gpio_init(void)
{   
	gpio_config_t io_conf;
	//disable interrupt
	io_conf.intr_type = GPIO_PIN_INTR_DISABLE;
	//set as output mode
	io_conf.mode = GPIO_MODE_OUTPUT;
	//bit mask of the pins that you want to set,e.g.GPIO18/19
	io_conf.pin_bit_mask = GPIO_OUTPUT_PIN_SEL;
	//disable pull-down mode
	io_conf.pull_down_en = 0;
	//disable pull-up mode
	io_conf.pull_up_en = 0;
	//configure GPIO with the given settings
	gpio_config(&io_conf);
}

static void spi_send_byte(char data)
{
    int i;

    for(i=0; i <= 7; i++)
    {
		gpio_set_level(ILI9341_CLK, 0);
		// SPI_CLK(0); X?gpio_set_level(1):gpio_set_level(0)
        SPI_SDA(data & (0x80>>i)); //MSB
        gpio_set_level(ILI9341_CLK, 1);
    }
}

static void spi_send_bytes(void *data, uint16_t length)
{
	int i;
    char *dat = (char *)data;

	SPI_CS(0);
    for(i = 0; i < length; i++)
    {
        spi_send_byte(dat[i]);
    }
	SPI_CS(1);
}


void ili9431_fill(int32_t x1, int32_t y1, int32_t x2, int32_t y2, uint16_t color)
{
	uint8_t data[4];
	uint16_t buf[ILI9341_HOR_RES]; //

	/*Column addresses*/
	ili9341_send_cmd(0x2A);
	data[0] = (x1 >> 8) & 0xFF;
	data[1] = x1 & 0xFF;
	data[2] = (x2 >> 8) & 0xFF;
	data[3] = x2 & 0xFF;
	ili9341_send_data(data, 4);

	/*Page addresses*/
	ili9341_send_cmd(0x2B);
	data[0] = (y1 >> 8) & 0xFF;
	data[1] = y1 & 0xFF;
	data[2] = (y2 >> 8) & 0xFF;
	data[3] = y2 & 0xFF;
	ili9341_send_data(data, 4);

	/*Memory write*/
	ili9341_send_cmd(0x2C);

	uint32_t size = (x2 - x1 + 1) * (y2 - y1 + 1);
	uint16_t color_swap = ((color >> 8) & 0xFF) | ((color & 0xFF) << 8); /*It's a 8 bit SPI bytes need to be swapped*/
	// uint16_t color_swap = color;

	uint32_t i;
	if (size < ILI9341_HOR_RES)
	{
		for (i = 0; i < size; i++)
			buf[i] = color_swap;
	}
	else
	{
		for (i = 0; i < ILI9341_HOR_RES; i++)
			buf[i] = color_swap;
	}

	while (size > ILI9341_HOR_RES)
	{
		ili9341_send_data(buf, ILI9341_HOR_RES * 2);
		size -= ILI9341_HOR_RES;
	}

	ili9341_send_data(buf, size * 2); /*Send the remaining data*/
}
