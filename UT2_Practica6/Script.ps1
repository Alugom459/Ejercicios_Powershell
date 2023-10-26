New-Item -ItemType Directory -Path C:\Empresa_users
New-SmbShare -Name "Empresa_users$" -path C:\Empresa_users

$empleados = Import-Csv -Path C:\Users\Administrador\Desktop\archivos\empleados.csv -Delimiter ';'

foreach ( $emp in $empleados) {

$nombre = $emp.nombre
$apellido = $emp.apellido
$nomape = "$nombre.$apellido"

New-Item -ItemType Directory -Path C:\Empresa_users\$nomape
New-SmbShare -Name "$nomape" -path C:\Empresa_users\$nomape
Grant-SmbShareAccess -Name $nomape -AccountName $nomape -AccessRight full -Force
Revoke-SMBShareAccess -name $nomape -AccountName "Todos"
Grant-SmbShareAccess -Name $nomape -AccountName "Administradores" -AccessRight full -Force

$acl = get-acl -Path C:\Empresa_users\$nomape
$acl.SetAccessRuleProtection($true,$false)

$permiso='Administradores', 'FullControl', 'ContainerInherit,ObjectInherit', 'None', 'Allow'
$ace= New-Object -TypeName System.Security.AccessControl.FileSystemAccessRule -ArgumentList $permiso
$acl.SetAccessRule($ace)
$ace | Format-Table

$permiso=$nomape, 'FullControl', 'ContainerInherit,ObjectInherit', 'None', 'Allow'
$ace= New-Object -TypeName System.Security.AccessControl.FileSystemAccessRule -ArgumentList $permiso
$acl.SetAccessRule($ace)
$ace | Format-Table
$acl | Set-Acl -Path C:\Empresa_users\$nomape



Set-ADUser -Identity "$nomape" -ScriptPath "Carpetas.bat" -HomeDrive "Z:" -HomeDirectory \\Empresa-dc1\Empresa_users$\$nomape 
}