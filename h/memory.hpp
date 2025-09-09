#ifndef OS_PROJECT_BASE_MEMORY_HPP
#define OS_PROJECT_BASE_MEMORY_HPP
#include "../lib/hw.h"




class Memory {
public:
    Memory() {}
    static void init();
    static void* mem_alloc(size_t size);
    static int mem_free(void* ptr);
    static size_t mem_get_free_space();
    static size_t mem_get_largest_free_block();
//private:
static size_t numOfBlocks;
static int* memMap;
static void* startHeap;

};




#endif