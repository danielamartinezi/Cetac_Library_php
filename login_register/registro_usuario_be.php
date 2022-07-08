<?php 

include '../cn/conexion_be.php';


$nombre_completo = $_POST['nombre'];
$Primer_apellido = $_POST['primerApellido'];
$Segundo_apellido = $_POST['segundoApellido'];
$correo = $_POST['email'];
$usuario = $_POST['usser'];
$contrasena = $_POST['passwd'];




$query = "INSERT INTO usuarios(nombre, primer_apellido, segundo_apellido, correo_elec, contrasenia, id_perfil, usuario)
          VALUES('$nombre_completo', '$Primer_apellido', '$Segundo_apellido', '$correo', '$contrasena', '3','$usuario')";


//verificar que el correo no se repita en la base de datos
$verificar_correo = mysqli_query($conexion, "SELECT * FROM usuarios WHERE correo_elec = '$correo'");
$verificar_correo = $verificar_correo->fetch_all(MYSQLI_ASSOC);

if(empty($verificar_correo)){  
    $ejecutar = mysqli_query($conexion, $query);
    if($ejecutar==1){

        echo'
            <script>
                alert("El usuario se ha almacenado exitosamente");
                window.location= "../login_register/index.php";
            </script>
            ';
     }  

}else{
    echo "correo ya registrado";
}








?>