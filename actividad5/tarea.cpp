#include <iostream>
#include <thread>
#include <unistd.h>

void tu_funcion_thread() {
    std::cout << "hilo creado" << std::endl;
}

int main() {
    pid_t pid;
    pid = fork();
    std::cout << pid << std::endl;
    if (pid == 0) {
        fork();
        std::thread thread(tu_funcion_thread);
        thread.join();
    }
    fork();
    return 0;
}