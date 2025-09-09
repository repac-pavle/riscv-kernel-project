#ifndef OS_PROJECT_BASE_SYSCALL_CPP
#define OS_PROJECT_BASE_SYSCALL_CPP

#include "../h/TCB.hpp"
#include "../h/semaphore.hpp"
#include "syscall_c.hpp"

class Semaphore {
public:
    Semaphore (unsigned init = 1);
    virtual ~Semaphore ();
    int wait ();
    int signal ();
    int timedWait (time_t);
    int tryWait();
private:
    sem_t myHandle;
};



void* operator new (size_t t);
void operator delete (void* p) noexcept;
class Thread {
public:
    Thread (void (*body)(void*), void* arg);
    virtual ~Thread ();
    int start ();
    static void dispatch ();
    static int sleep (time_t);
    static void SetMaximumThreads(int num_of_threads = 5);
    static Semaphore *maxThreadsSemaphore;
    static void finished();
protected:
    Thread ();
    virtual void run () {}
private:

    thread_t myHandle;
    void (*body)(void*);
    void* arg;
    static void wrapper(void* thread) {
        if (thread) {
            ((Thread*)thread)->run();
        }
    }
};

class PeriodicThread : public Thread {
public:
    void terminate ();
protected:
    PeriodicThread (time_t period);
    virtual void periodicActivation () {}
private:
    time_t period;
};
class Console {
public:
    static char getc ();
    static void putc (char);
};

#endif