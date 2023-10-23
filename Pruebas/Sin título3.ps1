$acl = get-acl -Path C:\Prueba2
$acl.SetAccessRuleProtection($true,$false)
$permiso = 'Administradores', 'FullControl', 'ContainerInherit, ObjectInherit', 'None', 'Allow'
$ace = New-Object -TypeName System.Security.AccessControl.FileSystemAccessRule -ArgumentList $permiso
$acl.SetAccessRule($ace)
$acl | Set-Acl -Path C:\Prueba2

