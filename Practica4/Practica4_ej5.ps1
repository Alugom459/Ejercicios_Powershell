[int]$numero = Read-host "Introduce el numero a multiplicar"

For ($i=1; $i -le 10; $i++) { "$numero * $i = $($numero * $i)"}
