#!/bin/bash
MaxLineas=`cat usuarios.txt | wc -l `
NumLinea=1
null=0

read -p "Dime un mes " usu
while [ $NumLinea -le $MaxLineas ];do
linea=`cat usuarios.txt | head -$NumLinea | tail -1`
user=`echo $linea | awk '{print $1}'`
dia=`echo $linea | awk '{print $2}'`
mes=`echo $linea | awk '{print $3}'`
if [ $usu = $mes ];then
echo $dia
else
null=$((null+1))
fi
NumLinea=$((NumLinea+1))
done
if [ $null = 0 ];then
echo "0"
fi
