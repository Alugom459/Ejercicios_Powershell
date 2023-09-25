[int]$Renta = Read-host "Introduzca su renta anual"

switch ($Renta) { 

      { $_ -le 10000 } { Write-host "Le corresponde un tipo impositivo del 5%" }

      { ($_ -gt 10000) -and ($_ -le 20000) } { Write-host "Le corresponde un tipo impositivo del 15%" }

      { ($_ -gt 20000 ) -and ($_ -le 35000) } { Write-host "Le corresponde un tipo impositivo del 20%" }

      { ($_ -gt 35000 ) -and ($_ -le 60000)  } { Write-host "Le corresponde un tipo impositivo del 30%" }

      { ($_ -gt 60000 ) } { Write-host "Le corresponde un tipo impositivo del 45%" }

      }

     

