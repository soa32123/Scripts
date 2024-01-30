#!/bin/bash
clear
#
#	Realizado por:
#	Fecha:
#	Resumen:
#	Código de errores
#	0-Todo correcto
#	1-Falta argumento (fichero de datos)
#	2-Fichero de datos no existe
#	3-Error al crear el usuario
#	4-Error al no existir el fichero de información
#	5-Error al copiar el ficheor de información departamental al usuario creado
#	6-Error al añadir usuario al grupo departamental

if test $# -ne 1
then
	echo "Usted no introdujo los argumentos correctos."
	echo "Ejecute: $0 ficheroDatos.csv"
	exit 1
fi

if ! test -f $1
then
	echo "El fichero $1 no existe"
	exit 2
fi

datos=`cat $1|tail -n+2`

for i in $datos
do

	# echo "Datos: $i"
	usuario=`echo $i|cut -f1 -d";"`
	nomusu=`echo $i|cut -f2 -d";"`
	dpto=`echo $i|cut -f3 -d";"`

	if useradd $nomusu -c "$usuario" -m >/dev/null 2>/dev/null
	then
		echo "Usuario $nomusu creado correctamente."
		if test -f $dpto.txt
		then
			if cp $dpto.txt /home/$nomusu/ &>/dev/null
			then
				echo "El fichero de información $dpto.txt se copió correctamente"
			else
				echo "Error al copiar el fichero $dpto.txt al usuario $nomusu"
				exit 5
			fi
		else
			echo "Error al no existir el fichero de información para el dpto $dpto"
			exit 4
		fi

		if adduser $nomusu $dpto &>/dev/null
		then
			echo "Usuario $nomusu añadido a $dpto"
		else
			echo "Error al añadir $nomusu al grupo $dpto"
			exit 6
		fi
	else
		echo "Error al crear el usuario $nomusu"
		exit 3
	fi
done



exit 0
