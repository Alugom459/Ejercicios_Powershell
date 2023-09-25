[int]$numero1 = read-host "Introduce el primer numero"
[int]$numero2 = read-host "Introduce el segundo numero"

If ($numero1 -gt $numero2) {write-host "El primer numero es mayor"}

Elseif ($numero1 -eq $numero2) {write-host "Ambos numeros son iguales"}

Else {write-host "El primer numero es menor"}

