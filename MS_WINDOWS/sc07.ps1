$nom=read-host "Indique el nombre dle usuario a crear"
$pas="Alumno@8"
$pas=[string]$pas
$pas=ConvertTo-SecureString $pas -AsPlainText -Force
New-LocalUser -Name $nom -Password $pas

