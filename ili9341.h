/**
 * @file lv_templ.h
 *
 */

#ifndef ILI9341_H
#define ILI9341_H

#ifdef __cplusplus
extern "C" {
#endif

/*********************
 *      INCLUDES
 *********************/
#include <stdint.h>
// #include "lvgl.h"

/*********************
 *      DEFINES
 *********************/
#ifdef LV_HOR_RES
#define ILI9341_HOR_RES	LV_HOR_RES
#else
#define ILI9341_HOR_RES	240
#endif
#ifdef LV_VER_RES
#define ILI9341_VER_RES	LV_VER_RES
#else
#define ILI9341_VER_RES	320
#endif

#define ILI9341_MOSI 13 // 23
#define ILI9341_MISO 12 // 25
#define ILI9341_CLK  14 // 19
#define ILI9341_CS   19 // 22
#define ILI9341_RS   2 // 21 // CMD OR DATA
#define GPIO_OUTPUT_PIN_SEL (1<<ILI9341_MOSI | 1<<ILI9341_CLK | 1<<ILI9341_CS | 1<<ILI9341_RS)
// #define ILI9341_RST  2  // 18
// #define ILI9341_BCKL 5 not support
// #define ILI9341_BCKL_ON 0

#define USE_SPI VSPI_HOST
#define SPI_FREQ 26

#define _NOP  (0x00)
#define _SWRESET (0x01)
#define _RDDIDIF (0x04)
#define _RDDST (0x09)

#define _RDDPM (0x0a)
#define _RDDMADCTL (0x0b)
#define _RDDCOLMOD (0x0c)
#define _RDDIM (0x0d)
#define _RDDSM (0x0e)
#define _RDDSDR (0x0f) //Read Display Self-Diagnostic Result
#define _SLPIN (0x10)
#define _SLPOUT (0x11) //Sleep Out

#define _PTLON (0x12)
#define _NORON (0x13)
#define _DINVOFF (0x20)
#define _DINVON (0x21)
#define _GAMSET (0x26) //Gamma Set
#define _DISPOFF (0x28) //Display Off
#define _DISPON (0x29) //Display On
#define _CASET (0x2a) //Column Address Set
#define _PASET (0x2b) //Page Address Set
#define _RAMWR (0x2c) //Memory Write
#define _RAMRD (0x2e) //Memory Read
#define _PLTAR (0x30)

#define _VSCRDEF (0x33)
#define _TEOFF (0x34)
#define _TEON (0x35)
#define _MADCTL (0x36) //Memory Access Control
#define _VSCRSADD (0x37) //Vertical Scrolling Start Address
#define _IDMOFF (0x38)
#define _IDMON (0x39)
#define _PIXSET (0x3a) //Pixel Format Set

#define _WRMEMC (0x3c)
#define _RDMEMC (0x3e)
#define _STS (0x44)
#define _GTS (0x45)
#define _WRDISBV (0x51)

#define _RDDISBV (0x52)
#define _WRCTRLD (0x53)
#define _RDCTRLD (0x54)
#define _WRCABC (0x55)
#define _PWCTRLA (0xcb) //Power Control A

#define _PWCRTLB (0xcf) //Power Control B
#define _DTCTRLA (0xe8) //Driver Timing Control A
#define _DTCTRLB (0xea) //Driver Timing Control B
#define _PWRONCTRL (0xed) //Power on Sequence Control
#define _PRCTRL (0xf7) //Pump Ratio Control

#define _PWCTRL1 (0xc0) //Power Control 1
#define _PWCTRL2 (0xc1) //Power Control 2
#define _VMCTRL1 (0xc5) //VCOM Control 1
#define _VMCTRL2 (0xc7) //VCOM Control 2
#define _FRMCTR1 (0xb1) //Frame Rate Control 1
#define _DISCTRL (0xb6) //Display Function Control
#define _ENA3G (0xf2) //Enable 3G
#define _PGAMCTRL (0xe0) //Positive Gamma Control
#define _NGAMCTRL (0xe1) //Negative Gamma Contro

/**********************
 *      TYPEDEFS
 **********************/

/**********************
 * GLOBAL PROTOTYPES
 **********************/

void ili9431_init(void);
void lcd_WriteLine(uint16_t Xpos, uint16_t Ypos, uint16_t *RGBCode, uint16_t pointNum);
void ili9431_fill(int32_t x1, int32_t y1, int32_t x2, int32_t y2, uint16_t color);
void lcd_debug_task(void *arg);

/**********************
 *      MACROS
 **********************/


#ifdef __cplusplus
} /* extern "C" */
#endif

#endif /*ILI9341_H*/

