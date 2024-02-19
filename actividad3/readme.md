
#### Universidad de San Carlos de Guatemala
#### Facultad de Ingenieria
#### Sistemas Operativos 1 - "A"
#### Catedratico: Jesus Alberto Guzman Polanco
<br><br><br><br><br><br><br>
<p style="text-align: center;"><strong> Actividad 3 <br>
</strong></p>
<br><br><br><br><br><br><br>

| Nombre Completo                     | Carnet    
| :---:                               |  :----: 
| Eduardo Alexander Reyes Gonzalez    | 202010904  

<br><br>

---
<br><br>

<h1><strong>Creacion de un systemd unit de tipo servicio</strong></h1>

<br>

para poder crear un systemd primero debemos crear nuestro script. <br>

**Archivo:** saludo.sh
```bash
#!/bin/bash
echo "Hola, este es un saludo ejecutado el: $(date)"
```

<br>
Tambien debemos darle permisos al archivo saludo.sh<br>

```bash
chmod +x /home/eduardo/Escritorio/saludo.sh

```

<br>
Luego ya podemos crear nuestro archivo de unidad systemd en<br><br>
Ruta: /etc/systemd/system/<br>
o <br>Ruta: ~/.config/systemd/user/<br><br>
llamaremos el archivo como 'saludo.service' el cual tendra el siguiente contenido
<br><br>

**Archivo:** saludo.service
```
[Unit]
Description=Servicio de Saludo

[Service]
Type=simple
ExecStart=/home/eduardo/Escritorio/saludo.sh

[Install]
WantedBy=default.target
```
<br>

Debemos recargar las unidades de systemd:

```
sudo systemctl daemon-reload
```
<br>
y ya podemos iniciar y habilitar el servicio:

```
sudo systemctl start saludo.service
sudo systemctl enable saludo.service
```
<br>Esto hara que nuestro script se ejecute como un servicio y se iniciara automaticamente cuando arranque el sistema.

<br>
Para ver la salida del servicio podemos ejecutar el siguiente comando que es para mostrar el registro del servicio y asi poder verificar la salida de nuestro script

```
sudo journalctl -u saludo.service
```
<br>

**Salida:** 

```
feb 19 17:15:33 eduardo-NBLK-WAX9X systemd[1]: Started saludo.service - Servicio de Saludo.
feb 19 17:15:33 eduardo-NBLK-WAX9X saludo.sh[4954]: Hola, este es un saludo ejecutado el: lun 19 feb 2024 17:15:33 CST
feb 19 17:15:33 eduardo-NBLK-WAX9X systemd[1]: saludo.service: Deactivated successfully.
```
