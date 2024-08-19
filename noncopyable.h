#ifndef _NONCOPYABLE_H_
#define _NONCOPYABLE_H_

namespace zr
{

class noncopyable
{
public:
    noncopyable(const noncopyable&) = delete;
    void operator=(const noncopyable&) = delete;
        // 正常返回值应该为类本身的引用(noncopyable&)，但是我们不需要该函数的功能，而返回值不影响该函数的调用方式，只有参数影响，所以无所谓返回值
protected:
    noncopyable() = default;
    ~noncopyable() = default;
};

} // namespace: zr

#endif // _NONCOPYABLE_H_





/*  私有继承变成员在派生类中变私有，不会影响派生类构造吗？

        私有继承后，基类的公有成员和保护成员在派生类中变成私有成员。
        但基类的构造函数和析构函数在派生类中的访问权限不受继承方式的影响。
        因此继承该类的派生类仍然可以正常地构造
*/

/*  为什么需要 noncopyable ?

        首先是私有继承该类的，因为不需要公共继承来使外界能访问 noncopyable 方法

        noncopyable 的作用就是让每个继承该类的类都禁止本类的拷贝构造和赋值构造
        实现这一点的原理其实就是派生类的构造需要先进行基类的构造，而 noncopyable 类的拷贝和赋值构造都 delete 了
        所以派生类自然也就无法进行拷贝和赋值构造

        为什么不直接在需要禁用拷贝和赋值构造的类里 delete 这两种构造？
        因为如果很多类需要禁用这两种构造，那么每个类都写一遍太丑陋了（太臃肿了），通过继承该类在代码结构上是相当优美的
*/