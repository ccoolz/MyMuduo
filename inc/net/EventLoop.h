#ifndef _EVENT_LOOP_H_
#define _EVENT_LOOP_H_

#include "noncopyable.h"

namespace zr
{

/// include two main module: @c Poller (epoll abstarction) & @c Channel (an epoll has lot channels)
class EventLoop : noncopyable
{
public:

private:
};

} // namespace zr

#endif // _EVENT_LOOP_H