#### Universidad de San Carlos de Guatemala
#### Facultad de Ingenieria
#### Sistemas Operativos 1 - "A"
#### Catedratico: Jesus Alberto Guzman Polanco
<br><br><br><br><br><br><br>
<p style="text-align: center;"><strong> Actividad 1 <br>
</strong></p>
<br><br><br><br><br><br><br>

| Nombre Completo                     | Carnet    
| :---:                               |  :----: 
| Eduardo Alexander Reyes Gonzalez    | 202010904  

<br><br>

---
<br><br>

<h1><strong>Tipos de Kernel</strong></h1>

<br>

<strong>Kernel Monolitico</strong><br>
El kernel monolitico es caracterizado porque los servicios de usuario y los servicios del kernel se implementan en el mismo espacio de memoria 

<br>

<strong> Micro Kernel</strong><br>
A diferencia del kernel monolitico en el micro kernel el tamaño del nucleo disminuye, el tamaño del Sistema operativo se reduce y se ralentiza la velocidad de ejecucion 

<br>

<strong>Kernel Hibrido</strong><br>
Este tipo de kernel es el mas utilizado en los Sistemas operativos tales como Windows XP, Windows 10 e iOS y consiste en una combinacion entre el kernel monolitico y el micro kernel, combinando sus ventajas como lo es la velocidad y la modularidad. Tiene diferentes servicios ejecutandose en diferentes partes de la memoria, algunos en espacio de usuario y otros en espacio de kernel.


<br>

<strong>Exo Kernel</strong><br>
Facilita la personalizacion especifica de la aplicacion, ya que la proteccion de recursos se coloca en un espacio de memoria diferente al de su administracion, pero requiere un diseño complejo.

<br><br>
---
<br><br>

<h1><strong>User mode vs Kernel mode<br></strong></h1>

<strong>User mode<br></strong>
El user mode o modo de usuario es un modo sin privilegios para los programas del usuario, esto quiere decir que cuando un proceso es ejecutado en este modo, tiene acceso limitado al CPU y a la memoria
<br><br>

<strong>Kernel mode<br></strong>
el kernel mode o modo kernel, es conocido como modo sistema, y es uno de los modos operativos del CPU. Cuando los procesos se ejecutan en modo kernel,a diferencia del user mode, este tiene acceso ilimitado al hardware

<br><br>
---
<br><br>

<h1><strong>Interruptions vs traps<br></strong></h1>

<strong>Interrupciones<br></strong>
Las interrupciones son señales emitidas por software o hardware que son utilizadas cuando un evento o proceso requiere atencion inmediata. Estas ocurren de manera asincrona y pueden ocurrir en cualquier momento. A estas se les conoce como interrupcion de hardware
<br><br>

<strong>Traps<br></strong>
una trap o trampa es una señal generada por un programa de usuario, y este indica al sistema operativo que realice una funcionalidad inmediata.
Estas son generadas por una instruccion del programa de usuario 
<br>
a diferencia de las interrupciones las traps son sincronas y pueden ocurrir despues de la ejecucion de la instruccion. A estas se les conocen como interrupcion de software
