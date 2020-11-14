#include "aos/kernel.h"
#include "lvgl.h"
#include <k_api.h>
#include "ulog/ulog.h"
#include "stdio.h"


LV_IMG_DECLARE(AliOS_Things_logo);

#define LOGO_DISP       0
#define LABEL1          0
#define LABEL2          0
#define BUT_DEMO        0
#define KEY_CTRL        0

aos_timer_t refresh_timer;

/* gui object definition */
lv_obj_t *scr     = NULL;
lv_obj_t *img_src = NULL;

lv_obj_t *label      = NULL;
lv_obj_t *label1     = NULL;
lv_obj_t *label2     = NULL;
lv_obj_t *label3     = NULL;
lv_obj_t *label4     = NULL;
lv_obj_t *label5     = NULL;
lv_obj_t *label6     = NULL;

lv_obj_t *btn1       = NULL;
lv_obj_t *btn2       = NULL;
lv_obj_t *btn3       = NULL;
lv_obj_t *btn4       = NULL;

int clock_create_flag  = 0;
int label_create_flag  = 0;

static lv_style_t style;
static lv_style_t style1;
static lv_style_t style2;
static lv_style_t style3;
static lv_style_t style_btn;

static void clean_screen(void);

static void display_logo(void);

static void display_clock(void);
static void create_clock(void);
static void refresh_clock(void);

static void display_label(void);
static void create_label(void);
static void refresh_label(void);

static void edu_display_refresh_task(void);

void edu_display(void)
{
    aos_timer_new(&refresh_timer, edu_display_refresh_task, NULL, 1000, 1);
}

void button_modify_test(void)
{
    static int i = 0;
    
    if (i == 0)
    {
        i = 1;
        lv_label_set_text(label, "0");
    }
    if (i == 1)
    {
        i = 0;
        lv_label_set_text(label, "1");
    }
}

static void clean_screen(void)
{
    lv_obj_clean(scr);
}

static void edu_display_refresh_task(void)
{
    static int task1_count = 0;
    if (task1_count == 0) 
    {
        scr = lv_scr_act();
        display_logo(); // 显示logo
        LOG("--------------------------display logo");
    }
    
    if (task1_count == 3) 
    {

        clean_screen(); // 清屏
        LOG("--------------------------clean logo");
        label_create_flag = 0;
    }

    if (task1_count > 5) 
    {
        SetStyle();
        display_label(); // 标签显示
        LOG("--------------------------display_label");
    }

    task1_count++;
    if(task1_count == 17)
       task1_count = 9;

    lv_refr_now(NULL);
}

static void display_logo(void)
{
    img_src = lv_img_create(scr, NULL);  /*Crate an image object*/
    lv_img_set_src(img_src, &AliOS_Things_logo);  /*Set the created file as image (a red fl  ower)*/
    lv_obj_set_pos(img_src, 0, 30);      /*Set the positions*/
    lv_obj_set_drag(img_src, true);
}

static void display_clock(void)
{
    if (clock_create_flag == 0)
    {
        clean_screen();

        create_clock();
        clock_create_flag = 1;
    }else
    {
        refresh_clock();
    }
}

static void create_button(void)
{
    btn1 = lv_btn_create(lv_scr_act(), NULL);
    lv_obj_set_pos(btn1, 50, 10);
    lv_obj_set_size(btn1, 100, 40);
    lv_btn_set_layout(btn1, LV_LAYOUT_CENTER);
    lv_btn_set_style(btn1, LV_BTN_STYLE_INA, &style1);
    label4 = lv_label_create(btn1, NULL);
    lv_label_set_style(label4, 0, &style);
    lv_label_set_text(label4, "LiangJian");

    btn2 = lv_btn_create(lv_scr_act(), NULL);
    lv_obj_set_pos(btn2, 50, 110);
    lv_obj_set_size(btn2, 100, 40);
    lv_btn_set_layout(btn2, LV_LAYOUT_CENTER);
    //lv_btn_set_style(btn1, lv_style_btn_rel, &style1);
    label5 = lv_label_create(btn2, NULL);
    lv_label_set_style(label5, 0, &style1);
    lv_label_set_text(label5, "1701");

    btn3 = lv_btn_create(lv_scr_act(), NULL);
    lv_obj_set_pos(btn3, 50, 210);
    lv_obj_set_size(btn3, 100, 40);
    lv_btn_set_layout(btn3, LV_LAYOUT_CENTER);
    //lv_btn_set_style(btn1, lv_style_btn_rel, &style1);
    label6 = lv_label_create(btn3, NULL);
    lv_label_set_style(label6, 0, &style2);
    lv_label_set_text(label6, "20174121");
}

static void display_label(void)
{
    if (label_create_flag == 0)
    {
        clean_screen();
        //create_label();
        create_button();
        label_create_flag = 1;
    }

    if(label_create_flag == 1)
    {
        printf("display_label...");
        //refresh_label();
    }
}

void SetStyle(void)
{
    lv_style_copy(&style, &lv_style_plain);
    style.text.color = LV_COLOR_RED;

    lv_style_copy(&style1, &lv_style_plain);
    style1.text.color = LV_COLOR_YELLOW;

    lv_style_copy(&style2, &lv_style_plain);
    style2.text.color = LV_COLOR_PURPLE;
}

static void create_label(void)
{
    label1 = lv_label_create(scr, NULL);
    lv_label_set_style(label1, 0, &style);
    lv_obj_align(label1, NULL, LV_ALIGN_CENTER, 0, 0);
    lv_obj_set_pos(label1, 70, 100);

    label2 = lv_label_create(scr, NULL);
    lv_label_set_style(label2, 0, &style);
    lv_obj_align(label2, NULL, LV_ALIGN_CENTER, 0, 0);
    lv_obj_set_pos(label2, 70, 120);

    label3 = lv_label_create(scr, NULL);
    lv_label_set_style(label3, 0, &style);
    lv_obj_align(label3, NULL, LV_ALIGN_CENTER, 0, 0);
    lv_obj_set_pos(label3, 70, 150);
}

static void refresh_label(void)
{
    static int i = 0;
    char numbuf[10];
    char gradeBuf[10];
    char nameBuf[10];
    sprintf(nameBuf, "%s", "yangfan");
    sprintf(gradeBuf, "%s", "1701");
    sprintf(numbuf, "%s", "20174290");
    lv_label_set_text(label1, numbuf);
    lv_label_set_text(label2, gradeBuf);
    lv_label_set_text(label3, nameBuf);


    //i++;
}

static void create_clock(void)
{
    // todo
    
}

static void refresh_clock(void)
{
    // todo
}

