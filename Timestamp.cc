#include "Timestamp.h"

#include <time.h>

using namespace zr;

std::string Timestamp::toString() const
{
    // 获取 tm 结构体
    tm *tm_time = localtime(&microSecondsSinceEpoch_);
    // 构造格式化时间
    char buf[64] = {0};
    snprintf(buf, sizeof(buf), "%4d/%02d/%02d %02d:%02d:%02d",
            tm_time->tm_year + 1900, tm_time->tm_mon + 1, tm_time->tm_mday,
            tm_time->tm_hour, tm_time->tm_min, tm_time->tm_sec);
    return buf;
}

Timestamp Timestamp::now()
{
    int64_t ti = (int64_t)time(NULL); // time_t 是 long，一些平台上 long 是 32 位，确保 explicit 安全这里做一下转换
    return Timestamp(ti);
}
