
[string]$guess = Read-host "Escriba la contrase�a:"
[string]$contrase�a = "c0ntr4se�a"

If ($guess -eq $contrase�a) { Write-host "La contrase�a es correcta"}
Else {Write-host "la contrase�a es incorrecta"}

