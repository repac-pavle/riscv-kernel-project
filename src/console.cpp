#include "../h/console.hpp"

Buffy* Console::input = nullptr;
Buffy* Console::output = nullptr;



Console::Console() {
    Console::input = new Buffy(1024);
    Console::output = new Buffy(1024);
}
char Console::inputGet() {
    return input->get();
}

void Console::inputPut(char c) {
    input->put(c);
}

void Console::outputPut(char c) {
    output->put(c);
}

char Console::outputGet() {
    return output->get();
}

