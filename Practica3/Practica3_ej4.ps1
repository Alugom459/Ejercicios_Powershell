[int]$num1 = Read-host "Introduce el primer numero"
[int]$num2 = Read-host "Introduce el segundo numero"

Write-Host "**** CALCULADORA ****"
Write-Host "1.Sumar"
Write-host "2.Restar"
Write-host "3.Multiplicar"
Write-host "4.Resto"

$Opcion = Read-Host "¿Qué desea hacer? Elige una opción:"

switch ($opcion) { 

1 { Write-host "El resultado de la suma es" ($num1 + $num2) }
2 { Write-host "El resultado de la resta es" ($num1 - $num2) }
3 { Write-host "El resultado de la multiplicacion es" ($num1 * $num2) }
4 { Write-host "El resultado del resto es" ($num1 % $num2) }
default { Write-host "No es ninguna operación" }
}

