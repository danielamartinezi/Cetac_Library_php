<?php 

include 'conexion_be.php';


$nombre_completo = $_POST['nombre'];
$correo = $_POST['email'];
$usuario = $_POST['usser'];
$contrasena = $_POST['passwd'];

$query = "INSERT INTO usuarios('nombre_completo', 'correo', 'usuario', 'contrasena')
          Values('$nombre_completo', '$correo', '$usuario', '$contrasena')";

$ejecutar = mysqli_query($conexion, $query);





?>