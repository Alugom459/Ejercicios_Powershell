[int]$edad = Read-host "Cual es su edad?"

$a = 1

while ($a -le $edad)

{
Write-host "Año"$a
$a++

}