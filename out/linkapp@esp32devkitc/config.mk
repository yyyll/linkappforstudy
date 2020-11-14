AOS_SDK_MAKEFILES           		+= D:/aos_proj/linkapp/aos.mk D:/aos_proj/linkapp/board/esp32devkitc/aos.mk D:/smarthome/AliOS-Things/components/linkkit/dev_model/aos.mk D:/smarthome/AliOS-Things/components/linkkit/wifi_provision/aos.mk D:/smarthome/AliOS-Things/components/network/netmgr/aos.mk D:/smarthome/AliOS-Things/components/utility/cjson/aos.mk D:/smarthome/AliOS-Things/components/dm/und/aos.mk D:/smarthome/AliOS-Things/core/cli/aos.mk D:/smarthome/AliOS-Things/components/gui/littlevGL/aos.mk D:/smarthome/AliOS-Things/components/dm/ota/aos.mk D:/smarthome/AliOS-Things/platform/mcu/esp32/aos.mk D:/smarthome/AliOS-Things/core/init/aos.mk D:/smarthome/AliOS-Things/components/network/aos.mk D:/smarthome/AliOS-Things/components/linkkit/infra/aos.mk D:/smarthome/AliOS-Things/components/linkkit/wrappers/aos.mk D:/smarthome/AliOS-Things/components/linkkit/mqtt/aos.mk D:/smarthome/AliOS-Things/components/linkkit/iot_coap/aos.mk D:/smarthome/AliOS-Things/core/kv/aos.mk D:/smarthome/AliOS-Things/core/osal/aos/aos.mk D:/smarthome/AliOS-Things/components/utility/yloop/aos.mk D:/smarthome/AliOS-Things/components/security/mbedtls/aos.mk D:/smarthome/AliOS-Things/components/network/lwip/aos.mk D:/smarthome/AliOS-Things/core/rhino/aos.mk D:/smarthome/AliOS-Things/platform/arch/xtensa/lx6/aos.mk D:/smarthome/AliOS-Things/components/dm/ulog/aos.mk D:/smarthome/AliOS-Things/components/network/netmgr/activation/aos.mk D:/smarthome/AliOS-Things/components/network/netmgr/activation/chip_code/aos.mk D:/smarthome/AliOS-Things/components/linkkit/certs/aos.mk D:/smarthome/AliOS-Things/components/linkkit/dev_sign/aos.mk D:/smarthome/AliOS-Things/core/vfs/aos.mk D:/smarthome/AliOS-Things/core/rbtree/aos.mk D:/smarthome/AliOS-Things/components/network/http/aos.mk
TOOLCHAIN_NAME            		:= GCC
AOS_SDK_LDFLAGS             		+= -Wl,--gc-sections -Wl,-Os -Wl,--cref -nostdlib -nostdlib -Lplatform/mcu/esp32/ -lc -lgcc -lstdc++ -lgcov -lm -L platform/mcu/esp32/bsp/ld
AOS_SDK_LDS_FILES                     += platform/mcu/esp32/bsp/ld/esp32.ld.S platform/mcu/esp32/bsp/ld/esp32.common.ld platform/mcu/esp32/bsp/ld/esp32.rom.ld platform/mcu/esp32/bsp/ld/esp32.peripherals.ld platform/mcu/esp32/bsp/ld/esp32.rom.spiram_incompatible_fns.ld
AOS_SDK_LDS_INCLUDES                  += 
AOS_SDK_2NDBOOT_SUPPORT                 += 
AOS_SDK_IMG1_XIP1_LD_FILE                 += 
AOS_SDK_IMG2_XIP2_LD_FILE                 += 
AOS_SDK_CFLAGS			+= -DMCU_FAMILY=\"mcu_esp32\" -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_ESP32\" -DSYSINFO_DEVICE_NAME=\"ESP32\" -DCONFIG_AOS_FATFS_SUPPORT_RAW_FLASH -DOTA_DUBANK -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -mlongcalls -DESPOS_FOR_ESP32
AOS_SDK_ASMFLAGS			+= 
AOS_SDK_LINK_SCRIPT         		+= 
AOS_SDK_LINK_SCRIPT_CMD    	 	+= 
AOS_SDK_PREBUILT_LIBRARIES 	 	+= D:/smarthome/AliOS-Things/components/dm/ota/lib/gcc/xtensa/ota_agent_esp32.a D:/smarthome/AliOS-Things/platform/mcu/esp32/lib/libesp32.a D:/smarthome/AliOS-Things/platform/mcu/esp32/lib/libspi_flash.a D:/smarthome/AliOS-Things/platform/mcu/esp32/lib/libsoc.a D:/smarthome/AliOS-Things/platform/mcu/esp32/lib/libbootloader_support.a D:/smarthome/AliOS-Things/platform/mcu/esp32/lib/libhal.a D:/smarthome/AliOS-Things/platform/mcu/esp32/lib/libnewlib.a D:/smarthome/AliOS-Things/platform/mcu/esp32/lib/libvfs.a D:/smarthome/AliOS-Things/platform/mcu/esp32/lib/liblog.a D:/smarthome/AliOS-Things/platform/mcu/esp32/lib/libdriver.a D:/smarthome/AliOS-Things/platform/mcu/esp32/lib/libcontainer.a D:/smarthome/AliOS-Things/platform/mcu/esp32/lib/librtc.a D:/smarthome/AliOS-Things/platform/mcu/esp32/lib/libcoexist.a D:/smarthome/AliOS-Things/platform/mcu/esp32/lib/libcore.a D:/smarthome/AliOS-Things/platform/mcu/esp32/lib/libnet80211.a D:/smarthome/AliOS-Things/platform/mcu/esp32/lib/libpp.a D:/smarthome/AliOS-Things/platform/mcu/esp32/lib/libwpa.a D:/smarthome/AliOS-Things/platform/mcu/esp32/lib/libwpa2.a D:/smarthome/AliOS-Things/platform/mcu/esp32/lib/libwps.a D:/smarthome/AliOS-Things/platform/mcu/esp32/lib/libphy.a D:/smarthome/AliOS-Things/platform/mcu/esp32/lib/libnvs_flash.a D:/smarthome/AliOS-Things/platform/mcu/esp32/lib/libcxx.a D:/smarthome/AliOS-Things/platform/mcu/esp32/lib/libstdcc++-cache-workaround.a D:/smarthome/AliOS-Things/platform/mcu/esp32/lib/libwpa_supplicant.a D:/smarthome/AliOS-Things/platform/mcu/esp32/lib/libapp_update.a D:/smarthome/AliOS-Things/platform/mcu/esp32/lib/libmesh.a
AOS_SDK_CERTIFICATES       	 	+= 
AOS_SDK_PRE_APP_BUILDS      		+= 
AOS_SDK_LINK_FILES          		+=                                                                
AOS_SDK_INCLUDES           	 	+=                                                                  -ID:/aos_proj/linkapp/board/esp32devkitc/. -ID:/smarthome/AliOS-Things/components/network/netmgr/../../../include/network/netmgr -ID:/smarthome/AliOS-Things/components/network/netmgr/../../../include/network -ID:/smarthome/AliOS-Things/components/network/netmgr/../../../include -ID:/smarthome/AliOS-Things/components/utility/cjson/include -ID:/smarthome/AliOS-Things/components/dm/und/../../../include/dm/ -ID:/smarthome/AliOS-Things/core/cli/include -ID:/smarthome/AliOS-Things/components/gui/littlevGL/. -ID:/smarthome/AliOS-Things/platform/mcu/esp32/bsp/include -ID:/smarthome/AliOS-Things/platform/mcu/esp32/bsp/include/esp32/include -ID:/smarthome/AliOS-Things/platform/mcu/esp32/bsp/include/soc/esp32/include -ID:/smarthome/AliOS-Things/platform/mcu/esp32/bsp/include/soc/include -ID:/smarthome/AliOS-Things/platform/mcu/esp32/bsp/include/driver/include -ID:/smarthome/AliOS-Things/platform/mcu/esp32/bsp/include/log/include -ID:/smarthome/AliOS-Things/platform/mcu/esp32/bsp/include/nvs_flash/include -ID:/smarthome/AliOS-Things/platform/mcu/esp32/bsp/include/spi_flash/include -ID:/smarthome/AliOS-Things/platform/mcu/esp32/bsp/include/container/include -ID:/smarthome/AliOS-Things/platform/mcu/esp32/bsp/include/app_update/include -ID:/smarthome/AliOS-Things/platform/mcu/esp32/bsp/fatfs/include -ID:/smarthome/AliOS-Things/platform/mcu/esp32/bsp/fatfs/ff/include -ID:/smarthome/AliOS-Things/platform/mcu/esp32/espos/include -ID:/smarthome/AliOS-Things/core/init/include -ID:/smarthome/AliOS-Things/core/kv/include -ID:/smarthome/AliOS-Things/components/security/mbedtls/aos/include/ -ID:/smarthome/AliOS-Things/components/security/mbedtls/include -ID:/smarthome/AliOS-Things/components/network/lwip/include -ID:/smarthome/AliOS-Things/components/network/lwip/port/include -ID:/smarthome/AliOS-Things/core/rhino/include -ID:/smarthome/AliOS-Things/core/rhino/./ -ID:/smarthome/AliOS-Things/platform/arch/xtensa/lx6/include -ID:/smarthome/AliOS-Things/platform/arch/xtensa/lx6/include/frxt -ID:/smarthome/AliOS-Things/platform/arch/xtensa/lx6/../../mcu/esp32/espidf/components/esp32/include -ID:/smarthome/AliOS-Things/components/dm/ulog/../../../include/dm/ulog -ID:/smarthome/AliOS-Things/components/network/netmgr/activation/. -ID:/smarthome/AliOS-Things/components/network/netmgr/activation/chip_code/. -ID:/smarthome/AliOS-Things/core/vfs/. -ID:/smarthome/AliOS-Things/core/vfs/include -ID:/smarthome/AliOS-Things/core/rbtree/include -ID:/smarthome/AliOS-Things/components/network/http/../../../include/network/http -ID:/smarthome/AliOS-Things/include -ID:/smarthome/AliOS-Things/include/hal -ID:/smarthome/AliOS-Things/include/bus -ID:/smarthome/AliOS-Things/include/cli -ID:/smarthome/AliOS-Things/include/hal/soc -ID:/smarthome/AliOS-Things/include/dm -ID:/smarthome/AliOS-Things/include/service -ID:/smarthome/AliOS-Things/include/wireless -ID:/smarthome/AliOS-Things/include/utility -ID:/smarthome/AliOS-Things/include/peripherals -ID:/smarthome/AliOS-Things/include/network -ID:/smarthome/AliOS-Things/include/wireless/bluetooth -ID:/smarthome/AliOS-Things/include/wireless/bluetooth/breeze -ID:/smarthome/AliOS-Things/components/wireless/bluetooth/ble/host/include -ID:/smarthome/AliOS-Things/components/wireless/bluetooth/ble/host/profile -ID:/smarthome/AliOS-Things/include/wireless/bluetooth/blemesh -ID:/smarthome/AliOS-Things/include/network/coap -ID:/smarthome/AliOS-Things/include/network/hal -ID:/smarthome/AliOS-Things/include/network/http -ID:/smarthome/AliOS-Things/include/network/lwm2m -ID:/smarthome/AliOS-Things/include/network/umesh -ID:/smarthome/AliOS-Things/include/network/athost -ID:/smarthome/AliOS-Things/include/network/sal -ID:/smarthome/AliOS-Things/include/network/netmgr -ID:/smarthome/AliOS-Things/include/network/rtp -ID:/smarthome/AliOS-Things/include/utility/yloop
AOS_SDK_DEFINES             		+=                  -DBUILD_BIN -DCLI_CONFIG_STACK_SIZE=3072 -DLITTLEGL_ESP32 -DLOG_LOCAL_LEVEL=4 -DCLI_CONFIG_SUPPORT_BOARD_CMD=1 -DAOS_COMP_CLI -DAOS_COMP_LITTLEVGL -DCONFIG_HTTP_SECURE=1 -DOTA_SIGNAL_CHANNEL=1 -DAOS_FATFS -DAOS_COMP_KV -DOSAL_RHINO -DAOS_HAL -DAOS_LOOP -DMBEDTLS_CONFIG_FILE=\"mbedtls_config.h\" -DAOS_COMP_RHINO -DAOS_COMP_VFS
COMPONENTS                		:= linkapp board_esp32devkitc libiot_devmodel libiot_awss netmgr cjson und cli littlevGL ota mcu_esp32 kernel_init network libiot_infra libiot_wrappers libiot_mqtt libiot_coap kv osal_aos yloop mbedtls lwip rhino arch_xtensa_lx6 ulog activation chip_code libiot_certs libiot_sign vfs lib_rbtree http
PLATFORM_DIRECTORY        		:= esp32devkitc
APP_FULL                  		:= linkapp
PLATFORM                  		:= esp32devkitc
HOST_MCU_FAMILY                  	:= mcu_esp32
SUPPORT_MBINS                          := no
APP                       		:= linkapp
HOST_OPENOCD              		:= esp32
JTAG              		        := jlink_swd
HOST_ARCH                 		:= xtensa
NO_BUILD_BOOTLOADER           	:= 
NO_BOOTLOADER_REQUIRED         	:= 
linkapp_LOCATION         := D:/aos_proj/linkapp/
board_esp32devkitc_LOCATION         := D:/aos_proj/linkapp/board/esp32devkitc/
libiot_devmodel_LOCATION         := D:/smarthome/AliOS-Things/components/linkkit/dev_model/
libiot_awss_LOCATION         := D:/smarthome/AliOS-Things/components/linkkit/wifi_provision/
netmgr_LOCATION         := D:/smarthome/AliOS-Things/components/network/netmgr/
cjson_LOCATION         := D:/smarthome/AliOS-Things/components/utility/cjson/
und_LOCATION         := D:/smarthome/AliOS-Things/components/dm/und/
cli_LOCATION         := D:/smarthome/AliOS-Things/core/cli/
littlevGL_LOCATION         := D:/smarthome/AliOS-Things/components/gui/littlevGL/
ota_LOCATION         := D:/smarthome/AliOS-Things/components/dm/ota/
mcu_esp32_LOCATION         := D:/smarthome/AliOS-Things/platform/mcu/esp32/
kernel_init_LOCATION         := D:/smarthome/AliOS-Things/core/init/
network_LOCATION         := D:/smarthome/AliOS-Things/components/network/
libiot_infra_LOCATION         := D:/smarthome/AliOS-Things/components/linkkit/infra/
libiot_wrappers_LOCATION         := D:/smarthome/AliOS-Things/components/linkkit/wrappers/
libiot_mqtt_LOCATION         := D:/smarthome/AliOS-Things/components/linkkit/mqtt/
libiot_coap_LOCATION         := D:/smarthome/AliOS-Things/components/linkkit/iot_coap/
kv_LOCATION         := D:/smarthome/AliOS-Things/core/kv/
osal_aos_LOCATION         := D:/smarthome/AliOS-Things/core/osal/aos/
yloop_LOCATION         := D:/smarthome/AliOS-Things/components/utility/yloop/
mbedtls_LOCATION         := D:/smarthome/AliOS-Things/components/security/mbedtls/
lwip_LOCATION         := D:/smarthome/AliOS-Things/components/network/lwip/
rhino_LOCATION         := D:/smarthome/AliOS-Things/core/rhino/
arch_xtensa_lx6_LOCATION         := D:/smarthome/AliOS-Things/platform/arch/xtensa/lx6/
ulog_LOCATION         := D:/smarthome/AliOS-Things/components/dm/ulog/
activation_LOCATION         := D:/smarthome/AliOS-Things/components/network/netmgr/activation/
chip_code_LOCATION         := D:/smarthome/AliOS-Things/components/network/netmgr/activation/chip_code/
libiot_certs_LOCATION         := D:/smarthome/AliOS-Things/components/linkkit/certs/
libiot_sign_LOCATION         := D:/smarthome/AliOS-Things/components/linkkit/dev_sign/
vfs_LOCATION         := D:/smarthome/AliOS-Things/core/vfs/
lib_rbtree_LOCATION         := D:/smarthome/AliOS-Things/core/rbtree/
http_LOCATION         := D:/smarthome/AliOS-Things/components/network/http/
linkapp_SOURCES          += Alios_Things_logo.c app_entry.c cmd_handle.c edu_display.c edu_gpio.c edu_gui.c ili9341.c linkkit_example_solo.c
board_esp32devkitc_SOURCES          += board.c
libiot_devmodel_SOURCES          += client/dm_client.c client/dm_client_adapter.c dm_api.c dm_cota.c dm_fota.c dm_ipc.c dm_log_report.c dm_manager.c dm_message.c dm_message_cache.c dm_msg_process.c dm_opt.c dm_ota.c dm_shadow.c dm_tsl_alink.c dm_utils.c impl_linkkit.c iotx_cm.c iotx_cm_coap.c iotx_cm_mqtt.c
libiot_awss_SOURCES          += dev_bind/awss_bind.c dev_bind/awss_bind_statis.c dev_bind/awss_cmp_coap.c dev_bind/awss_cmp_mqtt.c dev_bind/awss_event.c dev_bind/awss_info.c dev_bind/awss_notify.c dev_bind/awss_packet.c dev_bind/awss_report.c dev_bind/awss_reset/awss_dev_reset.c dev_bind/awss_timer.c dev_bind/os/os_misc.c dev_bind/passwd.c frameworks/aplist/awss_aplist.c frameworks/awss.c frameworks/awss_discover.c frameworks/awss_main.c frameworks/connect_ap.c frameworks/ieee80211/zconfig_ieee80211.c frameworks/statics/awss_statis.c frameworks/utils/awss_crypt.c frameworks/utils/zconfig_utils.c frameworks/zconfig_protocol.c frameworks/zconfig_vendor_common.c mcast_smartconfig/mcast_smartconfig.c p2p/awss_wps.c smartconfig/awss_smartconfig.c
netmgr_SOURCES          += hal/wifi.c src/netmgr.c src/netmgr_wifi.c
cjson_SOURCES          += cJSON.c cJSON_Utils.c
und_SOURCES          += src/und.c src/und_adapter.c src/und_manage.c src/und_packet.c src/und_report.c src/und_sched.c
cli_SOURCES          += cli.c cli_adapt.c cli_cpuusage.c cli_default_command.c cli_dumpsys.c cli_uagent.c
littlevGL_SOURCES          += ./src/lv_core/lv_disp.c ./src/lv_core/lv_group.c ./src/lv_core/lv_indev.c ./src/lv_core/lv_obj.c ./src/lv_core/lv_refr.c ./src/lv_core/lv_style.c ./src/lv_draw/lv_draw.c ./src/lv_draw/lv_draw_arc.c ./src/lv_draw/lv_draw_basic.c ./src/lv_draw/lv_draw_img.c ./src/lv_draw/lv_draw_label.c ./src/lv_draw/lv_draw_line.c ./src/lv_draw/lv_draw_rect.c ./src/lv_draw/lv_draw_triangle.c ./src/lv_draw/lv_img_cache.c ./src/lv_draw/lv_img_decoder.c ./src/lv_font/font_freetype/freetype_font.c ./src/lv_font/font_freetype/freetype_font_20.c ./src/lv_font/font_freetype/freetype_font_22.c ./src/lv_font/font_freetype/freetype_font_24.c ./src/lv_font/font_freetype/freetype_font_26.c ./src/lv_font/lv_font.c ./src/lv_font/lv_font_fmt_txt.c ./src/lv_font/lv_font_roboto_12.c ./src/lv_font/lv_font_roboto_16.c ./src/lv_font/lv_font_roboto_22.c ./src/lv_font/lv_font_roboto_28.c ./src/lv_font/lv_font_unscii_8.c ./src/lv_hal/lv_hal_disp.c ./src/lv_hal/lv_hal_indev.c ./src/lv_hal/lv_hal_tick.c ./src/lv_misc/lv_anim.c ./src/lv_misc/lv_area.c ./src/lv_misc/lv_async.c ./src/lv_misc/lv_circ.c ./src/lv_misc/lv_color.c ./src/lv_misc/lv_fs.c ./src/lv_misc/lv_gc.c ./src/lv_misc/lv_ll.c ./src/lv_misc/lv_log.c ./src/lv_misc/lv_math.c ./src/lv_misc/lv_mem.c ./src/lv_misc/lv_task.c ./src/lv_misc/lv_templ.c ./src/lv_misc/lv_txt.c ./src/lv_misc/lv_utils.c ./src/lv_objx/lv_arc.c ./src/lv_objx/lv_bar.c ./src/lv_objx/lv_btn.c ./src/lv_objx/lv_btnm.c ./src/lv_objx/lv_calendar.c ./src/lv_objx/lv_canvas.c ./src/lv_objx/lv_cb.c ./src/lv_objx/lv_chart.c ./src/lv_objx/lv_cont.c ./src/lv_objx/lv_ddlist.c ./src/lv_objx/lv_gauge.c ./src/lv_objx/lv_img.c ./src/lv_objx/lv_imgbtn.c ./src/lv_objx/lv_kb.c ./src/lv_objx/lv_label.c ./src/lv_objx/lv_led.c ./src/lv_objx/lv_line.c ./src/lv_objx/lv_list.c ./src/lv_objx/lv_lmeter.c ./src/lv_objx/lv_mbox.c ./src/lv_objx/lv_page.c ./src/lv_objx/lv_preload.c ./src/lv_objx/lv_roller.c ./src/lv_objx/lv_slider.c ./src/lv_objx/lv_spinbox.c ./src/lv_objx/lv_sw.c ./src/lv_objx/lv_ta.c ./src/lv_objx/lv_table.c ./src/lv_objx/lv_tabview.c ./src/lv_objx/lv_tileview.c ./src/lv_objx/lv_win.c ./src/lv_themes/lv_theme.c ./src/lv_themes/lv_theme_alien.c ./src/lv_themes/lv_theme_default.c ./src/lv_themes/lv_theme_material.c ./src/lv_themes/lv_theme_mono.c ./src/lv_themes/lv_theme_nemo.c ./src/lv_themes/lv_theme_night.c ./src/lv_themes/lv_theme_templ.c ./src/lv_themes/lv_theme_zen.c
ota_SOURCES          += hal/ota_hal_digest.c hal/ota_hal_os.c hal/ota_hal_plat.c hal/ota_hal_trans.c
mcu_esp32_SOURCES          += aos/heap_wrapper.c aos/hook_impl.c aos/soc_impl.c bsp/entry.c bsp/fatfs/diskio.c bsp/fatfs/diskio_rawflash.c bsp/fatfs/fatfs.c bsp/fatfs/ff/ff.c bsp/fatfs/ff/ffunicode.c bsp/heap_oram.c bsp/setboot_cli.c bsp/tcpip_adapter_lwip.c bsp/wlanif.c espos/platform/rhino/espos_aos_vcall.c espos/platform/rhino/espos_eventgroup.c espos/platform/rhino/espos_misc.c espos/platform/rhino/espos_mutex.c espos/platform/rhino/espos_queue.c espos/platform/rhino/espos_scheduler.c espos/platform/rhino/espos_semaphore.c espos/platform/rhino/espos_spinlock.c espos/platform/rhino/espos_task.c espos/platform/rhino/espos_time.c espos/platform/rhino/espos_timer.c hal/adc.c hal/dac.c hal/flash.c hal/gpio.c hal/i2c.c hal/misc.c hal/pwm.c hal/rtc.c hal/uart.c hal/wdg.c hal/wifi_port.c
kernel_init_SOURCES          += aos_init.c
network_SOURCES          += 
libiot_infra_SOURCES          += infra_aes.c infra_cjson.c infra_compat.c infra_defs.c infra_json_parser.c infra_log.c infra_md5.c infra_net.c infra_prt_nwk_payload.c infra_report.c infra_sha1.c infra_sha256.c infra_string.c infra_timer.c
libiot_wrappers_SOURCES          += os/HAL_AWSS_rhino.c os/HAL_OS_rhino.c os/HAL_PRODUCT_rhino.c os/HAL_TCP_rhino.c os/HAL_TLS_mbedtls.c os/HAL_UDP_rhino.c os/dns.c
libiot_mqtt_SOURCES          += impl/MQTTConnectClient.c impl/MQTTDeserializePublish.c impl/MQTTPacket.c impl/MQTTSerializePublish.c impl/MQTTSubscribeClient.c impl/MQTTUnsubscribeClient.c impl/iotx_mqtt_client.c mqtt_api.c
libiot_coap_SOURCES          += CoAPPacket/CoAPDeserialize_common.c CoAPPacket/CoAPMessage_common.c CoAPPacket/CoAPSerialize_common.c client/Cloud_CoAPExport.c client/Cloud_CoAPMessage.c client/Cloud_CoAPNetwork.c client/iotx_coap_api.c server/CoAPExport.c server/CoAPMessage.c server/CoAPNetwork.c server/CoAPObserve.c server/CoAPPlatform.c server/CoAPResource.c server/CoAPServer.c
kv_SOURCES          += kv.c kv_adapt.c kv_cli.c
osal_aos_SOURCES          += cli.c common.c kv.c rhino.c vfs.c
yloop_SOURCES          += hal/loop_hal_alios.c src/device.c src/local_event.c src/select.c src/workqueue.c src/yloop.c
mbedtls_SOURCES          += aos/library/net_sockets.c aos/library/platform.c aos/library/threading_alt.c library/aes.c library/aesni.c library/asn1parse.c library/asn1write.c library/base64.c library/bignum.c library/certs.c library/cipher.c library/cipher_wrap.c library/cmac.c library/ctr_drbg.c library/dhm.c library/ecdh.c library/ecdsa.c library/ecjpake.c library/ecp.c library/ecp_curves.c library/entropy.c library/entropy_poll.c library/havege.c library/hkdf.c library/hmac_drbg.c library/md.c library/md2.c library/md4.c library/md5.c library/md_wrap.c library/memory_buffer_alloc.c library/nist_kw.c library/oid.c library/padlock.c library/pem.c library/pk.c library/pk_wrap.c library/pkcs11.c library/pkcs12.c library/pkcs5.c library/pkparse.c library/pkwrite.c library/platform.c library/platform_util.c library/rsa.c library/rsa_internal.c library/sha1.c library/sha256.c library/ssl_cache.c library/ssl_ciphersuites.c library/ssl_cli.c library/ssl_cookie.c library/ssl_srv.c library/ssl_ticket.c library/ssl_tls.c library/threading.c library/timing.c library/version.c library/version_features.c library/x509.c library/x509_create.c library/x509_crl.c library/x509_crt.c library/x509_csr.c library/x509write_crt.c library/x509write_csr.c
lwip_SOURCES          += api/api_lib.c api/api_msg.c api/err.c api/netbuf.c api/netdb.c api/netifapi.c api/sockets.c api/tcpip.c core/def.c core/dns.c core/inet_chksum.c core/init.c core/ip.c core/ipv4/autoip.c core/ipv4/dhcp.c core/ipv4/etharp.c core/ipv4/icmp.c core/ipv4/igmp.c core/ipv4/ip4.c core/ipv4/ip4_addr.c core/ipv4/ip4_frag.c core/ipv6/dhcp6.c core/ipv6/ethip6.c core/ipv6/icmp6.c core/ipv6/inet6.c core/ipv6/ip6.c core/ipv6/ip6_addr.c core/ipv6/ip6_frag.c core/ipv6/mld6.c core/ipv6/nd6.c core/mem.c core/memp.c core/netif.c core/pbuf.c core/pkt_print.c core/raw.c core/stats.c core/sys.c core/tcp.c core/tcp_in.c core/tcp_out.c core/timeouts.c core/udp.c netif/ethernet.c port/sys_arch.c
rhino_SOURCES          += k_buf_queue.c k_cfs.c k_dyn_mem_proc.c k_err.c k_event.c k_idle.c k_mm.c k_mm_blk.c k_mm_debug.c k_mutex.c k_obj.c k_pend.c k_queue.c k_ringbuf.c k_sched.c k_sem.c k_spin_lock.c k_stats.c k_sys.c k_task.c k_task_sem.c k_tick.c k_time.c k_timer.c k_workqueue.c
arch_xtensa_lx6_SOURCES          += backtrace.c panic.c port.c portasm.S xtensa_context.S xtensa_init.c xtensa_intr.c xtensa_intr_asm.S xtensa_panic.S xtensa_vectors.S
ulog_SOURCES          += ulog.c ulog_init.c ulog_utility.c
activation_SOURCES          += activation.c
chip_code_SOURCES          += chip_code.c
libiot_certs_SOURCES          += root_ca.c
libiot_sign_SOURCES          += dev_sign_mqtt.c
vfs_SOURCES          += vfs.c vfs_adapt.c vfs_file.c vfs_inode.c
lib_rbtree_SOURCES          += rbtree.c
http_SOURCES          += ./deprecated/src/http_client.c ./deprecated/src/http_parser.c ./deprecated/src/http_string.c ./deprecated/wrapper/http_aos_wrapper.c
linkapp_CHECK_HEADERS    += 
board_esp32devkitc_CHECK_HEADERS    += 
libiot_devmodel_CHECK_HEADERS    += 
libiot_awss_CHECK_HEADERS    += 
netmgr_CHECK_HEADERS    += 
cjson_CHECK_HEADERS    += 
und_CHECK_HEADERS    += 
cli_CHECK_HEADERS    += 
littlevGL_CHECK_HEADERS    += 
ota_CHECK_HEADERS    += 
mcu_esp32_CHECK_HEADERS    += 
kernel_init_CHECK_HEADERS    += 
network_CHECK_HEADERS    += 
libiot_infra_CHECK_HEADERS    += 
libiot_wrappers_CHECK_HEADERS    += 
libiot_mqtt_CHECK_HEADERS    += 
libiot_coap_CHECK_HEADERS    += 
kv_CHECK_HEADERS    += 
osal_aos_CHECK_HEADERS    += 
yloop_CHECK_HEADERS    += 
mbedtls_CHECK_HEADERS    += 
lwip_CHECK_HEADERS    += 
rhino_CHECK_HEADERS    += 
arch_xtensa_lx6_CHECK_HEADERS    += 
ulog_CHECK_HEADERS    += 
activation_CHECK_HEADERS    += 
chip_code_CHECK_HEADERS    += 
libiot_certs_CHECK_HEADERS    += 
libiot_sign_CHECK_HEADERS    += 
vfs_CHECK_HEADERS    += 
lib_rbtree_CHECK_HEADERS    += 
http_CHECK_HEADERS    += 
linkapp_INCLUDES         := -ID:/aos_proj/linkapp/./ -ID:/aos_proj/linkapp/./
board_esp32devkitc_INCLUDES         := 
libiot_devmodel_INCLUDES         := -ID:/smarthome/AliOS-Things/components/linkkit/dev_model/client -ID:/smarthome/AliOS-Things/components/linkkit/dev_model/. -ID:/smarthome/AliOS-Things/components/linkkit/dev_model/client -ID:/smarthome/AliOS-Things/components/linkkit/dev_model/.
libiot_awss_INCLUDES         := -ID:/smarthome/AliOS-Things/components/linkkit/wifi_provision/./ -ID:/smarthome/AliOS-Things/components/linkkit/wifi_provision/dev_bind/ -ID:/smarthome/AliOS-Things/components/linkkit/wifi_provision/dev_bind/awss_reset -ID:/smarthome/AliOS-Things/components/linkkit/wifi_provision/dev_bind/os -ID:/smarthome/AliOS-Things/components/linkkit/wifi_provision/../iot_coap -ID:/smarthome/AliOS-Things/components/linkkit/wifi_provision/../iot_coap/server -ID:/smarthome/AliOS-Things/components/linkkit/wifi_provision/frameworks -ID:/smarthome/AliOS-Things/components/linkkit/wifi_provision/frameworks/statics/ -ID:/smarthome/AliOS-Things/components/linkkit/wifi_provision/frameworks/ieee80211/ -ID:/smarthome/AliOS-Things/components/linkkit/wifi_provision/frameworks/utils/ -ID:/smarthome/AliOS-Things/components/linkkit/wifi_provision/frameworks/aplist/ -ID:/smarthome/AliOS-Things/components/linkkit/wifi_provision/smartconfig -ID:/smarthome/AliOS-Things/components/linkkit/wifi_provision/mcast_smartconfig -ID:/smarthome/AliOS-Things/components/linkkit/wifi_provision/p2p -ID:/smarthome/AliOS-Things/components/linkkit/wifi_provision/./ -ID:/smarthome/AliOS-Things/components/linkkit/wifi_provision/dev_bind/ -ID:/smarthome/AliOS-Things/components/linkkit/wifi_provision/dev_bind/awss_reset -ID:/smarthome/AliOS-Things/components/linkkit/wifi_provision/dev_bind/os -ID:/smarthome/AliOS-Things/components/linkkit/wifi_provision/../iot_coap -ID:/smarthome/AliOS-Things/components/linkkit/wifi_provision/../iot_coap/server -ID:/smarthome/AliOS-Things/components/linkkit/wifi_provision/frameworks -ID:/smarthome/AliOS-Things/components/linkkit/wifi_provision/frameworks/statics/ -ID:/smarthome/AliOS-Things/components/linkkit/wifi_provision/frameworks/ieee80211/ -ID:/smarthome/AliOS-Things/components/linkkit/wifi_provision/frameworks/utils/ -ID:/smarthome/AliOS-Things/components/linkkit/wifi_provision/frameworks/aplist/ -ID:/smarthome/AliOS-Things/components/linkkit/wifi_provision/smartconfig -ID:/smarthome/AliOS-Things/components/linkkit/wifi_provision/mcast_smartconfig -ID:/smarthome/AliOS-Things/components/linkkit/wifi_provision/p2p
netmgr_INCLUDES         := -ID:/smarthome/AliOS-Things/components/network/netmgr/src/include -ID:/smarthome/AliOS-Things/components/network/netmgr/src -ID:/smarthome/AliOS-Things/components/network/netmgr/src/include -ID:/smarthome/AliOS-Things/components/network/netmgr/src
cjson_INCLUDES         := 
und_INCLUDES         := -ID:/smarthome/AliOS-Things/components/dm/und/include -ID:/smarthome/AliOS-Things/components/dm/und/include
cli_INCLUDES         := 
littlevGL_INCLUDES         := -ID:/smarthome/AliOS-Things/components/gui/littlevGL/. -ID:/smarthome/AliOS-Things/components/gui/littlevGL//src -ID:/smarthome/AliOS-Things/components/gui/littlevGL/. -ID:/smarthome/AliOS-Things/components/gui/littlevGL//src -ID:/smarthome/AliOS-Things/components/gui/littlevGL/. -ID:/smarthome/AliOS-Things/components/gui/littlevGL//src -ID:/smarthome/AliOS-Things/components/gui/littlevGL/. -ID:/smarthome/AliOS-Things/components/gui/littlevGL//src -ID:/smarthome/AliOS-Things/components/gui/littlevGL/. -ID:/smarthome/AliOS-Things/components/gui/littlevGL//src -ID:/smarthome/AliOS-Things/components/gui/littlevGL/. -ID:/smarthome/AliOS-Things/components/gui/littlevGL//src -ID:/smarthome/AliOS-Things/components/gui/littlevGL/. -ID:/smarthome/AliOS-Things/components/gui/littlevGL//src -ID:/smarthome/AliOS-Things/components/gui/littlevGL/. -ID:/smarthome/AliOS-Things/components/gui/littlevGL//src -ID:/smarthome/AliOS-Things/components/gui/littlevGL/. -ID:/smarthome/AliOS-Things/components/gui/littlevGL//src -ID:/smarthome/AliOS-Things/components/gui/littlevGL/. -ID:/smarthome/AliOS-Things/components/gui/littlevGL//src -ID:/smarthome/AliOS-Things/components/gui/littlevGL/. -ID:/smarthome/AliOS-Things/components/gui/littlevGL//src -ID:/smarthome/AliOS-Things/components/gui/littlevGL/. -ID:/smarthome/AliOS-Things/components/gui/littlevGL//src -ID:/smarthome/AliOS-Things/components/gui/littlevGL/. -ID:/smarthome/AliOS-Things/components/gui/littlevGL//src -ID:/smarthome/AliOS-Things/components/gui/littlevGL/. -ID:/smarthome/AliOS-Things/components/gui/littlevGL//src
ota_INCLUDES         := -ID:/smarthome/AliOS-Things/components/dm/ota/include -ID:/smarthome/AliOS-Things/components/dm/ota/hal -ID:/smarthome/AliOS-Things/components/dm/ota/include -ID:/smarthome/AliOS-Things/components/dm/ota/hal
mcu_esp32_INCLUDES         := 
kernel_init_INCLUDES         := 
network_INCLUDES         := 
libiot_infra_INCLUDES         := -ID:/smarthome/AliOS-Things/components/linkkit/infra/../mqtt -ID:/smarthome/AliOS-Things/components/linkkit/infra/../dev_model -ID:/smarthome/AliOS-Things/components/linkkit/infra/../mqtt -ID:/smarthome/AliOS-Things/components/linkkit/infra/../dev_model
libiot_wrappers_INCLUDES         := 
libiot_mqtt_INCLUDES         := -ID:/smarthome/AliOS-Things/components/linkkit/mqtt/. -ID:/smarthome/AliOS-Things/components/linkkit/mqtt/.
libiot_coap_INCLUDES         := -ID:/smarthome/AliOS-Things/components/linkkit/iot_coap/CoAPPacket -ID:/smarthome/AliOS-Things/components/linkkit/iot_coap/client -ID:/smarthome/AliOS-Things/components/linkkit/iot_coap/server -ID:/smarthome/AliOS-Things/components/linkkit/iot_coap/. -ID:/smarthome/AliOS-Things/components/linkkit/iot_coap/CoAPPacket -ID:/smarthome/AliOS-Things/components/linkkit/iot_coap/client -ID:/smarthome/AliOS-Things/components/linkkit/iot_coap/server -ID:/smarthome/AliOS-Things/components/linkkit/iot_coap/.
kv_INCLUDES         := 
osal_aos_INCLUDES         := 
yloop_INCLUDES         := -ID:/smarthome/AliOS-Things/components/utility/yloop/include -ID:/smarthome/AliOS-Things/components/utility/yloop/hal -ID:/smarthome/AliOS-Things/components/utility/yloop/include -ID:/smarthome/AliOS-Things/components/utility/yloop/hal
mbedtls_INCLUDES         := 
lwip_INCLUDES         := 
rhino_INCLUDES         := 
arch_xtensa_lx6_INCLUDES         := -ID:/smarthome/AliOS-Things/platform/arch/xtensa/lx6/../../mcu/esp32/espidf/components/freertos/include -ID:/smarthome/AliOS-Things/platform/arch/xtensa/lx6/../../mcu/esp32/espidf/components/soc/esp32/include -ID:/smarthome/AliOS-Things/platform/arch/xtensa/lx6/../../mcu/esp32/espidf/components/log/include -ID:/smarthome/AliOS-Things/platform/arch/xtensa/lx6/../../mcu/esp32/espidf/components/driver/include
ulog_INCLUDES         := -ID:/smarthome/AliOS-Things/components/dm/ulog/include -ID:/smarthome/AliOS-Things/components/dm/ulog/include
activation_INCLUDES         := 
chip_code_INCLUDES         := 
libiot_certs_INCLUDES         := 
libiot_sign_INCLUDES         := -ID:/smarthome/AliOS-Things/components/linkkit/dev_sign/. -ID:/smarthome/AliOS-Things/components/linkkit/dev_sign/.
vfs_INCLUDES         := 
lib_rbtree_INCLUDES         := 
http_INCLUDES         := -ID:/smarthome/AliOS-Things/components/network/http/./deprecated/include -ID:/smarthome/AliOS-Things/components/network/http/./deprecated/include
linkapp_DEFINES          := 
board_esp32devkitc_DEFINES          := 
libiot_devmodel_DEFINES          := 
libiot_awss_DEFINES          := -DDEBUG -DDEBUG
netmgr_DEFINES          := 
cjson_DEFINES          := 
und_DEFINES          := 
cli_DEFINES          := 
littlevGL_DEFINES          := 
ota_DEFINES          := 
mcu_esp32_DEFINES          := 
kernel_init_DEFINES          := 
network_DEFINES          := 
libiot_infra_DEFINES          := 
libiot_wrappers_DEFINES          := -DUSE_YLOOP -DUSE_PUBLIC_MBEDTLS -DUSE_YLOOP -DUSE_PUBLIC_MBEDTLS
libiot_mqtt_DEFINES          := -DWITH_MQTT_ZIP_TOPIC=1 -DWITH_MQTT_SUB_SHORTCUT=1 -DWITH_MQTT_DYN_BUF=1 -DMUTE_VERSION_REPORT -DWITH_MQTT_ZIP_TOPIC=1 -DWITH_MQTT_SUB_SHORTCUT=1 -DWITH_MQTT_DYN_BUF=1 -DMUTE_VERSION_REPORT
libiot_coap_DEFINES          := 
kv_DEFINES          := 
osal_aos_DEFINES          := 
yloop_DEFINES          := 
mbedtls_DEFINES          := 
lwip_DEFINES          := 
rhino_DEFINES          := 
arch_xtensa_lx6_DEFINES          := 
ulog_DEFINES          := 
activation_DEFINES          := 
chip_code_DEFINES          := 
libiot_certs_DEFINES          := 
libiot_sign_DEFINES          := 
vfs_DEFINES          := 
lib_rbtree_DEFINES          := 
http_DEFINES          := 
linkapp_CFLAGS           := -DMCU_FAMILY=\"mcu_esp32\"  -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_ESP32\" -DSYSINFO_DEVICE_NAME=\"ESP32\"  -DCONFIG_AOS_FATFS_SUPPORT_RAW_FLASH          -DOTA_DUBANK -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -mlongcalls -DESPOS_FOR_ESP32                       -ggdb -Os   -DPLATFORM=\"esp32devkitc\"  -include D:\aos_proj\linkapp/aos_config.h  
board_esp32devkitc_CFLAGS           := -DMCU_FAMILY=\"mcu_esp32\"  -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_ESP32\" -DSYSINFO_DEVICE_NAME=\"ESP32\"  -DCONFIG_AOS_FATFS_SUPPORT_RAW_FLASH          -DOTA_DUBANK -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -mlongcalls -DESPOS_FOR_ESP32                       -ggdb -Os   -DPLATFORM=\"esp32devkitc\"  -include D:\aos_proj\linkapp/aos_config.h  
libiot_devmodel_CFLAGS           := -DMCU_FAMILY=\"mcu_esp32\"  -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_ESP32\" -DSYSINFO_DEVICE_NAME=\"ESP32\"  -DCONFIG_AOS_FATFS_SUPPORT_RAW_FLASH          -DOTA_DUBANK -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -mlongcalls -DESPOS_FOR_ESP32                       -ggdb -Os   -DPLATFORM=\"esp32devkitc\"  -include D:\aos_proj\linkapp/aos_config.h  
libiot_awss_CFLAGS           := -DMCU_FAMILY=\"mcu_esp32\"  -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_ESP32\" -DSYSINFO_DEVICE_NAME=\"ESP32\"  -DCONFIG_AOS_FATFS_SUPPORT_RAW_FLASH          -DOTA_DUBANK -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -mlongcalls -DESPOS_FOR_ESP32                       -ggdb -Os   -DPLATFORM=\"esp32devkitc\"  -include D:\aos_proj\linkapp/aos_config.h  
netmgr_CFLAGS           := -DMCU_FAMILY=\"mcu_esp32\"  -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_ESP32\" -DSYSINFO_DEVICE_NAME=\"ESP32\"  -DCONFIG_AOS_FATFS_SUPPORT_RAW_FLASH          -DOTA_DUBANK -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -mlongcalls -DESPOS_FOR_ESP32                       -ggdb -Os   -DPLATFORM=\"esp32devkitc\"  -include D:\aos_proj\linkapp/aos_config.h  
cjson_CFLAGS           := -DMCU_FAMILY=\"mcu_esp32\"  -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_ESP32\" -DSYSINFO_DEVICE_NAME=\"ESP32\"  -DCONFIG_AOS_FATFS_SUPPORT_RAW_FLASH          -DOTA_DUBANK -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -mlongcalls -DESPOS_FOR_ESP32                       -ggdb -Os   -DPLATFORM=\"esp32devkitc\"  -include D:\aos_proj\linkapp/aos_config.h  
und_CFLAGS           := -DMCU_FAMILY=\"mcu_esp32\"  -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_ESP32\" -DSYSINFO_DEVICE_NAME=\"ESP32\"  -DCONFIG_AOS_FATFS_SUPPORT_RAW_FLASH          -DOTA_DUBANK -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -mlongcalls -DESPOS_FOR_ESP32                       -ggdb -Os   -DPLATFORM=\"esp32devkitc\"  -include D:\aos_proj\linkapp/aos_config.h  
cli_CFLAGS           := -DMCU_FAMILY=\"mcu_esp32\"  -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_ESP32\" -DSYSINFO_DEVICE_NAME=\"ESP32\"  -DCONFIG_AOS_FATFS_SUPPORT_RAW_FLASH          -DOTA_DUBANK -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -mlongcalls -DESPOS_FOR_ESP32                       -ggdb -Os   -DPLATFORM=\"esp32devkitc\"  -include D:\aos_proj\linkapp/aos_config.h  -Wall -Werror -Wall -Werror
littlevGL_CFLAGS           := -DMCU_FAMILY=\"mcu_esp32\"  -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_ESP32\" -DSYSINFO_DEVICE_NAME=\"ESP32\"  -DCONFIG_AOS_FATFS_SUPPORT_RAW_FLASH          -DOTA_DUBANK -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -mlongcalls -DESPOS_FOR_ESP32                       -ggdb -Os   -DPLATFORM=\"esp32devkitc\"  -include D:\aos_proj\linkapp/aos_config.h  -Wall -Werror -Wall -Werror
ota_CFLAGS           := -DMCU_FAMILY=\"mcu_esp32\"  -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_ESP32\" -DSYSINFO_DEVICE_NAME=\"ESP32\"  -DCONFIG_AOS_FATFS_SUPPORT_RAW_FLASH          -DOTA_DUBANK -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -mlongcalls -DESPOS_FOR_ESP32                       -ggdb -Os   -DPLATFORM=\"esp32devkitc\"  -include D:\aos_proj\linkapp/aos_config.h  -Wall -Werror -Wall -Werror
mcu_esp32_CFLAGS           := -DMCU_FAMILY=\"mcu_esp32\"  -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_ESP32\" -DSYSINFO_DEVICE_NAME=\"ESP32\"  -DCONFIG_AOS_FATFS_SUPPORT_RAW_FLASH          -DOTA_DUBANK -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -mlongcalls -DESPOS_FOR_ESP32                       -ggdb -Os   -DPLATFORM=\"esp32devkitc\"  -include D:\aos_proj\linkapp/aos_config.h  -std=gnu99 -DENABLE_WIFI -I platform/mcu/esp32/bsp
kernel_init_CFLAGS           := -DMCU_FAMILY=\"mcu_esp32\"  -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_ESP32\" -DSYSINFO_DEVICE_NAME=\"ESP32\"  -DCONFIG_AOS_FATFS_SUPPORT_RAW_FLASH          -DOTA_DUBANK -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -mlongcalls -DESPOS_FOR_ESP32                       -ggdb -Os   -DPLATFORM=\"esp32devkitc\"  -include D:\aos_proj\linkapp/aos_config.h  
network_CFLAGS           := -DMCU_FAMILY=\"mcu_esp32\"  -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_ESP32\" -DSYSINFO_DEVICE_NAME=\"ESP32\"  -DCONFIG_AOS_FATFS_SUPPORT_RAW_FLASH          -DOTA_DUBANK -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -mlongcalls -DESPOS_FOR_ESP32                       -ggdb -Os   -DPLATFORM=\"esp32devkitc\"  -include D:\aos_proj\linkapp/aos_config.h  
libiot_infra_CFLAGS           := -DMCU_FAMILY=\"mcu_esp32\"  -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_ESP32\" -DSYSINFO_DEVICE_NAME=\"ESP32\"  -DCONFIG_AOS_FATFS_SUPPORT_RAW_FLASH          -DOTA_DUBANK -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -mlongcalls -DESPOS_FOR_ESP32                       -ggdb -Os   -DPLATFORM=\"esp32devkitc\"  -include D:\aos_proj\linkapp/aos_config.h  
libiot_wrappers_CFLAGS           := -DMCU_FAMILY=\"mcu_esp32\"  -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_ESP32\" -DSYSINFO_DEVICE_NAME=\"ESP32\"  -DCONFIG_AOS_FATFS_SUPPORT_RAW_FLASH          -DOTA_DUBANK -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -mlongcalls -DESPOS_FOR_ESP32                       -ggdb -Os   -DPLATFORM=\"esp32devkitc\"  -include D:\aos_proj\linkapp/aos_config.h  
libiot_mqtt_CFLAGS           := -DMCU_FAMILY=\"mcu_esp32\"  -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_ESP32\" -DSYSINFO_DEVICE_NAME=\"ESP32\"  -DCONFIG_AOS_FATFS_SUPPORT_RAW_FLASH          -DOTA_DUBANK -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -mlongcalls -DESPOS_FOR_ESP32                       -ggdb -Os   -DPLATFORM=\"esp32devkitc\"  -include D:\aos_proj\linkapp/aos_config.h  
libiot_coap_CFLAGS           := -DMCU_FAMILY=\"mcu_esp32\"  -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_ESP32\" -DSYSINFO_DEVICE_NAME=\"ESP32\"  -DCONFIG_AOS_FATFS_SUPPORT_RAW_FLASH          -DOTA_DUBANK -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -mlongcalls -DESPOS_FOR_ESP32                       -ggdb -Os   -DPLATFORM=\"esp32devkitc\"  -include D:\aos_proj\linkapp/aos_config.h  
kv_CFLAGS           := -DMCU_FAMILY=\"mcu_esp32\"  -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_ESP32\" -DSYSINFO_DEVICE_NAME=\"ESP32\"  -DCONFIG_AOS_FATFS_SUPPORT_RAW_FLASH          -DOTA_DUBANK -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -mlongcalls -DESPOS_FOR_ESP32                       -ggdb -Os   -DPLATFORM=\"esp32devkitc\"  -include D:\aos_proj\linkapp/aos_config.h  -Wall -Werror -Wall -Werror
osal_aos_CFLAGS           := -DMCU_FAMILY=\"mcu_esp32\"  -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_ESP32\" -DSYSINFO_DEVICE_NAME=\"ESP32\"  -DCONFIG_AOS_FATFS_SUPPORT_RAW_FLASH          -DOTA_DUBANK -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -mlongcalls -DESPOS_FOR_ESP32                       -ggdb -Os   -DPLATFORM=\"esp32devkitc\"  -include D:\aos_proj\linkapp/aos_config.h  -Wall -Werror -Wall -Werror
yloop_CFLAGS           := -DMCU_FAMILY=\"mcu_esp32\"  -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_ESP32\" -DSYSINFO_DEVICE_NAME=\"ESP32\"  -DCONFIG_AOS_FATFS_SUPPORT_RAW_FLASH          -DOTA_DUBANK -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -mlongcalls -DESPOS_FOR_ESP32                       -ggdb -Os   -DPLATFORM=\"esp32devkitc\"  -include D:\aos_proj\linkapp/aos_config.h  -Wall -Werror -Wall -Werror
mbedtls_CFLAGS           := -DMCU_FAMILY=\"mcu_esp32\"  -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_ESP32\" -DSYSINFO_DEVICE_NAME=\"ESP32\"  -DCONFIG_AOS_FATFS_SUPPORT_RAW_FLASH          -DOTA_DUBANK -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -mlongcalls -DESPOS_FOR_ESP32                       -ggdb -Os   -DPLATFORM=\"esp32devkitc\"  -include D:\aos_proj\linkapp/aos_config.h  
lwip_CFLAGS           := -DMCU_FAMILY=\"mcu_esp32\"  -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_ESP32\" -DSYSINFO_DEVICE_NAME=\"ESP32\"  -DCONFIG_AOS_FATFS_SUPPORT_RAW_FLASH          -DOTA_DUBANK -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -mlongcalls -DESPOS_FOR_ESP32                       -ggdb -Os   -DPLATFORM=\"esp32devkitc\"  -include D:\aos_proj\linkapp/aos_config.h  
rhino_CFLAGS           := -DMCU_FAMILY=\"mcu_esp32\"  -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_ESP32\" -DSYSINFO_DEVICE_NAME=\"ESP32\"  -DCONFIG_AOS_FATFS_SUPPORT_RAW_FLASH          -DOTA_DUBANK -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -mlongcalls -DESPOS_FOR_ESP32                       -ggdb -Os   -DPLATFORM=\"esp32devkitc\"  -include D:\aos_proj\linkapp/aos_config.h  -Wall -Werror -Wall -Werror
arch_xtensa_lx6_CFLAGS           := -DMCU_FAMILY=\"mcu_esp32\"  -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_ESP32\" -DSYSINFO_DEVICE_NAME=\"ESP32\"  -DCONFIG_AOS_FATFS_SUPPORT_RAW_FLASH          -DOTA_DUBANK -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -mlongcalls -DESPOS_FOR_ESP32                       -ggdb -Os   -DPLATFORM=\"esp32devkitc\"  -include D:\aos_proj\linkapp/aos_config.h  
ulog_CFLAGS           := -DMCU_FAMILY=\"mcu_esp32\"  -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_ESP32\" -DSYSINFO_DEVICE_NAME=\"ESP32\"  -DCONFIG_AOS_FATFS_SUPPORT_RAW_FLASH          -DOTA_DUBANK -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -mlongcalls -DESPOS_FOR_ESP32                       -ggdb -Os   -DPLATFORM=\"esp32devkitc\"  -include D:\aos_proj\linkapp/aos_config.h  -Wall -Werror -DMOD_VER=\"1.0.1\" -Wall -Werror -DMOD_VER=\"1.0.1\"
activation_CFLAGS           := -DMCU_FAMILY=\"mcu_esp32\"  -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_ESP32\" -DSYSINFO_DEVICE_NAME=\"ESP32\"  -DCONFIG_AOS_FATFS_SUPPORT_RAW_FLASH          -DOTA_DUBANK -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -mlongcalls -DESPOS_FOR_ESP32                       -ggdb -Os   -DPLATFORM=\"esp32devkitc\"  -include D:\aos_proj\linkapp/aos_config.h  
chip_code_CFLAGS           := -DMCU_FAMILY=\"mcu_esp32\"  -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_ESP32\" -DSYSINFO_DEVICE_NAME=\"ESP32\"  -DCONFIG_AOS_FATFS_SUPPORT_RAW_FLASH          -DOTA_DUBANK -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -mlongcalls -DESPOS_FOR_ESP32                       -ggdb -Os   -DPLATFORM=\"esp32devkitc\"  -include D:\aos_proj\linkapp/aos_config.h  
libiot_certs_CFLAGS           := -DMCU_FAMILY=\"mcu_esp32\"  -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_ESP32\" -DSYSINFO_DEVICE_NAME=\"ESP32\"  -DCONFIG_AOS_FATFS_SUPPORT_RAW_FLASH          -DOTA_DUBANK -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -mlongcalls -DESPOS_FOR_ESP32                       -ggdb -Os   -DPLATFORM=\"esp32devkitc\"  -include D:\aos_proj\linkapp/aos_config.h  
libiot_sign_CFLAGS           := -DMCU_FAMILY=\"mcu_esp32\"  -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_ESP32\" -DSYSINFO_DEVICE_NAME=\"ESP32\"  -DCONFIG_AOS_FATFS_SUPPORT_RAW_FLASH          -DOTA_DUBANK -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -mlongcalls -DESPOS_FOR_ESP32                       -ggdb -Os   -DPLATFORM=\"esp32devkitc\"  -include D:\aos_proj\linkapp/aos_config.h  
vfs_CFLAGS           := -DMCU_FAMILY=\"mcu_esp32\"  -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_ESP32\" -DSYSINFO_DEVICE_NAME=\"ESP32\"  -DCONFIG_AOS_FATFS_SUPPORT_RAW_FLASH          -DOTA_DUBANK -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -mlongcalls -DESPOS_FOR_ESP32                       -ggdb -Os   -DPLATFORM=\"esp32devkitc\"  -include D:\aos_proj\linkapp/aos_config.h  -Wall -Werror -Wall -Werror
lib_rbtree_CFLAGS           := -DMCU_FAMILY=\"mcu_esp32\"  -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_ESP32\" -DSYSINFO_DEVICE_NAME=\"ESP32\"  -DCONFIG_AOS_FATFS_SUPPORT_RAW_FLASH          -DOTA_DUBANK -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -mlongcalls -DESPOS_FOR_ESP32                       -ggdb -Os   -DPLATFORM=\"esp32devkitc\"  -include D:\aos_proj\linkapp/aos_config.h  -Wall -Werror -Wall -Werror
http_CFLAGS           := -DMCU_FAMILY=\"mcu_esp32\"  -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_ESP32\" -DSYSINFO_DEVICE_NAME=\"ESP32\"  -DCONFIG_AOS_FATFS_SUPPORT_RAW_FLASH          -DOTA_DUBANK -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -mlongcalls -DESPOS_FOR_ESP32                       -ggdb -Os   -DPLATFORM=\"esp32devkitc\"  -include D:\aos_proj\linkapp/aos_config.h  
linkapp_CXXFLAGS         :=                                 -ggdb -Os   -DPLATFORM=\"esp32devkitc\"  -include D:\aos_proj\linkapp/aos_config.h  
board_esp32devkitc_CXXFLAGS         :=                                 -ggdb -Os   -DPLATFORM=\"esp32devkitc\"  -include D:\aos_proj\linkapp/aos_config.h  
libiot_devmodel_CXXFLAGS         :=                                 -ggdb -Os   -DPLATFORM=\"esp32devkitc\"  -include D:\aos_proj\linkapp/aos_config.h  
libiot_awss_CXXFLAGS         :=                                 -ggdb -Os   -DPLATFORM=\"esp32devkitc\"  -include D:\aos_proj\linkapp/aos_config.h  
netmgr_CXXFLAGS         :=                                 -ggdb -Os   -DPLATFORM=\"esp32devkitc\"  -include D:\aos_proj\linkapp/aos_config.h  
cjson_CXXFLAGS         :=                                 -ggdb -Os   -DPLATFORM=\"esp32devkitc\"  -include D:\aos_proj\linkapp/aos_config.h  
und_CXXFLAGS         :=                                 -ggdb -Os   -DPLATFORM=\"esp32devkitc\"  -include D:\aos_proj\linkapp/aos_config.h  
cli_CXXFLAGS         :=                                 -ggdb -Os   -DPLATFORM=\"esp32devkitc\"  -include D:\aos_proj\linkapp/aos_config.h  
littlevGL_CXXFLAGS         :=                                 -ggdb -Os   -DPLATFORM=\"esp32devkitc\"  -include D:\aos_proj\linkapp/aos_config.h  
ota_CXXFLAGS         :=                                 -ggdb -Os   -DPLATFORM=\"esp32devkitc\"  -include D:\aos_proj\linkapp/aos_config.h  
mcu_esp32_CXXFLAGS         :=                                 -ggdb -Os   -DPLATFORM=\"esp32devkitc\"  -include D:\aos_proj\linkapp/aos_config.h  
kernel_init_CXXFLAGS         :=                                 -ggdb -Os   -DPLATFORM=\"esp32devkitc\"  -include D:\aos_proj\linkapp/aos_config.h  
network_CXXFLAGS         :=                                 -ggdb -Os   -DPLATFORM=\"esp32devkitc\"  -include D:\aos_proj\linkapp/aos_config.h  
libiot_infra_CXXFLAGS         :=                                 -ggdb -Os   -DPLATFORM=\"esp32devkitc\"  -include D:\aos_proj\linkapp/aos_config.h  
libiot_wrappers_CXXFLAGS         :=                                 -ggdb -Os   -DPLATFORM=\"esp32devkitc\"  -include D:\aos_proj\linkapp/aos_config.h  
libiot_mqtt_CXXFLAGS         :=                                 -ggdb -Os   -DPLATFORM=\"esp32devkitc\"  -include D:\aos_proj\linkapp/aos_config.h  
libiot_coap_CXXFLAGS         :=                                 -ggdb -Os   -DPLATFORM=\"esp32devkitc\"  -include D:\aos_proj\linkapp/aos_config.h  
kv_CXXFLAGS         :=                                 -ggdb -Os   -DPLATFORM=\"esp32devkitc\"  -include D:\aos_proj\linkapp/aos_config.h  
osal_aos_CXXFLAGS         :=                                 -ggdb -Os   -DPLATFORM=\"esp32devkitc\"  -include D:\aos_proj\linkapp/aos_config.h  
yloop_CXXFLAGS         :=                                 -ggdb -Os   -DPLATFORM=\"esp32devkitc\"  -include D:\aos_proj\linkapp/aos_config.h  
mbedtls_CXXFLAGS         :=                                 -ggdb -Os   -DPLATFORM=\"esp32devkitc\"  -include D:\aos_proj\linkapp/aos_config.h  
lwip_CXXFLAGS         :=                                 -ggdb -Os   -DPLATFORM=\"esp32devkitc\"  -include D:\aos_proj\linkapp/aos_config.h  
rhino_CXXFLAGS         :=                                 -ggdb -Os   -DPLATFORM=\"esp32devkitc\"  -include D:\aos_proj\linkapp/aos_config.h  
arch_xtensa_lx6_CXXFLAGS         :=                                 -ggdb -Os   -DPLATFORM=\"esp32devkitc\"  -include D:\aos_proj\linkapp/aos_config.h  
ulog_CXXFLAGS         :=                                 -ggdb -Os   -DPLATFORM=\"esp32devkitc\"  -include D:\aos_proj\linkapp/aos_config.h  
activation_CXXFLAGS         :=                                 -ggdb -Os   -DPLATFORM=\"esp32devkitc\"  -include D:\aos_proj\linkapp/aos_config.h  
chip_code_CXXFLAGS         :=                                 -ggdb -Os   -DPLATFORM=\"esp32devkitc\"  -include D:\aos_proj\linkapp/aos_config.h  
libiot_certs_CXXFLAGS         :=                                 -ggdb -Os   -DPLATFORM=\"esp32devkitc\"  -include D:\aos_proj\linkapp/aos_config.h  
libiot_sign_CXXFLAGS         :=                                 -ggdb -Os   -DPLATFORM=\"esp32devkitc\"  -include D:\aos_proj\linkapp/aos_config.h  
vfs_CXXFLAGS         :=                                 -ggdb -Os   -DPLATFORM=\"esp32devkitc\"  -include D:\aos_proj\linkapp/aos_config.h  
lib_rbtree_CXXFLAGS         :=                                 -ggdb -Os   -DPLATFORM=\"esp32devkitc\"  -include D:\aos_proj\linkapp/aos_config.h  
http_CXXFLAGS         :=                                 -ggdb -Os   -DPLATFORM=\"esp32devkitc\"  -include D:\aos_proj\linkapp/aos_config.h  
linkapp_ASMFLAGS         := -include D:\aos_proj\linkapp/aos_config.h
board_esp32devkitc_ASMFLAGS         := -include D:\aos_proj\linkapp/aos_config.h
libiot_devmodel_ASMFLAGS         := -include D:\aos_proj\linkapp/aos_config.h
libiot_awss_ASMFLAGS         := -include D:\aos_proj\linkapp/aos_config.h
netmgr_ASMFLAGS         := -include D:\aos_proj\linkapp/aos_config.h
cjson_ASMFLAGS         := -include D:\aos_proj\linkapp/aos_config.h
und_ASMFLAGS         := -include D:\aos_proj\linkapp/aos_config.h
cli_ASMFLAGS         := -include D:\aos_proj\linkapp/aos_config.h
littlevGL_ASMFLAGS         := -include D:\aos_proj\linkapp/aos_config.h
ota_ASMFLAGS         := -include D:\aos_proj\linkapp/aos_config.h
mcu_esp32_ASMFLAGS         := -include D:\aos_proj\linkapp/aos_config.h
kernel_init_ASMFLAGS         := -include D:\aos_proj\linkapp/aos_config.h
network_ASMFLAGS         := -include D:\aos_proj\linkapp/aos_config.h
libiot_infra_ASMFLAGS         := -include D:\aos_proj\linkapp/aos_config.h
libiot_wrappers_ASMFLAGS         := -include D:\aos_proj\linkapp/aos_config.h
libiot_mqtt_ASMFLAGS         := -include D:\aos_proj\linkapp/aos_config.h
libiot_coap_ASMFLAGS         := -include D:\aos_proj\linkapp/aos_config.h
kv_ASMFLAGS         := -include D:\aos_proj\linkapp/aos_config.h
osal_aos_ASMFLAGS         := -include D:\aos_proj\linkapp/aos_config.h
yloop_ASMFLAGS         := -include D:\aos_proj\linkapp/aos_config.h
mbedtls_ASMFLAGS         := -include D:\aos_proj\linkapp/aos_config.h
lwip_ASMFLAGS         := -include D:\aos_proj\linkapp/aos_config.h
rhino_ASMFLAGS         := -include D:\aos_proj\linkapp/aos_config.h
arch_xtensa_lx6_ASMFLAGS         := -include D:\aos_proj\linkapp/aos_config.h
ulog_ASMFLAGS         := -include D:\aos_proj\linkapp/aos_config.h
activation_ASMFLAGS         := -include D:\aos_proj\linkapp/aos_config.h
chip_code_ASMFLAGS         := -include D:\aos_proj\linkapp/aos_config.h
libiot_certs_ASMFLAGS         := -include D:\aos_proj\linkapp/aos_config.h
libiot_sign_ASMFLAGS         := -include D:\aos_proj\linkapp/aos_config.h
vfs_ASMFLAGS         := -include D:\aos_proj\linkapp/aos_config.h
lib_rbtree_ASMFLAGS         := -include D:\aos_proj\linkapp/aos_config.h
http_ASMFLAGS         := -include D:\aos_proj\linkapp/aos_config.h
linkapp_MAKEFILE         := D:/aos_proj/linkapp/aos.mk
board_esp32devkitc_MAKEFILE         := D:/aos_proj/linkapp/board/esp32devkitc/aos.mk
libiot_devmodel_MAKEFILE         := D:/smarthome/AliOS-Things/components/linkkit/dev_model/aos.mk
libiot_awss_MAKEFILE         := D:/smarthome/AliOS-Things/components/linkkit/wifi_provision/aos.mk
netmgr_MAKEFILE         := D:/smarthome/AliOS-Things/components/network/netmgr/aos.mk
cjson_MAKEFILE         := D:/smarthome/AliOS-Things/components/utility/cjson/aos.mk
und_MAKEFILE         := D:/smarthome/AliOS-Things/components/dm/und/aos.mk
cli_MAKEFILE         := D:/smarthome/AliOS-Things/core/cli/aos.mk
littlevGL_MAKEFILE         := D:/smarthome/AliOS-Things/components/gui/littlevGL/aos.mk
ota_MAKEFILE         := D:/smarthome/AliOS-Things/components/dm/ota/aos.mk
mcu_esp32_MAKEFILE         := D:/smarthome/AliOS-Things/platform/mcu/esp32/aos.mk
kernel_init_MAKEFILE         := D:/smarthome/AliOS-Things/core/init/aos.mk
network_MAKEFILE         := D:/smarthome/AliOS-Things/components/network/aos.mk
libiot_infra_MAKEFILE         := D:/smarthome/AliOS-Things/components/linkkit/infra/aos.mk
libiot_wrappers_MAKEFILE         := D:/smarthome/AliOS-Things/components/linkkit/wrappers/aos.mk
libiot_mqtt_MAKEFILE         := D:/smarthome/AliOS-Things/components/linkkit/mqtt/aos.mk
libiot_coap_MAKEFILE         := D:/smarthome/AliOS-Things/components/linkkit/iot_coap/aos.mk
kv_MAKEFILE         := D:/smarthome/AliOS-Things/core/kv/aos.mk
osal_aos_MAKEFILE         := D:/smarthome/AliOS-Things/core/osal/aos/aos.mk
yloop_MAKEFILE         := D:/smarthome/AliOS-Things/components/utility/yloop/aos.mk
mbedtls_MAKEFILE         := D:/smarthome/AliOS-Things/components/security/mbedtls/aos.mk
lwip_MAKEFILE         := D:/smarthome/AliOS-Things/components/network/lwip/aos.mk
rhino_MAKEFILE         := D:/smarthome/AliOS-Things/core/rhino/aos.mk
arch_xtensa_lx6_MAKEFILE         := D:/smarthome/AliOS-Things/platform/arch/xtensa/lx6/aos.mk
ulog_MAKEFILE         := D:/smarthome/AliOS-Things/components/dm/ulog/aos.mk
activation_MAKEFILE         := D:/smarthome/AliOS-Things/components/network/netmgr/activation/aos.mk
chip_code_MAKEFILE         := D:/smarthome/AliOS-Things/components/network/netmgr/activation/chip_code/aos.mk
libiot_certs_MAKEFILE         := D:/smarthome/AliOS-Things/components/linkkit/certs/aos.mk
libiot_sign_MAKEFILE         := D:/smarthome/AliOS-Things/components/linkkit/dev_sign/aos.mk
vfs_MAKEFILE         := D:/smarthome/AliOS-Things/core/vfs/aos.mk
lib_rbtree_MAKEFILE         := D:/smarthome/AliOS-Things/core/rbtree/aos.mk
http_MAKEFILE         := D:/smarthome/AliOS-Things/components/network/http/aos.mk
linkapp_PRE_BUILD_TARGETS:= 
board_esp32devkitc_PRE_BUILD_TARGETS:= 
libiot_devmodel_PRE_BUILD_TARGETS:= 
libiot_awss_PRE_BUILD_TARGETS:= 
netmgr_PRE_BUILD_TARGETS:= 
cjson_PRE_BUILD_TARGETS:= 
und_PRE_BUILD_TARGETS:= 
cli_PRE_BUILD_TARGETS:= 
littlevGL_PRE_BUILD_TARGETS:= 
ota_PRE_BUILD_TARGETS:= 
mcu_esp32_PRE_BUILD_TARGETS:= 
kernel_init_PRE_BUILD_TARGETS:= 
network_PRE_BUILD_TARGETS:= 
libiot_infra_PRE_BUILD_TARGETS:= 
libiot_wrappers_PRE_BUILD_TARGETS:= 
libiot_mqtt_PRE_BUILD_TARGETS:= 
libiot_coap_PRE_BUILD_TARGETS:= 
kv_PRE_BUILD_TARGETS:= 
osal_aos_PRE_BUILD_TARGETS:= 
yloop_PRE_BUILD_TARGETS:= 
mbedtls_PRE_BUILD_TARGETS:= 
lwip_PRE_BUILD_TARGETS:= 
rhino_PRE_BUILD_TARGETS:= 
arch_xtensa_lx6_PRE_BUILD_TARGETS:= 
ulog_PRE_BUILD_TARGETS:= 
activation_PRE_BUILD_TARGETS:= 
chip_code_PRE_BUILD_TARGETS:= 
libiot_certs_PRE_BUILD_TARGETS:= 
libiot_sign_PRE_BUILD_TARGETS:= 
vfs_PRE_BUILD_TARGETS:= 
lib_rbtree_PRE_BUILD_TARGETS:= 
http_PRE_BUILD_TARGETS:= 
linkapp_PREBUILT_LIBRARY := 
board_esp32devkitc_PREBUILT_LIBRARY := 
libiot_devmodel_PREBUILT_LIBRARY := 
libiot_awss_PREBUILT_LIBRARY := 
netmgr_PREBUILT_LIBRARY := 
cjson_PREBUILT_LIBRARY := 
und_PREBUILT_LIBRARY := 
cli_PREBUILT_LIBRARY := 
littlevGL_PREBUILT_LIBRARY := 
ota_PREBUILT_LIBRARY := D:/smarthome/AliOS-Things/components/dm/ota/lib/gcc/xtensa/ota_agent_esp32.a
mcu_esp32_PREBUILT_LIBRARY := D:/smarthome/AliOS-Things/platform/mcu/esp32/lib/libesp32.a D:/smarthome/AliOS-Things/platform/mcu/esp32/lib/libspi_flash.a D:/smarthome/AliOS-Things/platform/mcu/esp32/lib/libsoc.a D:/smarthome/AliOS-Things/platform/mcu/esp32/lib/libbootloader_support.a D:/smarthome/AliOS-Things/platform/mcu/esp32/lib/libhal.a D:/smarthome/AliOS-Things/platform/mcu/esp32/lib/libnewlib.a D:/smarthome/AliOS-Things/platform/mcu/esp32/lib/libvfs.a D:/smarthome/AliOS-Things/platform/mcu/esp32/lib/liblog.a D:/smarthome/AliOS-Things/platform/mcu/esp32/lib/libdriver.a D:/smarthome/AliOS-Things/platform/mcu/esp32/lib/libcontainer.a D:/smarthome/AliOS-Things/platform/mcu/esp32/lib/librtc.a D:/smarthome/AliOS-Things/platform/mcu/esp32/lib/libcoexist.a D:/smarthome/AliOS-Things/platform/mcu/esp32/lib/libcore.a D:/smarthome/AliOS-Things/platform/mcu/esp32/lib/libnet80211.a D:/smarthome/AliOS-Things/platform/mcu/esp32/lib/libpp.a D:/smarthome/AliOS-Things/platform/mcu/esp32/lib/libwpa.a D:/smarthome/AliOS-Things/platform/mcu/esp32/lib/libwpa2.a D:/smarthome/AliOS-Things/platform/mcu/esp32/lib/libwps.a D:/smarthome/AliOS-Things/platform/mcu/esp32/lib/libphy.a D:/smarthome/AliOS-Things/platform/mcu/esp32/lib/libnvs_flash.a D:/smarthome/AliOS-Things/platform/mcu/esp32/lib/libcxx.a D:/smarthome/AliOS-Things/platform/mcu/esp32/lib/libstdcc++-cache-workaround.a D:/smarthome/AliOS-Things/platform/mcu/esp32/lib/libwpa_supplicant.a D:/smarthome/AliOS-Things/platform/mcu/esp32/lib/libapp_update.a D:/smarthome/AliOS-Things/platform/mcu/esp32/lib/libmesh.a
kernel_init_PREBUILT_LIBRARY := 
network_PREBUILT_LIBRARY := 
libiot_infra_PREBUILT_LIBRARY := 
libiot_wrappers_PREBUILT_LIBRARY := 
libiot_mqtt_PREBUILT_LIBRARY := 
libiot_coap_PREBUILT_LIBRARY := 
kv_PREBUILT_LIBRARY := 
osal_aos_PREBUILT_LIBRARY := 
yloop_PREBUILT_LIBRARY := 
mbedtls_PREBUILT_LIBRARY := 
lwip_PREBUILT_LIBRARY := 
rhino_PREBUILT_LIBRARY := 
arch_xtensa_lx6_PREBUILT_LIBRARY := 
ulog_PREBUILT_LIBRARY := 
activation_PREBUILT_LIBRARY := 
chip_code_PREBUILT_LIBRARY := 
libiot_certs_PREBUILT_LIBRARY := 
libiot_sign_PREBUILT_LIBRARY := 
vfs_PREBUILT_LIBRARY := 
lib_rbtree_PREBUILT_LIBRARY := 
http_PREBUILT_LIBRARY := 
linkapp_MBINS_TYPE             := app
board_esp32devkitc_MBINS_TYPE             := kernel
libiot_devmodel_MBINS_TYPE             := kernel
libiot_awss_MBINS_TYPE             := kernel
netmgr_MBINS_TYPE             := kernel
cjson_MBINS_TYPE             := share
und_MBINS_TYPE             := kernel
cli_MBINS_TYPE             := kernel
littlevGL_MBINS_TYPE             := framework
ota_MBINS_TYPE             := kernel
mcu_esp32_MBINS_TYPE             := kernel
kernel_init_MBINS_TYPE             := kernel
network_MBINS_TYPE             := kernel
libiot_infra_MBINS_TYPE             := kernel
libiot_wrappers_MBINS_TYPE             := kernel
libiot_mqtt_MBINS_TYPE             := kernel
libiot_coap_MBINS_TYPE             := kernel
kv_MBINS_TYPE             := kernel
osal_aos_MBINS_TYPE             := kernel
yloop_MBINS_TYPE             := kernel
mbedtls_MBINS_TYPE             := kernel
lwip_MBINS_TYPE             := kernel
rhino_MBINS_TYPE             := kernel
arch_xtensa_lx6_MBINS_TYPE             := kernel
ulog_MBINS_TYPE             := kernel
activation_MBINS_TYPE             := share
chip_code_MBINS_TYPE             := kernel
libiot_certs_MBINS_TYPE             := kernel
libiot_sign_MBINS_TYPE             := kernel
vfs_MBINS_TYPE             := kernel
lib_rbtree_MBINS_TYPE             := kernel
http_MBINS_TYPE             := kernel
linkapp_LIBSUFFIX             := 
board_esp32devkitc_LIBSUFFIX             := 
libiot_devmodel_LIBSUFFIX             := 
libiot_awss_LIBSUFFIX             := 
netmgr_LIBSUFFIX             := 
cjson_LIBSUFFIX             := 
und_LIBSUFFIX             := 
cli_LIBSUFFIX             := 
littlevGL_LIBSUFFIX             := 
ota_LIBSUFFIX             := 
mcu_esp32_LIBSUFFIX             := 
kernel_init_LIBSUFFIX             := 
network_LIBSUFFIX             := 
libiot_infra_LIBSUFFIX             := 
libiot_wrappers_LIBSUFFIX             := 
libiot_mqtt_LIBSUFFIX             := 
libiot_coap_LIBSUFFIX             := 
kv_LIBSUFFIX             := 
osal_aos_LIBSUFFIX             := 
yloop_LIBSUFFIX             := 
mbedtls_LIBSUFFIX             := 
lwip_LIBSUFFIX             := 
rhino_LIBSUFFIX             := 
arch_xtensa_lx6_LIBSUFFIX             := 
ulog_LIBSUFFIX             := 
activation_LIBSUFFIX             := 
chip_code_LIBSUFFIX             := 
libiot_certs_LIBSUFFIX             := 
libiot_sign_LIBSUFFIX             := 
vfs_LIBSUFFIX             := 
lib_rbtree_LIBSUFFIX             := 
http_LIBSUFFIX             := 
linkapp_POPULATE_INCLUDES      := 
board_esp32devkitc_POPULATE_INCLUDES      := 
libiot_devmodel_POPULATE_INCLUDES      := 
libiot_awss_POPULATE_INCLUDES      := 
netmgr_POPULATE_INCLUDES      := 
cjson_POPULATE_INCLUDES      := 
und_POPULATE_INCLUDES      := 
cli_POPULATE_INCLUDES      := 
littlevGL_POPULATE_INCLUDES      := 
ota_POPULATE_INCLUDES      := 
mcu_esp32_POPULATE_INCLUDES      := 
kernel_init_POPULATE_INCLUDES      := 
network_POPULATE_INCLUDES      := 
libiot_infra_POPULATE_INCLUDES      := 
libiot_wrappers_POPULATE_INCLUDES      := 
libiot_mqtt_POPULATE_INCLUDES      := 
libiot_coap_POPULATE_INCLUDES      := 
kv_POPULATE_INCLUDES      := 
osal_aos_POPULATE_INCLUDES      := 
yloop_POPULATE_INCLUDES      := 
mbedtls_POPULATE_INCLUDES      := 
lwip_POPULATE_INCLUDES      := 
rhino_POPULATE_INCLUDES      := 
arch_xtensa_lx6_POPULATE_INCLUDES      := 
ulog_POPULATE_INCLUDES      := 
activation_POPULATE_INCLUDES      := 
chip_code_POPULATE_INCLUDES      := 
libiot_certs_POPULATE_INCLUDES      := 
libiot_sign_POPULATE_INCLUDES      := 
vfs_POPULATE_INCLUDES      := 
lib_rbtree_POPULATE_INCLUDES      := 
http_POPULATE_INCLUDES      := 
OBJ-y := arch_xtensa_lx6 cli esp32devkitc http kernel_init kv lib_rbtree littlevGL lwip mbedtls mcu_esp32 netmgr network osal_aos ota rhino ulog vfs yloop
AOS_SDK_UNIT_TEST_SOURCES   		:=                                                                
INTERNAL_MEMORY_RESOURCES 		:= 
EXTRA_TARGET_MAKEFILES 			:=    D:/smarthome/AliOS-Things/platform/mcu/esp32//gen_image_bin.mk
APPS_START_SECTOR 				:=  
BOOTLOADER_FIRMWARE				:=  
ATE_FIRMWARE				        :=  
APPLICATION_FIRMWARE				:=  
PARAMETER_1_IMAGE					:=  
PARAMETER_2_IMAGE					:=  
FILESYSTEM_IMAGE					:=  
WIFI_FIRMWARE						:=  
BT_PATCH_FIRMWARE					:=  
AOS_ROM_SYMBOL_LIST_FILE 		:= 
AOS_SDK_CHIP_SPECIFIC_SCRIPT		:=                                
AOS_SDK_CONVERTER_OUTPUT_FILE	:=                                
AOS_SDK_FINAL_OUTPUT_FILE 		:=                                
AOS_RAM_STUB_LIST_FILE 			:= 
PING_PONG_OTA 					:= 
AOS_CPLUSPLUS_FLAGS:=                                
KEIL_DEVICE :=                                
KEIL_VENDOR :=                                
IAR_OGCMENU :=                                
CONFIG_SYSINFO_DEVICE_NAME 					:= ESP32
