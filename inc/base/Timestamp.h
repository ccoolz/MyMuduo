#ifndef _TIMESTAMP_H_
#define _TIMESTAMP_H_

#include "noncopyable.h"

#include <iostream>
#include <string>

namespace zr
{

class Timestamp
{
public:
    // construct an invaild Timestamp
    Timestamp()
        : microSecondsSinceEpoch_(0)    
    {
    }

    // construct a Timestamp at specific time
    explicit Timestamp(int64_t microSecondsSinceEpochArg)
        : microSecondsSinceEpoch_(microSecondsSinceEpochArg)
    {
    }   
        // "explicit" prevent implicit conversions

    // return a timestamp of Type string
    std::string toString() const;
        // const 修饰的成员函数会限制对所属类成员变量的修改（函数中声明的局部变量不会作限制）

    static Timestamp now();
        // static 修饰的成员函数属于类而不属于任何对象，可通过类::直接调用
private:
    int64_t microSecondsSinceEpoch_;
};

} // namespace zr

#endif // _TIMESTAMP_H_