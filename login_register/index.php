<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login y Registro - CETAC LIBRARY</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="assets/css/estilos.css">
    
</head>
<body style="background-image:url('../imagenes/Fondo_registro_2.jfif')">
    <main>

        <div class="contenedor__todo">
            <div class="caja__trasera">
                <div class="caja_trasera-login">
                    <h3>¿Ya tienes una cuenta?</h3>
                    <p>Inicia sesion para entrar a la pagina</p>
                    <button id="btn__iniciar-sesion">Iniciar sesion</button>
                </div>
                <div class="caja_trasera-register">
                    <h3>¿Aun no tienes una cuenta?</h3>
                    <p>Registrate para que puedas iniciar sesion</p>
                    <button id="btn__registrarse">Registrate</button>
                </div>
            </div>
            <!--Formulario de login y registro-->
            <div class="contenedor__login-register">
                <!--Login-->
                <form action="" class="formulario__login">
                    <h2>Iniciar sesion</h2>
                    <input type="text" placeholder="Correo electronico">
                    <input type="password" placeholder="contrasena">
                    <button>Entrar</button>
                </form>
               <!--Registro-->
                <form action="registro_usuario_be.php" method="POST" class="formulario__register">

                    <h2>Registrarse</h2>
                    <input type="text" placeholder="Nombre" name="nombre">
                    <input type="text" placeholder="primer apellido" name="primerApellido">
                    <input type="text" placeholder="segundo apellido" name="segundoApellido">
                    <input type="text" placeholder="Correo electronico" name="email">
                    <input type="text" placeholder="Usuario" name="usser">
                    <input type="password" placeholder="contraseña" name="passwd">
                    <button>Registrarse</button>
                </form>
            </div>
        </div>
    </main>
   <script src="../login_register/assets/js/script.js"></script>
</body>
</html>

