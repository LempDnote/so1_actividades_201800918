#!/bin/bash

CONTENEDORES=11

i=1

while [ $i -le $CONTENEDORES ]; do

  echo "Creando contenedor:"

  docker run -d  busybox sleep 3600

  
  i=$((i + 1))
done
