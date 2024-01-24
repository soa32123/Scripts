#!/bin/bash
cd actividad
nom=`date|tr -s " "|tr " " "#"|tr ":" "_"`
echo $nom
#tar -cvf $nom.tar *
#nom=$(date +%Y-%m-%d)
#echo $nom
#tar -cvf $(date +%Y-%m-%d).tar *
tar -cvf $nom.tar *

