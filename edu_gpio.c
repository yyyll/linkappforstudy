#include "ulog/ulog.h"
#include "aos/kernel.h"
#include "aos/hal/gpio.h"

#include "edu_gpio.h"
#include <aos/hal/pwm.h>

#define PIN_LED_RED 17
#define PIN_LED_PWM_BLU 26
#define PIN_LED_YEL 21

gpio_dev_t led_red = 
{
    .port = PIN_LED_RED,
    .config = OUTPUT_PUSH_PULL,
};

gpio_dev_t key1 =
{
    .port = 36,
    .config = INPUT_PULL_UP,
};

gpio_dev_t led_yel = 
{
    .port = PIN_LED_YEL,
    .config = OUTPUT_PUSH_PULL,
};

pwm_dev_t pwm1 = 
{
    .port = PIN_LED_PWM_BLU,
    .config.duty_cycle = 0.0f,
    .config.freq       = 1000,
};
pwm_config_t pwm_cfg = {0.0f,10000};

// pwm 初始化
void led_pwm1_init(void)
{
    hal_pwm_init(&pwm1);
    hal_pwm_start(&pwm1);
}

//启动pwm
void start_pwm1(void)
{
    hal_pwm_finalize(&pwm1);
    static int mode =0;
    if (mode)
        pwm1.config.duty_cycle =  pwm1.config.duty_cycle + 0.02;
    else
        pwm1.config.duty_cycle =  pwm1.config.duty_cycle - 0.02;
    if((0.f >= pwm1.config.duty_cycle) || (1.f <= pwm1.config.duty_cycle))
        mode = !mode;
    hal_pwm_init(&pwm1);
    hal_pwm_start(&pwm1);
    aos_post_delayed_action(1, start_pwm1, NULL);
}

// io 初始化
void edu_gpio_init(void)
{
    hal_gpio_init(&led_red);
    hal_gpio_init(&led_yel);
    hal_gpio_init(&key1);
}

// 点亮红色LED
void edu_red_led_on(void)
{
    //todo
    hal_gpio_output_low(&led_red);
}

// 熄灭红色LED
void edu_red_led_off(void)
{
    //todo
    hal_gpio_output_high(&led_red);
}

// 点亮黄色LED
void edu_yel_led_on(void)
{
    hal_gpio_output_low(&led_yel);
}

// 熄灭黄色LED
void edu_yel_led_off(void)
{
    hal_gpio_output_high(&led_yel);
}

// 反转红色LED
void edu_red_led_toggle(void)
{
    //todo
    hal_gpio_output_toggle(&led_red);
}
// LED测试
void edu_led_test(void)
{
    edu_red_led_toggle();
    aos_post_delayed_action(100, edu_led_test, NULL);
}


//开关扫描
void keyScan(void)
{
    static lastKey = 1, key = 1;
    static int mode = 0;
    hal_gpio_input_get(&key1,&key);
    if (lastKey != key && key == 0)
        mode = !mode;
    lastKey = key;
    if (mode)
       edu_yel_led_on();
    else 
       edu_yel_led_off();    
    aos_post_delayed_action(20,keyScan, NULL);
}