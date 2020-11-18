#include "linkkit/infra/infra_cjson.h"
#include "linkkit/infra/infra_types.h"
#include <string.h>
#include <stdbool.h>
#include "ulog/ulog.h"
#include "display_data.h"
#include <aos/hal/pwm.h>
#define PROPERTY "powerstate"
#define PROPERTY1 "powerstate1"
#define PROPERTY2 "brightness"
extern bool led2Status,led3Status,led4Status,door1Status,door2Status;
extern pwm_dev_t pwm1;

void property_set_handle(char* cmd){
    int res = 0;
    lite_cjson_t lite_item, lite_item_pk;

    memset(&lite_item, 0, sizeof(lite_cjson_t));
    res = lite_cjson_parse(cmd, strlen(cmd), &lite_item);
    
    res = lite_cjson_object_item(&lite_item, PROPERTY2 , strlen(PROPERTY2 ), &lite_item_pk);
    if (res == 0)
    {
        LOG("rx cmd %s, %d\n", PROPERTY2, lite_item_pk.value_int);
        switch (lite_item_pk.value_int)
        {
            case 0:
                led2Status = led3Status = led4Status = door1Status = door2Status = false;
                pwm1.config.duty_cycle = 1;
                break;
            case 1:
                led2Status = led3Status = led4Status = door1Status = door2Status = true;
                pwm1.config.duty_cycle = 0;
                break;
            case 11:
                led2Status = !led2Status;
                led3Status = !led3Status;
                led4Status = !led4Status;
                break;
            case 21:
                led2Status = !led2Status;
                break;
            case 31:
                led3Status = !led3Status;
                break;
            case 41:
                led4Status = !led4Status;
                break;
            default:
                break;
        }
    }
    else
    {
        LOG("rx cmd %s, %d\n", PROPERTY, lite_item_pk.value_int);
    }
    res = lite_cjson_object_item(&lite_item, PROPERTY1 , strlen(PROPERTY1 ), &lite_item_pk);
    if (res == 0)
    {
        LOG("rx cmd %s, %d\n", PROPERTY1, lite_item_pk.value_int);
    }
    else
    {

    }

}
