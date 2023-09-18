[int]$horas = Read-host "Introduce el numero de horas trabajadas"
[int]$precio = Read-host "Introduce el coste por hora trabajada"

Write-host "El precio a pagar es de:" ($horas * $precio) "€"