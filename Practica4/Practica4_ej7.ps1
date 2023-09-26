$num = Read-host "Introduce un numero entero"

if  ($num = [int]$num) {

for ($i = 1; $i -le $num; $i++) {

Write-host ("*" * "$i") }
}

