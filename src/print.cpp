#include "../h/print.hpp"
#include "../h/riscv.hpp"

void printString(char const *string) {
    uint64 sstatus = Riscv::r_sstatus(); //za zabranu prekida tokom ispisa da se ne bi nesto uzjebalo
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);
    while(*string != '\0') {
        __putc(*string);
        string++;
    }
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
}

void printInteger(uint64 integer) {
    uint64 sstatus = Riscv::r_sstatus(); //za zabranu prekida tokom ispisa da se ne bi nesto uzjebalo
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);
    static char digits[] = "0123456789";
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(integer < 0) {
        neg = 1;
        x = -integer;
    } else {
        x = integer;
    }

    i = 0;
    do {
        buf[i++] = digits[x % 10];
    } while((x /= 10) != 0);
    if(neg)
        buf[i++] = '-';
    while(--i >= 0)
        __putc(buf[i]);

    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
}

void SprintInteger(uint64 integer) {
    uint64 sstatus = Riscv::r_sstatus();
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);
    static char digits[] = "0123456789";
    char buf[16];
    int i;
    int neg = 0;
    uint x;
    if (integer < 0) {
        neg = 1;
        x = -integer;
    } else {
        x = integer;
    }
    i = 0;
    do {
        buf[i++] = digits[x % 10];
    } while ((x /= 10) != 0);
    if (neg)
        buf[i++] = '-';
    while (--i >= 0)
        __putc(buf[i]);
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
}





void printHex(int xx) {
    int sgn = 0;
    int base = 16;
    char digits[] = "0123456789ABCDEF";
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    }

    i = 0;
    do{
        buf[i++] = digits[x % base];
    }while((x /= base) != 0);
    if(neg)
        buf[i++] = '-';

    while(--i >= 0)
        __putc(buf[i]);

}