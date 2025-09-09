#ifndef OS_PROJECT_BASE_TCB_HPP
#define OS_PROJECT_BASE_TCB_HPP

#include "../lib/hw.h"
#include "scheduler.hpp"

static int threadCounter = 0;

class TCB{
public:
    ~TCB() {
        delete[] stack;
    }

    bool isFinished() const {
        return finished;
    }
    bool isBlocked() const {
        return blocked;
    }

    void setFinished(bool finished) {
        TCB::finished = finished;
    }

    void setBlocked(bool blocked) {
        TCB::blocked = blocked;
    }

    uint64 getTimeSlice() const {
        return timeSlice;
    }

    bool isSleepy() const {
        return this->sleep;
    }
    void setSleepy(bool sleepy) {
        this->sleep = sleepy;
    }

    int getThreadId() {
        return this->threadId;
    }


    using Body = void(*)(void*);
    using newBody = void(*)();
    static TCB *createThread(Body body, void* arg);
    static TCB *createThread(newBody nb);
    static TCB *createKernelThread(newBody body);


    static void yield();
    static TCB* running;
    bool isSupervisor = false;
    static void dispatch();


private:
    Body bodyPointer;
    void* argPointer;

    explicit TCB(bool isSupervisor, Body body, void* arg, uint64 timeSlice) :
            isSupervisor(isSupervisor),
            body(body),
            arg(arg),
            timeSlice(timeSlice),
            stack(body != nullptr ? new uint64[STACK_SIZE] : nullptr),
            context({ (uint64) &threadWrapper,
                 stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0}),
            finished(false),
            blocked(false),
            sleep(false)
        {
            threadId = threadCounter++;
            if(body != nullptr)
                Scheduler::put(this);
        }
    explicit TCB(bool isSupervisor, newBody nb, uint64 timeSlice) :
            isSupervisor(isSupervisor),
            nb(nb),
            timeSlice(timeSlice),
            stack(nb != nullptr ? new uint64[STACK_SIZE] : nullptr),
            context({ (uint64) &threadWrapper,
                  stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0}),
            finished(false),
            blocked(false),
            sleep(false)
        {
            body = nullptr;
            threadId = threadCounter++;
            if(nb != nullptr)
                Scheduler::put(this);
        }
    struct Context{
        uint64 ra; //program counter return address (after yield)
        uint64 sp; //stack pointer
    };

    Body body;
    newBody nb;
    void* arg;

    uint64 timeSlice; //broj perioda dodeljen niti
    uint64 *stack;
    Context context;

    bool finished;
    bool blocked;
    bool sleep;

    int threadId;

    friend class Riscv;

    static void threadWrapper();

    static uint64 timeSliceCounter;

    static void contextSwitch(Context *oldContext, Context *runningContext); //implementirano u contextSwitch.S

    static uint64 constexpr STACK_SIZE = DEFAULT_STACK_SIZE;
    static uint64 constexpr TIME_SLICE = DEFAULT_TIME_SLICE;

    friend class sem;

};



#endif