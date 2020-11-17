#include "ulog/ulog.h"
#include "aos/kernel.h"
#include "aos/hal/gpio.h"
#include <aos/hal/pwm.h>
#include <stdbool.h>
#include "display_data.h"
#include "edu_gpio.h"
extern int lastKey1Status , key1Status;
extern int lastKey2Status , key2Status;
extern int lastKey3Status , key3Status;
extern int lastKey4Status , key4Status;
extern pwm_dev_t pwm1;
enum SetMode
{
    freeMode,
    airConditionMode,
    ledMode,
    doorMode,
} controlMode;

enum AirMode
{
    tempMode,
    dityMode
} airMode;

enum LedMode
{
    led1,
    led2,
    led3,
    led4
} ledNum;

enum DoorMode
{
    door1,
    door2
} doorNum;

char modeText[15] = {"freemode"};
int tempValue=25;
int dityValue=35;
bool door1Status = false;
bool door2Status = false;
float led1DutyCycle = 1.f;
bool led2Status = false;
bool led3Status = false;
bool led4Status = false;

void DataChange(void)
{
    if (lastKey3Status == 0 && lastKey1Status == 0)
        controlMode = freeMode;
    if (lastKey2Status == 0 && lastKey1Status == 0)
    {
        controlMode = freeMode;
        led2Status = led3Status = led4Status = door1Status = door2Status = false;
        pwm1.config.duty_cycle = 1;
    }
    if (lastKey4Status == 0 && lastKey1Status == 0)
    {
        controlMode = freeMode;
        led2Status = led3Status = led4Status = true;
        pwm1.config.duty_cycle = 0;
    }
    else if (lastKey4Status == 0 && key4Status == 1)
    {
        if (controlMode == doorMode)
            controlMode = freeMode;
        else
            controlMode++;
    }

    switch (controlMode)
    {
        case airConditionMode:
            SetAirCondition();
            break;
        case ledMode:
            SetLed();
            break;
        case doorMode:
            SetDoor();
            break;  
        default:
            sprintf(modeText, "%s" , "freemode");
            break;  
    }
}

void SetAirCondition(void)
{
    //增加减少标志位，1增加，-1减少
    static int increaseFlag = 0;
    if (lastKey3Status == 0 && key3Status == 1)
        increaseFlag = 1;
    else if (lastKey1Status == 0 && key1Status == 1)
        increaseFlag = -1;
    if (lastKey2Status == 0 && key2Status == 1)
    {
        if (airMode == tempMode)
            airMode = dityMode;
        else
            airMode = tempMode;
    }
    switch (airMode)
    {
        case tempMode:
            if (1 == increaseFlag)
                tempValue++;
            else if (-1 == increaseFlag)
                tempValue--;
            sprintf(modeText, "%s" , "airmode-temp");
            break;
        case dityMode:
            if (1 == increaseFlag)
                dityValue++;
            else if (-1 == increaseFlag)
                dityValue--;
            //湿度限幅
            if (dityValue >= 100)
                dityValue = 100;
            else if (dityValue <= 0)
                dityValue = 0;
            sprintf(modeText, "%s" , "airmode-dity");
            break;
        default:
            break;
    }
    increaseFlag = 0;
}

void SetLed(void)
{
    //led的状态切换
    static bool ledStatusFlag = false;
    static int led1IncreaseFlag = 0;
    //s1控制状态转换
    if (lastKey3Status == 0 && key3Status == 1)
        ledStatusFlag = true;
    //s3控制led1占空比
    if (lastKey1Status == 0 && key1Status == 1)
        led1IncreaseFlag = -1;
    //s2选择led控制
    if (lastKey2Status == 0 && key2Status == 1)
    {
        if (ledNum == led4)
            ledNum = led1;
        else
            ledNum++;
    }
    switch (ledNum)
    {
        case led1:
            if (true == ledStatusFlag)
                pwm1.config.duty_cycle = pwm1.config.duty_cycle - 0.1;
            if (-1 == led1IncreaseFlag)
                pwm1.config.duty_cycle = pwm1.config.duty_cycle + 0.1;
            if (pwm1.config.duty_cycle >= 1)
                pwm1.config.duty_cycle = 1;
            else if (pwm1.config.duty_cycle <= 0)
                pwm1.config.duty_cycle = 0;
            sprintf(modeText, "%s" , "ledmode-led1");
            break;
        case led2:
            if (true == ledStatusFlag)
                led2Status = !led2Status;
            sprintf(modeText, "%s" , "ledmode-led2");
            break;
        case led3:
            if (true == ledStatusFlag)
                led3Status = !led3Status;
            sprintf(modeText, "%s" , "ledmode-led3");
            break;
        case led4:
            if (true == ledStatusFlag)
                led4Status = !led4Status;
            sprintf(modeText, "%s" , "ledmode-led4");
            break;
        default:
            break;
    }
    ledStatusFlag = false;
    led1IncreaseFlag = 0;
}

void SetDoor(void)
{
    //门的状态切换
    static bool doorStatusFlag = false;
    if (lastKey3Status == 0 && key3Status == 1)
        doorStatusFlag = true;
    if (lastKey2Status == 0 && key2Status == 1)
    {
        if (doorNum == door1)
            doorNum = door2;
        else
            doorNum = door1;
    }
    switch (doorNum)
    {
        case door1:
            if (true == doorStatusFlag)
                door1Status = !door1Status;
            sprintf(modeText, "%s" , "doormode-door1");
            break;
        case door2:
            if (true == doorStatusFlag)
                door2Status = !door2Status;
            sprintf(modeText, "%s" , "doormode-door2");
            break;
        default:
            break;
    }
    doorStatusFlag = false;
}

