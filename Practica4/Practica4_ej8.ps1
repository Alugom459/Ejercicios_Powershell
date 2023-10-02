
[int]$num = Read-Host "Introduzca el numero?"

for ( $i=1; $i -le $num; $i++ ) {
Write-Host ""$esc=$i*2-1

    for ( $j=1;$j -le $i; $j++ ){
    write-host -NoNewline "$esc "$esc -=2}
    }
    
