Write-Host "Hola" $env:USERNAME
Write-Host "Tu directorio de trabajo es" $HOME
Write-host "Perteneces al dominio" (Get-WmiObject win32_computersystem).Domain
Write-host "Tu equipo se llama" $env:COMPUTERNAME