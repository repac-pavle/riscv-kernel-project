#ifndef OS_PROJECT_BASE_SCHEDULER_HPP
#define OS_PROJECT_BASE_SCHEDULER_HPP

#include "list.hpp"


class TCB;


class Scheduler {
private:
    static List<TCB> readyCoroutineQueue;
    struct sleepData {
        TCB* tcb;
        int sleepTime;
        sleepData(TCB* tcb, int sleepTime) : tcb(tcb), sleepTime(sleepTime) {}
    };

    static List<sleepData> sleepingThreads;

public:

    static TCB *get();
    static void put(TCB *tcb);
    static void putToSleep(TCB* thread, int sleepTime);
    static void handleWaking();
    static void printAllThreads();
    static void printAllSleepyThreads();

};




#endif