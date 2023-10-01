$edad = read-host "Introduce la edad"

if ($edad -lt 4) {
    Write-host "La entrada es gratuita"
} elseif ($edad -ge 4 -and $edad -le 18) {
   Write-host "El precio es de 5€"
} else {
   Write-host "El precio es de 10€"
}