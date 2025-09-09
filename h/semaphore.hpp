#ifndef OS_PROJECT_BASE_SEMAPHORE_HPP
#define OS_PROJECT_BASE_SEMAPHORE_HPP

#include "syscall_c.hpp"
#include "list.hpp"
#include "TCB.hpp"
#include "../lib/mem.h"

class sem {
public:
    explicit sem(unsigned init = 1) : value(init), closed(false), counter(0){myHandle = this;}
    ~sem();

    int wait();
    int signal(bool miki = true);
    int timedWait(time_t);
    int tryWait();
    int close();



protected:
    void block();
    void unblock();
private:
    sem_t myHandle;
    int volatile value;
    bool closed;
    unsigned counter;
    List<TCB> blocked;
};


#endif