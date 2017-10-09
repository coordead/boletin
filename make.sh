#!/bin/sh
NOMBRE=$1
echo "Creada la rama $NOMBRE";

git checkout -b $NOMBRE

touch boletinName

echo $NOMBRE >> boletinName
echo "Puedes editar ya";
