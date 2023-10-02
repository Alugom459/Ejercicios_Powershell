[int]$num = Read-host "Introduce un numero entero"


for ( $i = 1; $i -le $num; $i++) {
    Write-host 
    for ( $j = 1; $j -le $i; $j++){
        if ($j -eq $i){
        Write-host -NoNewline "*"}
        else { Write-host -NoNewline "- " }
        }
        }