clear-host
write-host "***********"
write-host "1-Sumar"
write-host "2-Restar"
write-host "3-Multiplicar"
write-host "4-Dividir"
write-host "5-Salir"
write-host "***********"
$opc=read-host "Indique un valor:"
$num1=read-host "Indique el primer numero:"
$num1=[in]$num1
$num2=read-host "Indique el segundo numero:"
$num2=[in]$num2
if($opc -eq 1)
{
    $res=$num1+$num2
    write-host "La suma de $num1 y $num2 es $res"
}
elseif($opc -eq 2)
{
    write-host "DOS"
}
elseif($opc -eq 3)
{
    write-host "TRES"
}
elseif($opc -eq 4)
{
    write-host "CUATRO"
}
elseif($opc -eq 5)
{
    exit
}
else{
    write-host "Opcion incorrecta"
}