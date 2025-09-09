#include "../h/memory.hpp"

size_t Memory::numOfBlocks = 0;
int* Memory::memMap = 0;
void* Memory::startHeap = 0;

void Memory::init() {
    numOfBlocks = ((uint64)HEAP_END_ADDR - (uint64)HEAP_START_ADDR) / (MEM_BLOCK_SIZE + sizeof(int)) - 1;
    memMap = (int*) HEAP_START_ADDR;
    startHeap = (char*) HEAP_START_ADDR + numOfBlocks * sizeof(int);
    startHeap = (char*) startHeap + (MEM_BLOCK_SIZE - (uint64) startHeap % MEM_BLOCK_SIZE); //poravnavanje startHeap na memblock
    memMap[0] = numOfBlocks;
    for(size_t i = 1; i < numOfBlocks; i++) {
        memMap[i] = 0;
    }
}

void* Memory::mem_alloc (size_t size) {
    size = size / MEM_BLOCK_SIZE + ((size % MEM_BLOCK_SIZE != 0) ? 1 : 0);
    if (size<=0 || size>numOfBlocks) return nullptr; // Exception
    for (size_t i=0; i<numOfBlocks; i++)
        if (memMap[i]>= (int) size) {
            if (memMap[i]>(int) size) memMap[i+size] = memMap[i]-size;
            memMap[i] = -size;
            return ((char*)startHeap + i * MEM_BLOCK_SIZE); //x = startheap + i * memblocksize
                                                            //i = x - startheap)/memblocksize
        };
    return nullptr; // No free mem
}

size_t Memory::mem_get_free_space() {
    size_t freeSpace = 0;
    for (size_t i=0; i<numOfBlocks; i++)
        if(memMap[i] > 0)
            freeSpace += (size_t) memMap[i];

    freeSpace *= MEM_BLOCK_SIZE;
    return freeSpace;
}

size_t Memory::mem_get_largest_free_block() {
    size_t largestBlock = 0;

    for (size_t i=0; i<numOfBlocks; i++)
        if((size_t) memMap[i] > largestBlock)
            largestBlock = (size_t) memMap[i];

    largestBlock *= MEM_BLOCK_SIZE;
    return largestBlock;
}

int Memory::mem_free(void *ptr) {
    if(ptr < startHeap || ptr > HEAP_END_ADDR) return -1; //free na memoriju van opsega GRESKA
    if((uint64) ptr % MEM_BLOCK_SIZE != 0 ) return -2; //free na NEPORAVNAT pokazivac (sredinu mem blocka, NE MOZE)

    int entry = ((uint64) ptr - (uint64)startHeap) / MEM_BLOCK_SIZE;
    if(memMap[entry] >= 0) return -3; //free na nealociranu memoriju GRESKA

    memMap[entry] = -memMap[entry];
    //right join
    if(memMap[entry + memMap[entry]] > 0) {
        int pomeraj = entry + memMap[entry];
        memMap[entry] += memMap[pomeraj];
        memMap[pomeraj] = 0;
    }

    //left join
    int i = 0;
    while(memMap[entry + --i] == 0);
    if(memMap[entry + i] > 0) {
        int pomeraj = entry + i;
        memMap[pomeraj] += memMap[entry];
        memMap[entry] = 0;
    }

    return 0;
}
