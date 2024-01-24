$num=[int]$args[1]
$res=$num%2
if($res -eq 0)
{
    write-host "El numero es par"
}
else
{
    write-host "El numero es impar"
}