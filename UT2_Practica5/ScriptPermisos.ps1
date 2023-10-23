

New-Item -ItemType Directory -Path "C:\Empresa"
New-SmbShare -Name "Empresa" -path "C:\Empresa"
Grant-SmbShareAccess -Name "Empresa" -AccountName "Usuarios del dominio" -AccessRight read -Force


$departament = Import-Csv -Path C:\Users\Administrador\Desktop\archivos\departamentos.csv -Delimiter ';'
foreach ( $depfold in $departament) {

$Depdir = $depfold.departamento

New-Item -ItemType Directory -Path "C:\Empresa\$depdir"
New-SmbShare -Name "$depdir" -path "C:\Empresa\$depdir"

Grant-SmbShareAccess -Name "$depdir" -AccountName "$depdir" -AccessRight change -Force

Grant-SmbShareAccess -Name "$depdir" -AccountName "Administradores" -AccessRight full -Force

Grant-SmbShareAccess -Name "$depdir" -AccountName "Usuarios del dominio" -AccessRight read -Force

$acl = get-acl -Path C:\Empresa\$depdir
$acl.SetAccessRuleProtection($true,$false)

$permiso='Administradores', 'FullControl', 'ContainerInherit,ObjectInherit', 'None', 'Allow'
$ace= New-Object -TypeName System.Security.AccessControl.FileSystemAccessRule -ArgumentList $permiso
$acl.SetAccessRule($ace)
$ace | Format-Table

$permiso='Usuarios del dominio', 'Read', 'ContainerInherit,ObjectInherit', 'None', 'Allow'
$ace= New-Object -TypeName System.Security.AccessControl.FileSystemAccessRule -ArgumentList $permiso
$acl.SetAccessRule($ace)
$ace | Format-Table

$permiso="$depdir", 'Modify', 'ContainerInherit,ObjectInherit', 'None', 'Allow'
$ace= New-Object -TypeName System.Security.AccessControl.FileSystemAccessRule -ArgumentList $permiso
$acl.SetAccessRule($ace)
$ace | Format-Table
$acl | Set-Acl -Path C:\Empresa\$depdir
}


