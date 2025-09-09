#ifndef OS_PROJECT_BASE_BUFFER_HPP
#define OS_PROJECT_BASE_BUFFER_HPP

#include "syscall_c.hpp"
#include "semaphore.hpp"

//buffer the vampire slayer


class Buffy {
private:
    int cap;
    int *buffer;
    int head, tail;

    sem_t spaceAvailable;
    sem_t itemAvailable;
    sem_t mutexHead;
    sem_t mutexTail;

public:
    Buffy(int _cap);
    ~Buffy();

    void put(int val);
    int get();

    int getCnt();

};














#endif