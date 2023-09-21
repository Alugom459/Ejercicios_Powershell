$file = Read-host "Elige tu archivo"
Test-path -Path $file

if ( $file = "True" ) { Write-host "El archivo existe" } else { Write-host "El archivo no existe" }
