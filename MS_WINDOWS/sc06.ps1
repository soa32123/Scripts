clear-host
write-host "***********"
write-host "1-Sumar"
write-host "2-Restar"
write-host "3-Multiplicar"
write-host "4-Dividir"
write-host "5-Salir"
write-host "***********"
$opc=read-host "Indique un valor:"
[int]$seguir=0

if($opc -ge 1 -and $opc -le 4)
{
    $num1=read-host "Indique el primer numero:"
    $num1=[int]$num1
    $num2=read-host "Indique el segundo numero:"
    $num2=[int]$num2

}
elseif($opc -eq 5)
{
    $seguir=1
}
elseif($opc -ne 5)
{
    write-host "Opcion incorrecta"
    $seguir=1
}

while($seguir -eq 0)
{

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
    $num1=$res
    $num2=read-host "Indique numero para seguir o 0 para salir"
    if($num -eq 0)
    {
        $seguir=1
    }
}