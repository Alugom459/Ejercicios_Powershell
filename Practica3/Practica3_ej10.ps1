[int]$puntos = Read-Host "Introduzca los puntos obtenidos"

Switch ($puntos) {

{ ($puntos -eq 0.0) } {Write-host "Inaceptable"}

{ ($puntos -eq 0.4) } {Write-host "Aceptable"}

{ ($puntos -eq 0.6) } {Write-host "Meritorio"}

}

Write-host "Le corresponde" ($puntos * 2400)