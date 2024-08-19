#ifndef _INET_ADDRESS_H_
#define _INET_ADDRESS_H_

#include <netinet/in.h>     // include struct sockaddr_in
#include <string>

namespace zr
{

// this class encapsulates the IPv4 address type
class InetAddress
{
public:
    // construct an endpoint with given ip and port
    InetAddress(std::string ip, uint16_t port);
        /// @c ip should be "1.2.3.4" format
        // 没有加 explicit 修饰是因为想允许别的字符串类型传进来构造 string

    // construct an endpoint with given struct sockaddr_in
    explicit InetAddress(const struct sockaddr_in &addr)
        : addr_(addr)
    {
    }

    std::string toIp() const;
    std::string toIpPort() const;
    uint16_t port() const;

    const struct sockaddr_in* getSockAddr() const { return &addr_; }
        // 使用 const 修饰返回值，作用是防止外界通过该返回值修改其指向的结构体的成员
        /// 也就是对 @c addr_ 起到保护作用，对外界是只读的
private:
    struct sockaddr_in addr_;
};



} // namespace zr

#endif // _INET_ADDRESS_H