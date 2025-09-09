#ifndef OS_PROJECT_BASE_CONSOLE_HPP
#define OS_PROJECT_BASE_CONSOLE_HPP

#include "buffer.hpp"

class Console {
private:


public:
    static Buffy * input;
    static Buffy * output;
    Console();

    static void inputPut(char c);
    static char inputGet();
    static void outputPut(char c);
    static char outputGet();

};











#endif