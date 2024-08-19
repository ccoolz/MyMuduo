#ifndef _LOGGER_H_
#define _LOGGER_H_

#include "noncopyable.h"

#include <string>

namespace zr
{

// ---------------- log level ----------------
enum class LOG_LEVEL
{
    INFO,           // 流程信息
    DEBUG,          // 调试信息
    ERROR,          // 错误信息（不影响程序运行）
    FATAL           // 错误信息（core dump 级别）
};
// ---------------- log level ----------------

// ---------------- log class ----------------
class Logger : noncopyable
{
public:
    static Logger& instance();
    void setLogLevel(LOG_LEVEL level);
    void log(std::string msg);      // 写日志
private:
    Logger() = default;

    LOG_LEVEL logLevel_;             // _放后面，既能区分普通变量和成员变量，也能避开系统变量（很多系统变量以_开头）
};
// ---------------- log class ----------------

// ---------------- log Macro for user to use class Logger ----------------
/*
    Logger 日志类定义完善了，但是如果让用户自己进行 【获取类示例 - 设置日志级别 - 打印日志】 的操作，过于繁琐
    用户只关心打印不同级别的用户信息
    所以我们定义了如下的宏，自动化上述过程的同时，提供了打印不同日志级别的日志的方法
    对于日志这种需要频繁调用的方法，使用宏而不是函数，可以直接展开代码，防止频繁调用函数的性能开销
    同时，也可以更方便的处理可变数量和类型的参数

    在使用宏定义多行代码的时候，为了防止意想不到的错误(比如在条件语句中使用该宏时)，一般都会选取 do-while(0) 的结构
    定义多行代码，每一行最后需要加 \，且 \ 后面不能有空格

    我们想要用户使用该宏的格式:  LOG_INFO("%s %d ...", arg1, arg2 ...)
    也就是用户可以使用格式化字符串进行输入
    那么就需要使用可变参数 ... ，用户传入的第一个参数是一个格式化字符串，这里我们把这个变量命名为 logmsgFormat
    后面的参数可以任意传，只要和 logmsgFormat 的格式匹配即可，##__VA_ARGS__ 是标准库定义的宏
    用于宏定义中处理可变参数，可以直接获取 ... 参数（宏中不能直接使用 ... 代替可变参数）
*/
#define LOG_INFO(logmsgFormat, ...) \
    do \
    { \
        Logger &logger = Logger::instance(); \
        logger.setLogLevel(LOG_LEVEL::INFO); \
        char buf[1024] = {0}; \
        snprintf(buf, 1024, logmsgFormat, ##__VA_ARGS__); \
        logger.log(buf); \
    } while (0)

// 调试信息一般较多，影响正常信息的查看，而且作为 IO 操作会增加软件运行的负担
// 因此运行时一般不打印调试信息，我们用宏控制其输出与否
#ifdef ALLOW_LOG_DEBUG
    #define LOG_DEBUG(logmsgFormat, ...) \
        do \
        { \
            Logger &logger = Logger::instance(); \
            logger.setLogLevel(LOG_LEVEL::DEBUG); \
            char buf[1024] = {0}; \
            snprintf(buf, 1024, logmsgFormat, ##__VA_ARGS__); \
            logger.log(buf); \
        } while (0)
#else
    #define LOG_DEBUG(logmsgFormat, ...)
#endif

#define LOG_ERROR(logmsgFormat, ...) \
    do \
    { \
        Logger &logger = Logger::instance(); \
        logger.setLogLevel(LOG_LEVEL::ERROR); \
        char buf[1024] = {0}; \
        snprintf(buf, 1024, logmsgFormat, ##__VA_ARGS__); \
        logger.log(buf); \
    } while (0)

#define LOG_FATAL(logmsgFormat, ...) \
    do \
    { \
        Logger &logger = Logger::instance(); \
        logger.setLogLevel(LOG_LEVEL::FATAL); \
        char buf[1024] = {0}; \
        snprintf(buf, 1024, logmsgFormat, ##__VA_ARGS__); \
        logger.log(buf); \
    } while (0)
// ---------------- log Macro for user to use class Logger ----------------

} // namespace zr

#endif // _LOGGER_H_