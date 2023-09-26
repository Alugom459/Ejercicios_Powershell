[int]$random = Get-Random -Minimum 1 -Maximum 100

Write-host "Intenta adivinar el número secreto del 1 al 100"

while ($numero -ne $random){
$numero = read-host "Introduzca el numero"

switch ($random){

{ ($_ -lt $numero) } { Write-host "El numero es menor"}

{ ($_ -gt $numero) } {Write-host "El numero es mayor"}

{ ($_ -eq $numero) } {Write-host "Enhorabuena"}

}

}