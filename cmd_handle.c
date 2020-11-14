#include "linkkit/infra/infra_cjson.h"
#include "linkkit/infra/infra_types.h"
#include <string.h>
#include "ulog/ulog.h"

#define PROPERTY "powerstate"
#define PROPERTY1 "powerstate1"
void property_set_handle(char* cmd){
    int res = 0;
    lite_cjson_t lite_item, lite_item_pk;

    memset(&lite_item, 0, sizeof(lite_cjson_t));
    res = lite_cjson_parse(cmd, strlen(cmd), &lite_item);
    
    res = lite_cjson_object_item(&lite_item, PROPERTY , strlen(PROPERTY ), &lite_item_pk);
    if (res == 0){
        LOG("rx cmd %s, %d\n", PROPERTY, lite_item_pk.value_int);
    }

    res = lite_cjson_object_item(&lite_item, PROPERTY1 , strlen(PROPERTY1 ), &lite_item_pk);
    if (res == 0){
        LOG("rx cmd %s, %d\n", PROPERTY1, lite_item_pk.value_int);
    }

}
