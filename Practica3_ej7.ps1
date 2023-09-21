
[string]$guess = Read-host "Escriba la contraseña:"
[string]$contraseña = "c0ntr4seña"

If ($guess -eq $contraseña) { Write-host "La contraseña es correcta"}
Else {Write-host "la contraseña es incorrecta"}

