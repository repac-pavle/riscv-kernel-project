#include "../h/syscall_cpp.hpp"
#include "../h/syscall_c.hpp"

Semaphore* Thread::maxThreadsSemaphore = nullptr;

Thread::Thread(void (*body)(void *), void *arg) {
    this->body = body;
    this->arg = arg;
    this->myHandle = nullptr;
}

Thread::Thread() {
   this->body = wrapper;
   this->arg = this;
   this->myHandle = nullptr;
}

void Thread::finished() {
    if(maxThreadsSemaphore != nullptr)
        Thread::maxThreadsSemaphore->signal();
}

void Thread::dispatch() {
    thread_dispatch();
}

Thread::~Thread() {
    if(Thread::maxThreadsSemaphore != nullptr)
        Thread::maxThreadsSemaphore->signal();
    delete this->myHandle;
}

int Thread::sleep(time_t time) {
    return (int) time_sleep(time);

}

void Thread::SetMaximumThreads(int num_of_threads) {
    Thread::maxThreadsSemaphore = new Semaphore(num_of_threads);

}


int Thread::start() {
    if(Thread::maxThreadsSemaphore != nullptr)
        Thread::maxThreadsSemaphore->wait();
    return thread_create(&this->myHandle,body,arg);
}

char Console::getc() {
    return ::getc();
}

void Console::putc(char c) {
    ::putc(c);
}

Semaphore::Semaphore(unsigned int init) {
    sem_open(&this->myHandle,init);
}

Semaphore::~Semaphore() {
    sem_close(this->myHandle);
}

int Semaphore::wait() {
    return sem_wait(this->myHandle);
}

int Semaphore::signal() {
    return sem_signal(this->myHandle);
}

int Semaphore::timedWait(time_t) {
    return 0;
}

int Semaphore::tryWait() {
    return 0;
}

void PeriodicThread::terminate() {

}

PeriodicThread::PeriodicThread(time_t period) {

}
