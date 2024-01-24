#!/bin/bash
clear
#
#	Realizado por:
#	Fecha:
#	Resumen: Búsqueda de ficheros en base al nombre o tamaño
#	a partir de /home
#
#	Código de  errores:
#	0- Ejecución correcta
#	1- Opción introducida incorrecta
#	2- Error al crear el usuario
#	3- Error al mostrar informacióndel usuario
#	4- Error al borrar el usuario

echo "***********************************"
echo "1- Crear usuario"
echo "2- Mostrar información de usuario"
echo "3- Borrar usuario"
echo "**********************************"
read -p "Indique una opción [1-3]: " opc
clear
case $opc in
1)
	read -p "Introduzca el nombre del usuario que desea crear: " nom
	if samba-tool user create $nom &>/dev/null
	then
		echo "Usuario $nom creado correctamente."
	else
		echo "Error al crear el usuario"
		exit 2
	fi
	;;
2)
	read -p "Introduzca el nombre de usuario cuya información quiere que se muestre: " nom
	if samba-tool user show $nom
	then
		echo ""
	else
		echo "Error al mostrar la información."
		exit 3
	fi
	;;
3)
	read -p "Indique usuario que desea borrar:" nom
	if samba-tool user delete $nom &>/dev/null
	then
		echo "Usuario $nom borrado correctamente."
	else
		echo "Problemas al borrar el usuario $nom."
		exit 4
	fi
	;;
*)
	echo "Opción incorrecta"
	dialog --title "ASO" --msgbox "Opción incorrecta." 6 40 
	zenity --info --title="ASO" --width=250 --text="Opción incorrecta."
	exit 1
	;;
esac





exit 0

