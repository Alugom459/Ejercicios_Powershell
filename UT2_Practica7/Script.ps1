$empleados = Import-Csv -Path C:\Users\Administrador\Desktop\archivos\empleados.csv -Delimiter ';'





foreach ($emp in $empleados){

$nombre = $emp.nombre
$apellido = $emp.apellido
$nomape = "$nombre.$apellido"
$departament = $emp.departamento

    if ($departament -eq "PERSONAL"){
        Set-ADUser -Identity "$nomape" -ProfilePath "\\EMPRESA-DC1\Empresa_users$\$nomape" 
        
        
    }
}