#ifndef _CHANNEL_H_
#define _CHANNEL_H_

#include "noncopyable.h"
#include "Timestamp.h"

#include <functional>
#include <memory>

namespace zr
{

// 为什么用到 EventLoop 类，却不包含该类定义所在头文件，而只做前置声明?
  // 本库提供出去供人使用，头文件是一定会展示的，暴露的文件越少越好，很好的面向对象的编程规范
  // 只作前置声明，在源文件 Channel.cc 中再包含其定义所在的源文件即可
  // EventLoop 可以是因为只用到 EventLoop 指针，也就是编译器可以确定其大小是 4 或 8 字节
  // 而 Timestamp 必须包含头文件，因为用的是类对象实体而非指针，这里就需要确定其大小
class EventLoop;

/*
    Channel : 抽象的一个通道，理解为 epoll 中的一条数据通路（epoll 是多路复用的）
    封装了一个 socketfd 和其感兴趣的事件（连接或数据读写），如 EPOLLIN、EPOLLOUT
    还绑定了 Poller 返回的具体事件
*/
class Channel : noncopyable
{
public:
  using EventCallback = std::function<void ()>;
  using ReadEventCallback = std::function<void (Timestamp)>;

  Channel(EventLoop *loop, int fd);  // Eventloop == epoll, fd == channel on epoll
  ~Channel();

  // fd 得到 Poller 通知自己发生了感兴趣事件以后，处理事件 -- 调用事件类型对应 callback
  void handleEvent(Timestamp recieveTime);

  // 设置回调函数对象
    // why use std::move? -- 这些 cb 都是 function 对象，对象我们就假设其很大，创建和销毁要消耗资源
    // 使用 move 做资源转移就无需再创建，复制对象，提升性能（尽管 function 也许并不大）
  void setReadCallback(ReadEventCallback cb) { readCallback_ = std::move(cb); }
  void setWriteCallback(EventCallback cb) { writeCallback_ = std::move(cb); }
  void setCloseCallback(EventCallback cb) { closeCallback_ = std::move(cb); }
  void setErrorCallback(EventCallback cb) { errorCallback_ = std::move(cb); }

  // 用 weak_ptr 监听 shared_ptr，防止 channel 被 remove 掉后还在做事件的回调操作
  void tie(const std::shared_ptr<void>&);

  int fd() const { return fd_; }            // 获取监听的 fd
  int events() const { return events_; }    // 获取 fd 感兴趣的事件
  // 对外(Poller)的接口，Poller监听到发生的事件，传递给 channel 处理
  int set_revents(int revts) { revents_ = revts; }

  // 设置 fd 相应的事件状态
    // 不是 Channel 说 fd 是什么事件状态就是什么事件状态，监听的事是 epoll 做的
    // 比如使能读，update() 就会用 epoll_ctl ADD 给 fd 注册读事件，反之 DELETE 读事件
    // 若 delete 了写缓冲区之后，有数据开始发送到本机，OS不会将该数据发送到本 fd 的写缓冲区，节省系统开销
  void enableReading() { events_ |= kReadEvent; update(); }     // events 的 read 那一位置 1，不影响其他位
  void disableReading() { events_ &= ~kReadEvent; update(); }    // events 的 read 那一位置 0，不影响其他位
  void enableWriting() { events_ != kWriteEvent; update(); }
  void disableWriting() { events_ &= ~kWriteEvent; update(); }
  void disableAll() { events_ = kNonEvent; }
  
  // 返回 fd 相应的事件状态
    // kReadEvent 和 kWriteEvent 会设置为二进制数值为1的位不交叉的数据
    // 如 kReadEvent = 0001(1) ; kWriteEvent = 0010(2)，保证下面几个函数的执行逻辑
    // 即自己等于标志位或自己包含标志位，如 0011，表示既关注读事件也关注写事件
  bool isNonEvent() const { return events_ == kNonEvent; };
  bool isReading() const { return events_ & kReadEvent; };
  bool isWriting() const { return events_ & kWriteEvent;}

  int index() const { return index_; }
  void set_index(int idx) { index_ = idx; }

private:
  // 表示当前 fd 的状态: 1、不对事件感兴趣；2、对写事件感兴趣；3、对读事件感兴趣
  static const int kNonEvent;
  static const int kReadEvent;
  static const int kWriteEvent;

  EventLoop *loop_;     // 事件循环 -- epoll
  const int fd_;        // Poller 监听的对象
  int events_;          // fd 感兴趣的事件
  int revents_;          // Poller 返回的接收到的具体事件
  int index_;

  // tie: 绑定 绑的是自己(Channel) 用于多线程中查看当前对象的生存状态 防止手动 remove 对象后还访问该资源
  std::weak_ptr<void> tie_;
  bool tied_;

  // 因为 Channel 类能获知 fd 上具体发生的事件 revents_，所以它负责具体事件的回调，即对事件做相应处理
  ReadEventCallback readCallback_;
  EventCallback writeCallback_;
  EventCallback closeCallback_;
  EventCallback errorCallback_;
};

} // namespace zr

#endif // _CHANNEL_H_