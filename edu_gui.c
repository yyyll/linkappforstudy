#include "aos/kernel.h"
#include "lvgl.h"
#include <k_api.h>
#include "ili9341.h"
#include "ulog/ulog.h"

#include "edu_display.h"

lv_disp_drv_t disp_drv;

static void littlevgl_refresh_task(void *arg);
static void lvgl_disp_drv_init(void);
static void my_disp_flush(lv_disp_drv_t * disp_drv, const lv_area_t * area, lv_color_t * color_p);
static void lv_log(lv_log_level_t level, const char *file_name, uint32_t line_num, const char * log);

int gui_init(void)
{
    LOG("gui_init start\n");

    /*Initialize LittlevGL*/
    lv_init(); //

    ili9431_init();

    // lv_log_register_print_cb(lv_log);

    lvgl_disp_drv_init();

    //设置任务睡眠时间
    krhino_task_sleep(30);

    aos_task_new("littlevgl_refresh_task", littlevgl_refresh_task, NULL, 2048);
    krhino_task_sleep(300);
    edu_display();

    LOG("gui_init done\n");

    return 0;
}

static void littlevgl_refresh_task(void *arg)
{
    while (1) {
        /* Periodically call the lv_task handler.
         * It could be done in a timer interrupt or an OS task too.*/
        lv_task_handler();
        // printf("littlevgl_refresh_task\n");
        krhino_task_sleep(RHINO_CONFIG_TICKS_PER_SECOND / 100);
    }
}

void lvgl_disp_drv_init(void)
{
    static lv_disp_buf_t disp_buf;
    static lv_color_t buf2_1[LV_HOR_RES_MAX * 40];                        /*A buffer for 10 rows*/
    // static lv_color_t buf2_2[LV_HOR_RES_MAX * 20];                        /*An other buffer for 10 rows*/
    // 未使用DMA，不需要2个缓冲区
    lv_disp_buf_init(&disp_buf, buf2_1, NULL, LV_HOR_RES_MAX * 40);   /*Initialize the display buffer*/

    /*-----------------------------------
     * Register the display in LittlevGL
     *----------------------------------*/

    lv_disp_drv_init(&disp_drv);                    /*Basic initialization*/

    /*Set up the functions to access to your display*/

    /*Set the resolution of the display*/
    disp_drv.hor_res = LV_HOR_RES_MAX;
    disp_drv.ver_res = LV_VER_RES_MAX;
    LOG("H*V = %d * %d\n", LV_HOR_RES_MAX, LV_VER_RES_MAX);

    /*Used to copy the buffer's content to the display*/
    disp_drv.flush_cb = my_disp_flush;

    /*Set a display buffer*/
    disp_drv.buffer = &disp_buf;

    /*Finally register the driver*/
    lv_disp_drv_register(&disp_drv);
}

static void my_disp_flush(lv_disp_drv_t * disp_drv, const lv_area_t * area, lv_color_t * color_p)
{
    int32_t x = 0;
    int32_t y = 0;

    for (y = area->y1; y <= area->y2; y++) 
    {
        lcd_WriteLine(area->x1, y, (uint16_t *)color_p, (area->x2 - area->x1 + 1));
        color_p += (area->x2 - area->x1 + 1);
    }
    LOG("===========");
    lv_disp_flush_ready(disp_drv);
}
