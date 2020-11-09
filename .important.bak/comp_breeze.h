//================This is split line================
// KEYWORD: COMPONENT NAME IS  breeze

// #if AOS_CREATE_PROJECT

// description:BLE breeze SDK
// #define AOS_COMP_BREEZE 1 // type: bool

// #endif

// #if !AOS_CREATE_PROJECT

// description:BLE breeze SDK
// #define AOS_COMP_BREEZE 0 // type: bool

// #endif

// description:Enable secure and sequential advertising.
// #define CONFIG_AIS_SECURE_ADV 0 // type: bool

// description:Enable auth per product, otherwise auth for per device.
// #define CONFIG_MODEL_SECURITY 0 // type: bool

// description:Enable AWSS, providing secured ble link for wifi provision.
// #define EN_COMBO_NET 0 // type: bool

// description:Enable authentication.
// #define EN_AUTH 1 // type: bool

// #if EN_AUTH

// description:Authentication offline, otherwise online
// #define EN_AUTH_OFFLINE 0 // type: bool

// description:Authentation Timeout, ms
// #define BZ_AUTH_TIMEOUT 10000 // type: int

// #endif

// description:Transportion Timeout, ms
// #define BZ_TRANSPORT_TIMEOUT 10000 // type: int

// description:CAN NOT BE MODIFIED
// #define BZ_VERSION "2.0.5" // type: string

// description:Extend MTU from default 20 bytes to long MTU.
// #define EN_LONG_MTU 0 // type: bool

// description:CAN NOT BE MODIFIED
// #define GATT_MTU_SIZE_DEFAULT 23 // type: int

// description:CAN NOT BE MODIFIED
// #define BZ_MTU_SIZE_DEFAULT 20 // type: int

// description:CAN NOT BE MODIFIED
// #define ENCRYPT_DATA_SIZE 16 // type: int

// description:CAN NOT BE MODIFIED
// #define BZ_MTU_SIZE_LIMIT 128 // type: int

// description:CAN NOT BE MODIFIED
// #define GATT_MTU_SIZE_LIMIT 135 // type: int

// description:CAN NOT BE MODIFIED
// #define BZ_MAX_PAYLOAD_SIZE 256 // type: int

// description:CAN NOT BE MODIFIED
// #define BZ_TRANSPORT_VER 0 // type: int

// description:CAN NOT BE MODIFIED
// #define BZ_BLUETOOTH_VER 1 // type: int

// description:CAN NOT BE MODIFIED
// #define BZ_MAX_SUPPORTED_MTU 247 // type: int

// description:Enable default built-in HALs:blestack, AliOS Things and crypto.
// #define CONFIG_COMP_BZ_BUILTIN_HAL 1 // type: bool

