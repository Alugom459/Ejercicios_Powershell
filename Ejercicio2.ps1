[int]$numero1 = Read-Host "Introduce el primer numero"
[int]$numero2 = Read-Host "Introduce el segundo numero"

$Suma = $numero1 + $numero2
$Resta = $numero1 - $numero2
$multiplicacion = $numero1 * $numero2
$division = $numero1 / $numero2
$resto = $numero1 % $numero2

Write-host "El resultado de la suma es:" $suma
write-host "El resultado de la resta es:" $resta
write-host "El resultado de la multiplicación es:" $multiplicacion
write-host "El resultado de la division es:" $division
write-host "El resultado del resto es:" $resto
