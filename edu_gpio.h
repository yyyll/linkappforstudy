#ifndef __EDU_GPIO_H__
#define __EDU_GPIO_H__

// io 初始化
void edu_gpio_init(void);

// 点亮红色LED
void edu_red_led_on(void);

// 熄灭红色LED
void edu_red_led_off(void);

// 反转红色LED
void edu_red_led_toggle(void);

// 点亮黄色LED
void edu_yel_led_on(void);

// 熄灭黄色LED
void edu_yel_led_off(void);

// LED测试
void edu_led_test(void);

void led_pwm1_init(void);

void start_pwm1(void);


//开关扫描
void keyScan(void);

#endif