//================This is split line================
// KEYWORD: COMPONENT NAME IS  ota

// #if AOS_CREATE_PROJECT

// description:OTA Features
// #define AOS_COMP_OTA 1 // type: bool

// #endif

// #if !AOS_CREATE_PROJECT

// description:OTA Features
// #define AOS_COMP_OTA 0 // type: bool

// #endif

// description:Download Config
// #define OTA_CONFIG_DOWNLOAD 0 // type: bool

// #if OTA_CONFIG_DOWNLOAD

// description:Secure Download Mode
// #define OTA_CONFIG_SECURE_DL_MODE 0 // type: bool

// description:Download Retry Count
// #define OTA_DOWNLOAD_RETRY_CNT 5 // type: int

// description:Download Timeout(ms)
// #define OTA_DOWNLOAD_TIMEOUT 20000 // type: int

// description:Download Block Size(bytes)
// #define OTA_DOWNLOAD_BLOCK_SIZE 512 // type: int

// #endif

// description:RSA Verify Support
// #define OTA_CONFIG_RSA 0 // type: bool

// #if OTA_CONFIG_RSA

// description:cloud sign
// #define OTA_CONFIG_CLOUD_RSA 0 // type: bool

// description:local sign
// #define OTA_CONFIG_LOCAL_RSA 0 // type: bool

// #endif

// description:write flash cache size(bytes)
// #define OTA_FLASH_WRITE_CACHE_SIZE 1024 // type: int

// description:MCU OTA Config
// #define OTA_CONFIG_MCU_OTA 0 // type: bool

// #if OTA_CONFIG_MCU_OTA

// description:Ymodem upgrade Support
// #define OTA_CONFIG_MCU_YMODEM 1 // type: bool

// description:CAN Master upgrade Support
// #define OTA_CONFIG_MCU_CAN 0 // type: bool

// #endif

// description:BLE upgrade Support
// #define OTA_CONFIG_BLE 0 // type: bool

// description:OTA via uAgent
// #define OTA_CONFIG_UAGENT 0 // type: bool

