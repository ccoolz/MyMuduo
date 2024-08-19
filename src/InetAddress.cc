#include "InetAddress.h"

#include <strings.h>        // include bzero()
#include <arpa/inet.h>      // include inet_addr()

using namespace zr;

// ----------------- function -----------------

InetAddress::InetAddress(std::string ip, uint16_t port)
{
    bzero(&addr_, sizeof addr_);       // 指向的内存清零
    addr_.sin_family = AF_INET;         
    addr_.sin_addr.s_addr = inet_addr(ip.c_str());
    addr_.sin_port = htons(port);
}

    /// @c AF_INET AF : Address Family ,AF_INET : IPv4
    /// @c inet_addr() 将点分十进制字符串(如 "1.2.3.4") 转 网络字节序的 uint32_t
    /// @c htons host to net short，uint16_t 类型数据的本地字节序转网络字节序
    // 网络字节序是大端，也就是顺序的，优点是可读性好
    // 本地字节序具体看硬件平台，有的是小端，优点是有些硬件在有些场景处理小端会更快，比如处理数组        
// ----------------- function -----------------

// ----------------- function -----------------

// return a dotted decimal string like "1.2.3.4"
std::string InetAddress::toIp() const
{
    char buf[32] = {0};
    inet_ntop(AF_INET, &addr_.sin_addr, buf, sizeof buf);
    return buf;
}

    // const char *inet_ntop(int __af, 
        // const void *__restrict__ __cp, 
        // char *__restrict__ __buf, 
        // socklen_t __len);    -- 函数原型
    /// @c __cp 一个包含 int32_t 类型网络字节序 ip 地址的缓冲区
    /// @c ntop p : presentation 表现形式，也就是转化为利于用户理解的表现形式
// ----------------- function -----------------

std::string InetAddress::toIpPort() const
{
    // ip
    char ipBuf[32] = {0};
    inet_ntop(AF_INET, &addr_.sin_addr, ipBuf, sizeof ipBuf);
    // ip + port
    uint16_t port = ntohs(addr_.sin_port);
    char ipPortBuf[64] = {0};
    snprintf(ipPortBuf, sizeof ipPortBuf, "%s:%u", ipBuf, port); 
        /// @c %u : 传入无符号整数
    return ipPortBuf;
}

uint16_t InetAddress::port() const
{
    return ntohs(addr_.sin_port);
}


// ----------------- test -----------------
// #include <iostream>
// int main()
// {
//     InetAddress inetAddress("127.0.0.1", 8080);
//     std::cout << inetAddress.toIpPort() << std::endl;
//     std::cout << inetAddress.toIp() << std::endl;
//     std::cout << inetAddress.port() << std::endl;
//     return 0;
// }
// ----------------- test -----------------
