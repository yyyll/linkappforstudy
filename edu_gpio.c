#include "ulog/ulog.h"
#include "aos/kernel.h"
#include "aos/hal/gpio.h"
#include <stdbool.h>
#include "edu_gpio.h"
#include "display_data.h"
#include <aos/hal/pwm.h>

#define PIN_LED_RED 17
#define PIN_LED_BLU 26
#define PIN_LED_YEL 21
#define PIN_LED_GRN 22

extern bool led2Status,led3Status,led4Status;

int lastKey1Status = 1, key1Status = 1;
int lastKey2Status = 1, key2Status = 1;
int lastKey3Status = 1, key3Status = 1;
int lastKey4Status = 1, key4Status = 1;

gpio_dev_t key1 =
{
    .port = 36,
    .config = INPUT_PULL_UP,
};
gpio_dev_t key2 =
{
    .port = 39,
    .config = INPUT_PULL_UP,
};
gpio_dev_t key3 =
{
    .port = 34,
    .config = INPUT_PULL_UP,
};
gpio_dev_t key4 =
{
    .port = 35,
    .config = INPUT_PULL_UP,
};

gpio_dev_t led_yel = 
{
    .port = PIN_LED_YEL,
    .config = OUTPUT_PUSH_PULL,
};
gpio_dev_t led_blu = 
{
    .port = PIN_LED_BLU,
    .config = OUTPUT_PUSH_PULL,
};
gpio_dev_t led_grn = 
{
    .port = PIN_LED_GRN,
    .config = OUTPUT_PUSH_PULL,
};

pwm_dev_t pwm1 = 
{
    .port = PIN_LED_RED,
    .config.duty_cycle = 1.0f,
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
    hal_gpio_init(&led_blu);
    hal_gpio_init(&led_yel);
    hal_gpio_init(&led_grn);
    hal_gpio_init(&key1);
    hal_gpio_init(&key2);
    hal_gpio_init(&key3);
    hal_gpio_init(&key4);
}


// 反转蓝色LED
void edu_blu_led_toggle(void)
{
    hal_gpio_output_toggle(&led_blu);
}
// LED测试
void edu_led_test(void)
{
    edu_blu_led_toggle();
    aos_post_delayed_action(100, edu_led_test, NULL);
}


//开关扫描
void keyScan(void)
{
    static int modeKey1 = 0,modeKey2 = 0,modeKey3 = 0,modeKey4 = 0;
    hal_gpio_input_get(&key1,&key1Status);
    hal_gpio_input_get(&key2,&key2Status);
    hal_gpio_input_get(&key3,&key3Status);
    hal_gpio_input_get(&key4,&key4Status);
    DataChange();
    lastKey1Status = key1Status;
    lastKey2Status = key2Status;
    lastKey3Status = key3Status;
    lastKey4Status = key4Status;
    aos_post_delayed_action(20,keyScan, NULL);
}

//GPIO扫描
void gpioScan(void)
{
    hal_pwm_finalize(&pwm1);
    if (true == led2Status)
        LEDBLUBRIGHT;
    else
        LEDBLUDARK;
    if (true == led3Status)
        LEDYELBRIGHT;
    else
        LEDYELDARK;
    if (true == led4Status)
        LEDGRNBRIGHT;
    else
        LEDGRNDARK;
    hal_pwm_init(&pwm1);
    hal_pwm_start(&pwm1);
    aos_post_delayed_action(20,gpioScan, NULL);
}