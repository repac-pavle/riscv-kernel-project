#include "../h/types.h"
#include "../h/sem.h"
#include "../h/mm.h"
#include "../h/stdio.h"
#include "../h/syscall_c.h"

void spin_lock(sl_t *lock)
{
	bool locked = SL_LOCKED;
	bool previous;

	asm volatile("amoswap.w %0, %1, (%2)"
		     : "=r"(previous)
		     : "r"(locked), "r"(&lock->value));

	while (previous != SL_UNLOCKED) {
		thread_dispatch();
		asm volatile("nop");
		asm volatile("amoswap.w %0, %1, (%2)"
			     : "=r"(previous)
			     : "r"(locked), "r"(&lock->value));
	}
}

void spin_unlock(sl_t *lock)
{
	bool unlocked = SL_UNLOCKED;

	asm volatile("sw %0, (%1)" : : "r"(unlocked), "r"(&lock->value));
}

int __sem_open(sem_t *handle, unsigned init)
{
	*handle = (sem_t)__malloc(sizeof(sem_t));
	(*handle)->count = init;
	(*handle)->lock.value = 0;
	return 0;
}

int __sem_close(sem_t handle)
{
	__free(handle);
	return 0;
}

int __sem_wait(sem_t sem)
{
	spin_lock(&(sem->lock));

	while (sem->count <= 0) {
		spin_unlock(&(sem->lock));
		thread_dispatch();
		spin_lock(&(sem->lock));
	}

	sem->count--;
	spin_unlock(&(sem->lock));
	return 0;
}

int __sem_signal(sem_t sem)
{
	spin_lock(&(sem->lock));
	sem->count++;
	spin_unlock(&(sem->lock));
	return 0;
}
