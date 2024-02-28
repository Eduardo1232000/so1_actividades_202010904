
#### Universidad de San Carlos de Guatemala
#### Facultad de Ingenieria
#### Sistemas Operativos 1 - "A"
#### Catedratico: Jesus Alberto Guzman Polanco
<br><br><br><br><br><br><br>
<p style="text-align: center;"><strong> Actividad 4 <br>
</strong></p>
<br><br><br><br><br><br><br>

| Nombre Completo                     | Carnet    
| :---:                               |  :----: 
| Eduardo Alexander Reyes Gonzalez    | 202010904  

<br><br>

---
<br><br>

<h1><strong>Creacion de un chat basico usando named pipes y bash</strong></h1>

<br>

para poder crear el chat debemos crear primero los named pipes con el siguiente comando <br>

```bash
mkfifo participante1_pipe
mkfifo participante2_pipe
```

<br>
Luego debemos crear un script para el integrante 1 y el integrante 2<br>

**Archivo:** participante1.sh
```bash
while true; do
    read -p "Participante 1: " message
    echo "$message" > participante1_pipe
    if [ "$message" == "exit" ]; then
        break
    fi
    received_message=$(cat participante2_pipe)
    echo "Participante 2: $received_message"
done

```

**Archivo:** participante2.sh
```bash
while true; do
    read -p "Participante 2: " message
    echo "$message" > participante2_pipe
    if [ "$message" == "exit" ]; then
        break
    fi
    received_message=$(cat participante1_pipe)
    echo "Participante 1: $received_message"
done

```

<br>
Luego debemos dar permisos de ejecucion para los scripts<br><br>

<br><br>

**Archivo:** saludo.service
```
chmod +x participante1.sh
chmod +x participante2.sh
```
<br>

Luego en terminales separadas debemos ejecutar cada script

```
./participante1.sh
```

```
./participante2.sh
```
Asi podemos ver la interfaz del chat en cada terminal, y podemos enviar 1 mensaje a la vez. el participante 2 debe presionar enter para poder visualizar el ultimo mensaje guardado en el named pipe. para salir del chat se debe escribir exit

```
Participante 1: HOLA  
Participante 2: 

Participante 1:  
Participante 2: HOLA

Participante 1:
```

```
Participante 2:   
Participante 1: HOLA

Participante 2: HOLA
Participante 1:

Participante 2: 
```