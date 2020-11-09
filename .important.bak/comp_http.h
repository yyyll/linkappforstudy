//================This is split line================
// KEYWORD: COMPONENT NAME IS  http

// #if AOS_CREATE_PROJECT

// description:CAN NOT BE MODIFIED
// #define AOS_COMP_HTTP 1 // type: bool

// #endif

// #if !AOS_CREATE_PROJECT

// description:http
// #define AOS_COMP_HTTP 0 // type: bool

// #endif

// description:New API
// #define CONFIG_NEW_HTTP_API 0 // type: bool

// description:Support HTTP Secure
// #define CONFIG_HTTP_SECURE 0 // type: bool

// #if CONFIG_HTTP_SECURE

// description:HTTPS over MbedTLS
// #define CONFIG_HTTP_SECURE_TLS 0 // type: bool

// description:HTTPS over iTLS
// #define CONFIG_HTTP_SECURE_ITLS 0 // type: bool

// #endif

// description:The maximum http session, depends on !CONFIG_NEW_HTTP_API
// #define CONFIG_HTTPC_SESSION_NUM 1 // type: int

// description:The size of server name, depends on !CONFIG_NEW_HTTP_API
// #define CONFIG_HTTPC_SERVER_NAME_SIZE 64 // type: int

// description:HTTP client user agent, depends on !CONFIG_NEW_HTTP_API
// #define CONFIG_HTTPC_DEFAULT_CLIENT "AliOS-HTTP-Client/2.1" // type: string

// description:http status size, depends on !CONFIG_NEW_HTTP_API
// #define CONFIG_HTTP_STATUS_SIZE 32 // type: int

// description:Enable mutex, depends on !CONFIG_NEW_HTTP_API
// #define CONFIG_HTTP_ENABLE_MUTEX 1 // type: bool

// description:Enable debug, depends on !CONFIG_NEW_HTTP_API
// #define CONFIG_HTTP_DEBUG 0 // type: bool

