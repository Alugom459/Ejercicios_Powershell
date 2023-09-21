$file = Read-host "Elige tu archivo"

$tipo = if (test-path -path $file -PathType Container) { Write-host "Es una Carpeta" }
        elseif (test-path -path $file -pathtype Leaf) { Write-host "Es un Fichero" }
        else {  write-host "No existe el archivo" }
        

