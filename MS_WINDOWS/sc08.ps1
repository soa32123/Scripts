clear-host
write-host "1-Crear usuario"
write-host "2-Mostrar informacion"
write-host "3-Eliminar usuario"
$opc=read-host "Indique una opcion"

if($opc -eq 1)
{
    $nom=read-host "Indique el nombre dle usuario a crear"
    $pas="Alumno@8"
    $pas=[string]$pas
    $pas=ConvertTo-SecureString $pas -AsPlainText -Force
    New-LocalUser -Name $nom -Password $pas
}
elseif($opc -eq 2)
{
    $nom=read-host "Indique el nombre dle usuario a crear"
    Get-LocalUser $nom
}
elseif($opc -eq 3)
{
    $nom=read-host "Indique el nombre dle usuario a crear"
    Remove-LocalUser $nom
    Get-LocalUser
}
else{
    write-host "Opcion incorrecta"
}
