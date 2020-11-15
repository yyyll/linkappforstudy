#ifndef __EDU_GPIO_H__
#define __EDU_GPIO_H__

#define LEDREDBRIGHT hal_gpio_output_low(&led_red)
#define LEDREDDARK hal_gpio_output_high(&led_red)
#define LEDGRNBRIGHT hal_gpio_output_low(&led_grn)
#define LEDGRNDARK hal_gpio_output_high(&led_grn)
#define LEDYELBRIGHT hal_gpio_output_low(&led_yel)
#define LEDYELDARK hal_gpio_output_high(&led_yel)

// io 初始化
void edu_gpio_init(void);

// 反转红色LED
void edu_red_led_toggle(void);

// LED测试
void edu_led_test(void);

void led_pwm1_init(void);

void start_pwm1(void);


//开关扫描
void keyScan(void);

#endif