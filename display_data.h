#ifndef __DISPLAYDATA_H__
#define __DISPLAYDATA_H__

void DataChange(void);
void SetAirCondition(void);
void SetLed(void);
void SetDoor(void);
enum SetMode
{
    freeMode,
    airConditionMode,
    ledMode,
    doorMode
} ;
#endif 