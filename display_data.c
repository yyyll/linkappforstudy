#include "ulog/ulog.h"
#include "aos/kernel.h"
#include "aos/hal/gpio.h"

#include "display_data.h"
#include "edu_gpio.h"
extern int lastKey1Status , key1Status;
extern int lastKey2Status , key2Status;
extern int lastKey3Status , key3Status;
extern int lastKey4Status , key4Status;
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

char airTempText[4] = {"25"};
char airDityText[6] = {"35%"};
char led1Text[8] = {"LED1:0"};
char led2Text[8] = {"LED2:0"};
char led3Text[8] = {"LED3:0"};
char led4Text[8] = {"LED4:0"};
char door1Text[10] = {"Door1:0"};
char door2Text[10] = {"Door2:0"};
char modeText[15] = {"freemode"};
int tempValue=25;
int dityValue=35;
void DataChange(void)
{
    if (lastKey4Status == 0 && key4Status == 1)
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
    if (lastKey2Status == 0 && key2Status == 1)
    {
        if (airMode == tempMode)
            airMode = dityMode;
        else
            airMode = tempMode;
    }
    if (lastKey3Status == 0 && key3Status == 1)
        increaseFlag = 1;
    else if (lastKey1Status == 0 && key1Status == 1)
        increaseFlag = -1;
    switch (airMode)
    {
        case tempMode:
            if (1 == increaseFlag)
                tempValue++;
            else if (-1 == increaseFlag)
                tempValue--;
            sprintf(airTempText, "%d" , tempValue);
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
            sprintf(airDityText, "%d%c" , dityValue,'%');
            airDityText[5] = '%';
            sprintf(modeText, "%s" , "airmode-dity");
            break;
        default:
            break;
    }
    increaseFlag = 0;
}

void SetLed(void)
{
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
            sprintf(modeText, "%s" , "ledmode-led1");
            break;
        case led2:
            sprintf(modeText, "%s" , "ledmode-led2");
            break;
        case led3:
            sprintf(modeText, "%s" , "ledmode-led3");
            break;
        case led4:
            sprintf(modeText, "%s" , "ledmode-led4");
            break;
        default:
            break;
    }
}

void SetDoor(void)
{
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
            sprintf(modeText, "%s" , "doormode-door1");
            break;
        case door2:
            sprintf(modeText, "%s" , "doormode-door2");
            break;
        default:
            break;
    }
}

