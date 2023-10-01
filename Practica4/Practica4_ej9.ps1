$contraseña = "C0ntraseña"

$intento = Read-Host "Ingrese la contraseña"

while ($intento -ne $Contraseña) {
    Write-Host "Contraseña incorrecta. Inténtelo de nuevo."
    $intento = Read-Host "Ingrese la contraseña"

    }
