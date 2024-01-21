#!/bin/bash

#
#	Realizado por:
#	Fecha:
#	Resumen: Búsqueda de ficheros en base al nombre o tamaño
#	a partir de /home
#
#	Código de  errores:
#	0- Ejecución correcta
#	1- Opción incorrecta introducida
#

clear

read -p "Indique si desea introducir nombre o tamaño [n/t]:" opc

if test $opc == "n"
then
	read -p "Introduce el nombre a buscar: "  nom
	find /home -type f -name $nom
elif test $opc == "t"
then
	read -p "Introduce el tamaño en megas de los ficheros buscados: " tam
	find /home -type f -size +"$tam"M
else
	echo "No introdujo una opción correcta."
	exit 1
fi






exit 0
