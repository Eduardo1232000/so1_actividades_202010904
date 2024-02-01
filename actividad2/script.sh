#!/bin/bash

GITHUB_USER="eduardo"

id=$(curl https://api.github.com/users/$GITHUB_USER | grep -o '"id": [0-9]*' | cut -d ":" -f 2)

created_at=$(curl -s https://api.github.com/users/$GITHUB_USER | jq -r '.created_at')

ruta_saludos="/tmp/$(date -u +"%d-%m-%Y")"

mkdir -p $ruta_saludos

echo "Hola $GITHUB_USER .User ID $id .Cuenta fue creada el $created_at ." >> "$ruta_saludos/saludo.log"


#PARA EJECUTAR EL SCRIPT CADA 5 MINUTOS EJECUTAMOS
#crontab -e

#SELECCIONAMOS EL EDITOR SI ES LA PRIMERA VEZ Y AGREGAMOS LA LINEA
#*/5 * * * * /<ruta_script>

#GUARDAMOS Y CERRAMOS EL ARCHIVO CRONTAB
#NOTA: EL SCRIPT DEBE TENER PERMISOS DE EJECUCION
