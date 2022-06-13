<?php 
$conexion = mysqli_connect('localhost', 'root', '','biblioteca');
if(!$conexion)echo  'No se ha podido conectar a la base de datos';
else mysqli_set_charset($conexion,"utf8");

?>