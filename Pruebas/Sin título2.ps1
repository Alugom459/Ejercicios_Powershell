#$acl = Get-Acl -Path C:\Prueba 
#$acl.Access | Format-table
#$acl.SetAccessRuleProtection($true, $true)
#$acl | Set-Acl -Path C:\Prueba
$listace = $acl.access
foreach ( $ace in $listace) {
$ace | format-list
$acl.RemoveAccessRule($ace)
}
$permisoadd = 'Administradores', 'FullControl', 'ContainerInherit, ObjectInherit', 'None', 'Allow'
$ace = New-Object -TypeName System.Security.Access.Control.FileSystemAccessRule -ArgumentList $permisoadd
$acl.SetAccessRule($ace)
$acl | Set-Acl -Path C:\Prueba