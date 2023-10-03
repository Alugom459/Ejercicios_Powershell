

Function Sumar {
    param (
        [int]$x,
        [int]$y
    )
    $sumar = $x + $y
    Write-Host "La respuesta es $sumar"
}

Function Restar {
    param (
        [int]$x,
        [int]$y
    )
    $Restar = $x - $y
    Write-Host "La respuesta es $Restar"
}

Function Multiplicar {
    param (
        [int]$x,
        [int]$y
    )
    $sumar = $x * $y
    Write-Host "La respuesta es $Multiplicar"


}

Function Resto {
    param (
        [int]$x,
        [int]$y
    )
    $Resto = $x % $y
    Write-Host "La respuesta es $Resto"
}


Write-Host "**** CALCULADORA ****"
Write-Host "1.Sumar"
Write-host "2.Restar"
Write-host "3.Multiplicar"
Write-host "4.Resto"

$Op = Read-Host "¿Qué desea hacer? Elige una opción:"

[int]$x = Read-host "Introduce el primer numero"
[int]$y = Read-host "Introduce el segundo numero"

switch ($op) { 

1 { Sumar $x $y }

2 { Resta $x $y }

3 { Multiplicar $x $y }

4 { Resto $x $y }

default { Write-host "No es ninguna operación" }

}