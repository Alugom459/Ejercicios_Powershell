$usuarios = Import-Csv Z:\Practica5\usuarios.csv

foreach ($usu in $Usuarios)
{
 	Write-Host "Usuario: $($usu.nombre) $($usu.apellidos) $($usu.grupo)"
}