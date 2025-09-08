#include "../h/types.h"
#include "../h/mm.h"
#include "../h/queue.h"

queue_t *init_queue(void)
{
	queue_t *q = (queue_t *)__malloc(sizeof(queue_t));
	q->prev = q;
	q->next = q;
	q->data = NULL;
	return q;
}

void queue_add(queue_t *q, void *data)
{
	queue_t *t = (queue_t *)__malloc(sizeof(queue_t));
	t->data = data;

	q->prev->next = t;
	t->prev = q->prev;
	q->prev = t;
	t->next = q;
}

void *queue_get(queue_t *q)
{
	queue_t *t = q->next;
	if (q == t)
		return NULL;

	void *data = t->data;

	t->next->prev = q;
	q->next = t->next;

	__free(t);
	return data;
}
