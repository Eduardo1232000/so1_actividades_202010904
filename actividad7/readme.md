
#### Universidad de San Carlos de Guatemala
#### Facultad de Ingenieria
#### Sistemas Operativos 1 - "A"
#### Catedratico: Jesus Alberto Guzman Polanco
<br><br><br><br><br><br><br>
<p style="text-align: center;"><strong> Actividad 7 <br>
</strong></p>
<br><br><br><br><br><br><br>

| Nombre Completo                     | Carnet    
| :---:                               |  :----: 
| Eduardo Alexander Reyes Gonzalez    | 202010904  

<br><br>

---

<br><br>



<h1><strong>Caracteristicas de Completely Fair Scheduler</strong></h1>

<br>
CFS significa programador completamente justo
<br>
El programador CFS no tiene nocion de intervalos de tiempo, solo hay unh sintonizable central (debe activar CONFIG_SCHED_DEBUG)

<br><br>

debido a su diseño, el planificador CFS no es propenso a ningunos de los "Ataques" que existen hoy en dia contra las heuristicas del planificador de acciones.

<br><br>
El programador CFS tiene un manejo mucho mas solido de niveles agradables y SCHED_BATCH 

<br><br>
El diseño de CFS es bastante radical, no utiliza las antiguas estructuras de datos para las colas de ejecucionm pero utiliza un rbtree ordenado en el tiempo para construir una "linea de tiempo" de ejecucion futura de tareas. No tiene artefactos de "cambios de matriz" 
<br><br>
El numero total de tareas en ejecucion en la cola de ejecicion se contabiliza a traves del valor rq->cfs.load, que es la suma de los pesos de las tareas en la cola de ejecicion.

<br><br>
En CFS el tiempo de ejecucion virtual se expresa y se rastrea mediante el valor p->se.vruntime por tarea. De esta manera es posible marcar con precision y medir el tiempo de CPU esperado

<br><br>
La logica de seleccion de tareas de CFS se basa en el valor p->se.runtime y por lo tanto es muy simple, siempre intenta ejecutar la tarea con el valor p->se.runtime mas pequeño (la tarea que menos se ejecuto hasta el momento), el CFS siempre intenta dividir el tiempo de la CPU entre tareas ejecutables lo mas cerca posible del hardware multitarea ideal.

---
<h1>Politicas de programacion</h1>
<br>
CFS implementa 3 politicas: SCHED_NORMAL, SCHED_BATCH, SCHED_IDLE
<br><br>
<h3>SCHED_NORMAL:</h3> la politica que se utiliza para las tareas habituales <br><br>
<h3>SCHED_BATCH:</h3>  Permite que las tareas se ejecuten durante mas tiempo y hagan un mejor uso de las caches, pero a costa de la interactividad, esto es muy adecuado para trabajos por lotes. <br> <br>

<h3>SCHED_IDLE: </h3> No es un verdadero programador de temporizador inactivo para evitar problemas de inversion de prioridad que bloquearian la maquina.