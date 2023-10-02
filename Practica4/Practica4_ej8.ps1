<<<<<<< HEAD
[int]$num = Read-Host "Introduzca el numero?"

for ( $i=1; $i -le $num; $i++ ) {
Write-Host ""$esc=$i*2-1

    for ( $j=1;$j -le $i; $j++ ){
    write-host -NoNewline "$esc "$esc -=2}
    }
    
=======
$num = Read-host "Introduce un numero entero"


for ($i = 1; $i -le $num; $i++) { 
    Write-Host 
    for ($j = $i; $j -ge 1; $j--)
    { 
        write-host -nonewline "$j " 
    } 
}

>>>>>>> d988c7b (.)
