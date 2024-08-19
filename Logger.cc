#include "Logger.h"
#include "Timestamp.h"

#include <iostream>

using namespace zr;

Logger &Logger::instance()
{
    static Logger logger;
    return logger;
}

void Logger::setLogLevel(LOG_LEVEL level)
{
    logLevel_ = level;
}

// 写日志
// format : "[level] time : msg"
void Logger::log(std::string msg)
{
    // 打印日志级别
    switch (logLevel_)          
    {
    case LOG_LEVEL::INFO:
        std::cout << "[INFO]";
        break;
    case LOG_LEVEL::DEBUG:
        std::cout << "[DEBUG]";
        break;
    case LOG_LEVEL::ERROR:
        std::cout << "[ERROR]";
        break;
    case LOG_LEVEL::FATAL:
        std::cout << "[FATAL]";
        break;
    }
    // 打印时间和 msg
    std::cout << Timestamp::Timestamp::now().toString() << " : " << msg << std::endl;
}
