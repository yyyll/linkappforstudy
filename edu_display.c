#include "aos/kernel.h"
#include "lvgl.h"
#include <k_api.h>
#include "ulog/ulog.h"
#include "stdio.h"
#include "display_data.h"


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

lv_obj_t *lableAirCondition       = NULL;
lv_obj_t *labelAirTemp    = NULL;
lv_obj_t *labelAirDity    = NULL;
lv_obj_t *labelAirTempView    = NULL;
lv_obj_t *labelAirDityView    = NULL;
lv_obj_t *labelModeView    = NULL;

lv_obj_t *lableLed       = NULL;
lv_obj_t *labeLedViewOne    = NULL;
lv_obj_t *labeLedViewTwo    = NULL;
lv_obj_t *labeLedViewThr    = NULL;
lv_obj_t *labeLedViewFou    = NULL;
lv_obj_t *labelMode   = NULL;

lv_obj_t *lableDoor       = NULL;
lv_obj_t *labelDoorViewOne    = NULL;
lv_obj_t *labelDoorViewTwo    = NULL;

lv_obj_t *airConditionBtn       = NULL;
lv_obj_t *ledBtn       = NULL;
lv_obj_t *doorBtn       = NULL;
lv_obj_t *modeBtn       = NULL;

int clock_create_flag  = 0;
int label_create_flag  = 0;
extern char airTempText[4];
extern char airDityText[6];
extern char led1Text[8];
extern char led2Text[8];
extern char led3Text[8];
extern char led4Text[8];
extern char door1Text[10];
extern char door2Text[10];
extern char modeText[15];

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
    airConditionBtn = lv_btn_create(lv_scr_act(), NULL);
    lv_obj_set_pos(airConditionBtn, 20, 10);
    lv_obj_set_size(airConditionBtn, 200, 40);
    lv_btn_set_layout(airConditionBtn, LV_LAYOUT_CENTER);
    lableAirCondition = lv_label_create(airConditionBtn, NULL);
    lv_label_set_style(lableAirCondition, 0, &style2);
    lv_label_set_text(lableAirCondition, "Air Condition");

    ledBtn = lv_btn_create(lv_scr_act(), NULL);
    lv_obj_set_pos(ledBtn, 20, 80);
    lv_obj_set_size(ledBtn, 200, 40);
    lv_btn_set_layout(ledBtn, LV_LAYOUT_CENTER);
    lableLed = lv_label_create(ledBtn, NULL);
    lv_label_set_style(lableLed, 0, &style2);
    lv_label_set_text(lableLed, "LED Control");

    doorBtn = lv_btn_create(lv_scr_act(), NULL);
    lv_obj_set_pos(doorBtn, 20, 165);
    lv_obj_set_size(doorBtn, 200, 40);
    lv_btn_set_layout(doorBtn, LV_LAYOUT_CENTER);
    lableDoor = lv_label_create(doorBtn, NULL);
    lv_label_set_style(lableDoor, 0, &style2);
    lv_label_set_text(lableDoor, " Door");

    modeBtn = lv_btn_create(lv_scr_act(), NULL);
    lv_obj_set_pos(modeBtn, 20, 250);
    lv_obj_set_size(modeBtn, 80, 40);
    lv_btn_set_layout(modeBtn, LV_LAYOUT_CENTER);
    labelMode = lv_label_create(modeBtn, NULL);
    lv_label_set_style(labelMode, 0, &style2);
    lv_label_set_text(labelMode, " Set mode");
    /*btn3 = lv_btn_create(lv_scr_act(), NULL);
    lv_obj_set_pos(btn3, 50, 210);
    lv_obj_set_size(btn3, 100, 40);
    lv_btn_set_layout(btn3, LV_LAYOUT_CENTER);
    //lv_btn_set_style(btn1, lv_style_btn_rel, &style1);
    label6 = lv_label_create(btn3, NULL);
    lv_label_set_style(label6, 0, &style2);
    lv_label_set_text(label6, "20174121");*/
}

