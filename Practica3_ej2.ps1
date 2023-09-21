$edad = Read-host "Cual es su edad?"

If ( $edad -ge 18 ) { Write-host "El usuario es mayor de edad"}

else { Write-host "El usuario no es mayor de edad" }