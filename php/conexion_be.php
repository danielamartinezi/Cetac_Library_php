<?php 

/*$conexion = mysqli_connect("localhost", "root", "", "login_register_db");*/
$conexion = mysqli_connect('localhost', 'root', '');
mysql_select_db('login_register_db', $conexion);


/*if($conexion){

   echo 'Conectado exitosamente a la base de datos';
}else{

   echo  'No se ha podido conectar a la base de datos';
}*/

?>