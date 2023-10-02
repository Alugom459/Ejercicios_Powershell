<<<<<<< HEAD
$contraseña = "C0ntraseña"

$intento = Read-Host "Ingrese la contraseña"

while ($intento -ne $Contraseña) {
    Write-Host "Contraseña incorrecta. Inténtelo de nuevo."
    $intento = Read-Host "Ingrese la contraseña"
=======
[string]$pass = Read-host "Introduzca la contrase馻"

while ($pass -ne [string]"Contrase馻") {

    if ($pass -eq [string]"Contrase馻") { Write-host "La contrase馻 es correcta"}
    else {Write-host "La contrase馻 es incorrecta"
        $pass = Read-host "Introduzca la contrase馻"
    }
  
>>>>>>> d988c7b (.)

    }
