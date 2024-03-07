
#### Universidad de San Carlos de Guatemala
#### Facultad de Ingenieria
#### Sistemas Operativos 1 - "A"
#### Catedratico: Jesus Alberto Guzman Polanco
<br><br><br><br><br><br><br>
<p style="text-align: center;"><strong> Actividad 5 <br>
</strong></p>
<br><br><br><br><br><br><br>

| Nombre Completo                     | Carnet    
| :---:                               |  :----: 
| Eduardo Alexander Reyes Gonzalez    | 202010904  

<br><br>

---
<br><br>

<h1><strong>Codigo</strong></h1>

```bash
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

```

<br><br>



<h1><strong>Cuantos procesos unicos son creados</strong></h1>

<br>

Ejecutando el codigo anterior podemos observar que se crearon 4 procesos unicos  <br>
<li> Se crea el proceso padre
<li> Se crea un proceso hijo en el primer fork()
<li> Dentro del condicional el hijo crea otro hijo con el segundo fork()
<li> Se crea otro hijo con el tercer fork()

<br><br>

<h1><strong>Cuantos hilos unicos son creados</strong></h1>

<br>

en total se crean 2 hilos unicos

<li> dentro del condicional del hijo se crea un hilo 
<li> el nuevo proceso creado dentro del bloque condicional tambien crea un hilo