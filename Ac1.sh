#!/bin/bash

MaxLineas=`cat usuarios.txt | wc -l`
NumLinea=1
logs=0

read -p "Dime un usuario " usuario

while [ $NumLinea -le $MaxLineas ];do
linea=`cat usuarios.txt | head -$NumLinea | tail -1`
user=`echo $linea | awk '{print $1}'`
dias=`echo $linea | awk '{print $2}'`
mes=`echo $linea | awk '{print $3}'`

if [ $usuario = $user ];then
logs=$((logs+1))
fi
NumLinea=$((NumLinea+1))
done
if [ $logs = "0" ];then
echo "No se ha logrado"
else
echo "$logs"
fi