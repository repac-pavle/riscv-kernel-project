#ifndef QUEUE_H
#define QUEUE_H

struct queue_t {
	struct queue_t *prev;
	struct queue_t *next;
	void *data;
};
typedef struct queue_t queue_t;

queue_t *init_queue(void);
void queue_add(queue_t *q, void *data);
void *queue_get(queue_t *q);

#endif
