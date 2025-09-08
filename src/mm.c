#include "../h/types.h"
#include "../h/mm.h"
#include "../h/stdio.h"

typedef struct {
	uint32_t free;
	uint32_t used;
	uint32_t blocks;
	uint64_t *start_addr;
	uint16_t map[];
} mem_header_t;

void mm_init()
{
	mem_header_t *mem_header = (mem_header_t *)HEAP_START_ADDR;
	int blocks = ((uint64_t)HEAP_END_ADDR - (uint64_t)HEAP_START_ADDR -
		      sizeof(mem_header_t)) /
			     (MEM_BLOCK_SIZE + 2) -
		     1;
	mem_header->blocks = blocks;
	mem_header->free = blocks;

	for (uint32_t i = 0; i < mem_header->blocks; i++) {
		memset(&mem_header->map[i], 0, sizeof(mem_header->map[i]));
	}

	uint64_t start_addr =
		(uint64_t)HEAP_START_ADDR + sizeof(mem_header_t) + blocks * 2;

	if (start_addr % MEM_BLOCK_SIZE)
		start_addr += (MEM_BLOCK_SIZE - (start_addr % MEM_BLOCK_SIZE));

	mem_header->start_addr = (uint64_t *)start_addr;

	/*
	printf("HEAP_START_ADDR: %x\n", HEAP_START_ADDR);
	printf("mem_header->start_addr: %x\n", mem_header->start_addr);
	printf("HEAP_END_ADDR: %x\n", HEAP_END_ADDR);
	*/
}

void *__malloc(uint32_t size)
{
	mem_header_t *mem_header = (mem_header_t *)HEAP_START_ADDR;
	uint32_t br_blokova =
		(size / MEM_BLOCK_SIZE) + ((size % MEM_BLOCK_SIZE) ? 1 : 0);
	uint32_t blocks = mem_header->blocks;

	// nadji br_blokova consecutive slobodnih
	uint32_t streak = 0;
	uint32_t i = 0;
	int nadjeno = 0;
	for (i = 0; i < mem_header->blocks; i++) {
		if (!mem_header->map[i]) {
			streak++;
		} else {
			streak = 0;
		}

		if (streak == br_blokova) {
			nadjeno = 1;
			break;
		}
	}

	if (!nadjeno) {
		printf("nema memorije\n");
		return 0;
	}

	i = i - streak + 1;

	// nadji vrednost indexa
	int vr;
	int prethodni = 0;
	int sledeci = 0;

	if (i)
		prethodni = mem_header->map[i - 1];
	if (i + br_blokova < blocks) {
		sledeci = mem_header->map[i + br_blokova + 1];
	} else {
		printf("nema memorije\n");
		return 0;
	}

	for (vr = 1; vr == prethodni || vr == sledeci; vr++)
		;

	// popuni indexe
	for (uint32_t j = i; j < i + br_blokova; j++) {
		mem_header->map[j] = vr;
	}

	// vrati adresu
	return (void *)((uint64_t)mem_header->start_addr + MEM_BLOCK_SIZE * i);
}

int __free(void *p)
{
	mem_header_t *mem_header = (mem_header_t *)HEAP_START_ADDR;
	uint64_t ptr = (uint64_t)p;

	if (ptr < (uint64_t)mem_header->start_addr ||
	    ptr >= (uint64_t)HEAP_END_ADDR) {
		printf("ERROR: free() pointer out of bounds\n");
		return -1;
	}

	if (ptr % MEM_BLOCK_SIZE) {
		printf("ERROR: free() pointer not aligned\n");
		return -2;
	}

	uint32_t idx =
		(ptr - (uint64_t)mem_header->start_addr) / MEM_BLOCK_SIZE;
	uint16_t val = mem_header->map[idx];

	if (val == 0) {
		printf("ERROR: double free()\n");
		return -3;
	}

	while (mem_header->map[idx] == val) {
		mem_header->map[idx] = 0;
		idx++;
	}

	return 0;
}
