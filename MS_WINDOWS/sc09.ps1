$num=read-host "Indique un numero"
$num=[int]$num
$cont=0
while($cont -le 10)
{
    $res=$num*$cont
    write-host "$num x $cont = $res"
    #$cont=$cont+1
    $cont++
}

#for($cont=0 ; $cont -le 10 ; $cont++)