<?php 

include '../cn/conexion_be.php';


$nombre_completo = $_POST['nombre'];
$Primer_apellido = $_POST['primerApellido'];
$Segundo_apellido = $_POST['segundoApellido'];
$correo = $_POST['email'];
$usuario = $_POST['usser'];
$contrasena = $_POST['passwd'];




$query = "INSERT INTO usuarios(nombre, primer_apellido, segundo_apellido, correo_elec, usuario, contraseña)
          Values('$nombre_completo', '$Primer_apellido', '$Segundo_apellido', '$correo', $usuario '$contrasena')";


//verificar que el correo no se repita en la base de datos
$verificar_correo = mysqli_query($conexion, "SELECT * FROM usuarios WHERE correo_elec = '$correo'",);

if(mysqli_num_rows($verificar_correo) > 0){
    echo '
         <script>
               alert("Este correo ya esta registrado, intenta con otro");
               window.location = "../login_register/index.php";         
         </script>
    ';
}

//verificar que el usuario no se repita en la base de datos

$verificar_usuario = mysqli_query($conexion, "SELECT * FROM usuarios WHERE usuario ='$usuario' ");

if(mysqli_num_rows($verificar_usuario)>0){
    echo'
         <script>
               alert("Este usuario ya esta registrado, intente con otro");
               window.location = "../login_register/index.php";
         </script>
         ';

}


$ejecutar = mysqli_query($conexion, $query);

 if($ejecutar){

    echo'
        <script>
            alert("El usuario se ha almacenado exitosamente");
            window.location= "../login_register/index.php";
        </script>
        ';
 }

?>