#!/bin/bash
api="https://api.github.com/users/"
usuario="LempDnote"
fullApi="${api}${usuario}"
request=$(curl -s -X GET "$fullApi")
#echo "Respuesta: $request"
user=$(echo "$request" | grep -o '"login": "[^"]*' | sed 's/"login": "//')
created_at=$(echo "$request" | grep -o '"created_at": "[^"]*' | sed 's/"created_at": "//')
id=$(echo "$request" | grep -o '"id": [1-9]*' | sed 's/"id": //')
#echo "Login: $user"
#echo "Created_at: $created_at"
#echo "Id: $id"
fecha=$(date)
cadena="Hola ${user}. User ID: ${id}. Cuenta fue creada el: ${created_at}."
dirLog="temp"
mkdir -p $dirLog
mkdir -p "${dirLog}/${fecha}"
file="${dirLog}/${fecha}/saludos.log"
echo "${cadena}" >> "$file"

#cronjob
#ejecutar el comando crontab -e
# desplegara el archivo crontab para modificar lo requerido, si es primea vez desplegara en que herramienta desea visualizar el archivo, ya sea Nano, Vim etc...
# agregar una expresion cron segun el formato en la ultima linea del archivo crontab
# * - minuto  *- hora *- dia del mes *-mes *-dia de la semana
# * agregar la instruccion que se desea ejecutar en la tarea en este caso la instruccion ~/path/sh miScript.sh
# visualizar que la tarea se agregara de manera correta con el comando crontab -l 
# ejemplo
# */5 * * * * sh ~/Documents/Segundo\ Semestre/Sistemas\ Operativos\ 1/actividad2/miScript.sh 
# 