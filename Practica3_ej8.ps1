$nombre = read-host "Cual es su nombre?"
$sexo = read-host "Cual es su sexo?"

if ($sexo -eq "Mujer" -and $nombre -le "M") { Write-host "Perteneces al grupo A" }
Elseif ($sexo -eq "Hombre" -and $nombre -ge "N" ) { Write-host "Perteneces al grupo A" }
else { Write-host "Perteneces al grupo B"}
