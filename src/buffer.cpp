#include "../h/buffer.hpp"

Buffy::Buffy(int _cap) : cap(_cap + 1), head(0), tail(0) {
    buffer = (int *)__mem_alloc(sizeof(int) * cap);
    itemAvailable = new sem(0);
    spaceAvailable = new sem(_cap);
    mutexHead = new sem(1);
    mutexTail = new sem(1);
}

//Buffy::~Buffy() {
//    while (getCnt() > 0) {
//        char ch = buffer[head];
//        putc(ch);
//        head = (head + 1) % cap;
//    }
//    mem_free(buffer);
//    sem_close(itemAvailable);
//    sem_close(spaceAvailable);
//    sem_close(mutexTail);
//    sem_close(mutexHead);
//}

void Buffy::put(int val) {
    spaceAvailable->wait();

    mutexTail->wait();
    buffer[tail] = val;
    tail = (tail + 1) % cap;
    mutexTail->signal(false);

    itemAvailable->signal(false);

}

int Buffy::get() {
    itemAvailable->wait();

    mutexHead->wait();

    int ret = buffer[head];
    head = (head + 1) % cap;
    mutexHead->signal(false);
    spaceAvailable->signal(false);

    return ret;
}

int Buffy::getCnt() {
    int ret;

    mutexHead->wait();
    mutexTail->wait();

    if (tail >= head) {
        ret = tail - head;
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal(true);
    mutexHead->signal(true);

    return ret;
}
