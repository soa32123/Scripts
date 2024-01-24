clear-host
$num=read-host "Indique el primer numero"
$num2=read-host "Indique el segundo numero"

write-host "n1=$num y n2=$num2"
write-output "n1=$num y n2=$num2"

$resultado=$num+$num2
write-host "La suma de $num+$num2 = $resultado"

$num=[int]$num
$num2=[int]$num2
$resultado=$num+$num2
write-host "La suma de $num+$num2 = $resultado"