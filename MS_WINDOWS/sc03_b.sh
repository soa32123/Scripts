#!/bin/bash

#
#	Realizado por:
#	Fecha:
#	Resumen: Búsqueda de ficheros en base al nombre o tamaño
#	a partir de /home
#
#	Código de  errores:
#	0- Ejecución correcta.
#	1- Número de argumentos incorrecto.
#	2- Problemas al realizar la búsqueda.
#	3- Argumentos introducidos erroneos.
#	4- Primer argumento mal introducido.

clear

if test $# -ne 3
then
	echo "Número de argumentos incorrecto."
	echo "Ejecute: $0 -b [n/t] valor"
	exit 1
else
	if test $1 != "-b"
	then
		echo "Argumento mal introducido."
		exit 4
	fi
fi

if test $2 == "n"
then
	if find /home -type f -name $3
	then
		echo ""
	else
		echo "Problemas al ejecutar la búsqueda."
		exit 2
	fi
elif test $2 == "t"
then
	if find /home -type f -size +"$3"M
	then
		echo ""
	else
		echo "Problemas al ejecutar la búsqueda."
		exit 2
	fi
else
	echo "Argumentos incorrectos."
	exit 3
fi

exit 0