static void display_label(void)
{
    if (label_create_flag == 0)
    {
        clean_screen();
        create_label();
        create_button();
        label_create_flag = 1;
    }

    if(label_create_flag == 1)
    {
        printf("display_label...");
        refresh_label();
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
    //空调标签
    labelAirTemp = lv_label_create(scr, NULL);
    lv_label_set_style(labelAirTemp, 0, &style);
    lv_obj_align(labelAirTemp, NULL, LV_ALIGN_CENTER, 0, 0);
    lv_obj_set_pos(labelAirTemp, 20, 55);
    lv_label_set_text(labelAirTemp, "Temperature:");

    labelAirTempView = lv_label_create(scr, NULL);
    lv_label_set_style(labelAirTempView, 0, &style);
    lv_obj_align(labelAirTempView, NULL, LV_ALIGN_CENTER, 0, 0);
    lv_obj_set_pos(labelAirTempView, 115, 55);


    labelAirDity = lv_label_create(scr, NULL);
    lv_label_set_style(labelAirDity, 0, &style);
    lv_obj_align(labelAirDity, NULL, LV_ALIGN_CENTER, 0, 0);
    lv_obj_set_pos(labelAirDity, 150, 55);
    lv_label_set_text(labelAirDity, "Dity:");

    labelAirDityView = lv_label_create(scr, NULL);
    lv_label_set_style(labelAirDityView, 0, &style);
    lv_obj_align(labelAirDityView, NULL, LV_ALIGN_CENTER, 0, 0);
    lv_obj_set_pos(labelAirDityView, 190, 55);

    //LED标签
    labeLedViewOne = lv_label_create(scr, NULL);
    lv_label_set_style(labeLedViewOne, 0, &style);
    lv_obj_align(labeLedViewOne, NULL, LV_ALIGN_CENTER, 0, 0);
    lv_obj_set_pos(labeLedViewOne, 20, 125);

    labeLedViewTwo = lv_label_create(scr, NULL);
    lv_label_set_style(labeLedViewTwo, 0, &style);
    lv_obj_align(labeLedViewTwo, NULL, LV_ALIGN_CENTER, 0, 0);
    lv_obj_set_pos(labeLedViewTwo, 20, 145);

    labeLedViewThr = lv_label_create(scr, NULL);
    lv_label_set_style(labeLedViewThr, 0, &style);
    lv_obj_align(labeLedViewThr, NULL, LV_ALIGN_CENTER, 0, 0);
    lv_obj_set_pos(labeLedViewThr, 120, 125);

    labeLedViewFou = lv_label_create(scr, NULL);
    lv_label_set_style(labeLedViewFou, 0, &style);
    lv_obj_align(labeLedViewFou, NULL, LV_ALIGN_CENTER, 0, 0);
    lv_obj_set_pos(labeLedViewFou, 120, 145);

    //门标签
    labelDoorViewOne = lv_label_create(scr, NULL);
    lv_label_set_style(labelDoorViewOne, 0, &style);
    lv_obj_align(labelDoorViewOne, NULL, LV_ALIGN_CENTER, 0, 0);
    lv_obj_set_pos(labelDoorViewOne, 20, 210);

    labelDoorViewTwo = lv_label_create(scr, NULL);
    lv_label_set_style(labelDoorViewTwo, 0, &style);
    lv_obj_align(labelDoorViewTwo, NULL, LV_ALIGN_CENTER, 0, 0);
    lv_obj_set_pos(labelDoorViewTwo, 120, 210);

    //模式标签
    labelModeView = lv_label_create(scr, NULL);
    lv_label_set_style(labelModeView, 0, &style);
    lv_obj_align(labelModeView, NULL, LV_ALIGN_CENTER, 0, 0);
    lv_obj_set_pos(labelModeView, 110, 260);
    /*
    label3 = lv_label_create(scr, NULL);
    lv_label_set_style(label3, 0, &style);
    lv_obj_align(label3, NULL, LV_ALIGN_CENTER, 0, 0);
    lv_obj_set_pos(label3, 70, 150);
    */
}

static void refresh_label(void)
{
    lv_label_set_text(labelAirTempView, airTempText);
    lv_label_set_text(labelAirDityView, airDityText);
    lv_label_set_text(labeLedViewOne, led1Text);
    lv_label_set_text(labeLedViewTwo, led2Text);
    lv_label_set_text(labeLedViewThr, led3Text);
    lv_label_set_text(labeLedViewFou, led4Text);
    lv_label_set_text(labelDoorViewOne, door1Text);
    lv_label_set_text(labelDoorViewTwo, door2Text);
    lv_label_set_text(labelModeView, modeText);
    /*char numbuf[10];
    sprintf(numbuf, "%s", "20174290");
    lv_label_set_text(label1, numbuf);*/
}

static void create_clock(void)
{
    // todo
    
}

static void refresh_clock(void)
{
    // todo
}

