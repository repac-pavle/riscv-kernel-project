#ifndef SEM_H
#define SEM_H

#include "../h/types.h"

typedef struct {
	volatile bool value;
} sl_t;

typedef struct {
	int count;
	sl_t lock;
} _sem_t;

typedef _sem_t *sem_t;

#define SL_UNLOCKED 0
#define SL_LOCKED 1

void spin_lock(sl_t *lock);
void spin_unlock(sl_t *lock);
int __sem_open(sem_t *handle, unsigned init);
int __sem_close(sem_t handle);
int __sem_wait(sem_t sem);
int __sem_signal(sem_t sem);

#endif
