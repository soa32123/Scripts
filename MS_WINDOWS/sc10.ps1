$num=read-host "indique un numero"
$num=[int]$num
$res=$num%2
if($res -eq 0)
{
    write-host "El numero es par"
}
else
{
    write-host "El numero es impar"
}