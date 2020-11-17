#include "linkkit/infra/infra_cjson.h"
#include "linkkit/infra/infra_types.h"
#include <string.h>
#include <stdbool.h>
#include "ulog/ulog.h"
#include "display_data.h"

#define PROPERTY "powerstate"
#define PROPERTY1 "powerstate1"
#define PROPERTY2 "brightness"
extern bool led2Status,led3Status,led4Status;
//extern pwm_dev_t pwm1;

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
                led2Status = led3Status = led4Status = false;
                break;
            case 1:
                led2Status = led3Status = led4Status = true;
                break;
            case 11:
                break;
            case 21:
                led2Status = true;
                break;
            case 31:
                led3Status = true;
                break;
            case 41:
                led4Status = true;
                break;
            case 10:
                break;
            case 20:
                led2Status = false;
                break;
            case 30:
                led3Status = false;
                break;
            case 40:
                led4Status = false;
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
