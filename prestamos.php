<?php 

//Se incluye la conexión a la base de datos
include_once 'cn/conexion_be.php';
$carreras = $conexion->query('SELECT * FROM cat_licenciaturas');
$carreras = $carreras->fetch_all(MYSQLI_ASSOC);

//se busca los prestadores
$prestadores = $conexion->query('SELECT * FROM usuarios WHERE id_perfil = 1');
$prestadores = $prestadores->fetch_all(MYSQLI_ASSOC);

//se busca el que recibe
$recibe = $conexion->query('SELECT * FROM usuarios WHERE id_perfil BETWEEN 2 AND 4');
$recibe = $recibe->fetch_all(MYSQLI_ASSOC);

if(isset($_POST['solicitar'])){

  $id_libro = $_POST['id_libros'];
  $id_nombre_recibe = $_POST['id_nombre_recibe'];
  $id_nombre_prestador = $_POST['id_nombre_prestador'];
  $observaciones = $_POST['observaciones'];

  $query = "INSERT INTO prestamos_libros (id_libro, nombre_recibe, nombre_prestador,retorno_libro, observaciones)
            VALUES ('$id_libro', '$id_nombre_recibe', '$id_nombre_prestador', 0,'$observaciones')";
  $ejecutar = mysqli_query($conexion, $query);

}

?>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap 5 Website Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="./Estilos.css/bootstrap.min.css" rel="stylesheet">
  <link href="./Estilos.css/fontawesome/css/all.css" rel="stylesheet">
  <script src="./js/bootstrap.bundle.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <style>
.img-left{width:15%;margin-top:-10%;}
.img-left img{width:80%;max-width: 100%;}
.img-right{width:20%;margin-top:-10%;margin-left:80%;}
.img-right img{width:100%;max-width: 100%;}
.tamaño_letra{font-size: 70px;}
  </style>
</head>
<body>

<div class="p-5 text-white text-center" style="background:#bfd5f5">

  <div style="margin-top:-40px;" width="100%"> <img src="imagenes/CETACLIB.PNG" class="slogan" alt=""> </div>
 <div class="img-left"> <img src="imagenes/logo cetac.png" class="slogan" alt="" width="10%" > </div>
 <br>
 <div class="img-right"> <img src="imagenes/DGETAyCM_NUEVO.PNG" class="slogan_2" alt=""> </div>
</div>

<nav class="navbar navbar-expand-sm" style= "background: #5890ca!important">
  <div class="container-fluid">
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link text-white active" href="./login_register/index.php">iniciar sesion <i class=" fa-user"></i></a>
      </li>
      <li class="nav-item">
        <a class="nav-link text-white" href="./login_register/index.php">Registrarse</a>
      </li>
     
      
      <li class="nav-item dropdown">
          <a class="nav-link text-white dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
          Libros
          </a>
          <ul class="dropdown-menu fondocolor" aria-labelledby="navbarDropdown">
            <li><a class="dropdown-item" href="./inicio?opt=1">Tec. Sistemas</a></li>
            <li><a class="dropdown-item" href="./inicio?opt=2">Tec. L.A</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="./inicio?opt=3">Tec. R.H</a></li>
          </ul>
        </li>
       
        <li class="nav-item dropdown">
          <a class="nav-link text-white dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
          servicios
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
            <li><a class="dropdown-item" href="">Videos educativos</a></li>
            <li><a class="dropdown-item" href="./prestamos.php">Prestamos de libros</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="#">Informacion sobre libros</a></li>
          </ul>
        </li>
      
    </ul>
    <form class="d-flex">
        <input class="form-control me-2" type="text" placeholder="Escribir el libro">
        <button class="btn btn-primary" type="button">Buscar</button>
      </form>
  </div>
</nav>

<div class="container mt-5">
  <div class="row">
    <div class="col-sm-2">
      <h2>About Me</h2>
      <h5>Photo of me:</h5>
      <div class="fakeimg">Fake Image</div>
      <p>Some text about me in culpa qui officia deserunt mollit anim..</p>
      <h3 class="mt-4">Some Links</h3>
      <p>Lorem ipsum dolor sit ame.</p>
      <ul class="nav nav-pills flex-column">
        <li class="nav-item">
          <a class="nav-link active" href="#">Active</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">link</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Link</a>
        </li>
        <li class="nav-item">
          <a class="nav-link disabled" href="#">Disabled</a>
        </li>
      </ul>
      <hr class="d-sm-none">
    </div>
    <div class="col-sm-10">
      <div class="row">
          <!--Aquí va el formulario-->
          <form action="" method="POST">
            <label for="browser" class="form-label">Carrera</label>
            <select class="form-select" id = "id_licenciaturas" name = "id_licenciaturas" required >
                <option selected disabled value = "" >Selecciona la carrera</option>
                <?php
                    foreach ($carreras as $dato) :?>
                        <option value = "<?php echo $dato['id_licenciaturas']?>"><?php echo $dato['descrip_licenciaturas']?> </option>
               <?php
                    endforeach;
                ?>
            </select>

          <label for="browser" class="form-label">Asignaturas</label>
          <select class="form-select"  id = "id_asignaturas" name = "id_asignaturas" required >
          <option selected disabled value = "" >Selecciona la asignatura</option>


          </select>

          <label for="browser" class="form-label">Libros</label>
          <select class="form-select" id = "id_libros" name = "id_libros" required >
          <option selected disabled value = "" >Selecciona el libro</option>
          </select>

          <label for="browser" class="form-label">Nombre del que recibe</label>
          <select class="form-select" id = "id_nombre_recibe" name = "id_nombre_recibe" required>
          <option selected disabled value = "" >Selecciona la persona que recibe</option>
          <?php
            foreach($recibe as $dato) :?>
                 <option value = "<?php echo $dato['id_usuaarios']?>"><?php echo $dato['nombre']." ".$dato['primer apellido']." ".$dato['segundo apellido'];?>
          <?php
            endforeach;
          ?>
  
          </select>

          <label for="browser" class="form-label">Nombre del prestador</label>
          <select class="form-select" id = "id_nombre_prestador" name = "id_nombre_prestador" required>
          <option selected disabled value = "" >Selecciona el nombre del prestador</option>
          <?php
            foreach($prestadores as $dato) :?>
                 <option value = "<?php echo $dato['id_usuaarios']?>"><?php echo $dato['nombre']." ".$dato['primer apellido']." ".$dato['segundo apellido'];?>
          <?php
            endforeach;
          ?>

 
          </select>
            <!--Aquí va el textarea que es para las observaciones-->
            <label for="observaciones">Observaciones:</label></p>
            <textarea class = "form-control" id="observaciones" name="observaciones" rows="4" cols="50" required></textarea><br>            
            <input type="submit" name="solicitar" class="btn btn-success" value="Solicitar">
        </div>
        </form>
    </div>
</div>
</div>

<div class="mt-5 p-4 text-white text-center" style= "background: #5890ca!important">
    <div class="row">
        <div class="col-md-6">
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3725.5779107198105!2d-101.29333957745683!3d20.96945914134893!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x842b77c7f4124805%3A0x8de4735943393400!2sCETAC%2013%20GUANAJUATO%2C%20GTO!5e0!3m2!1ses!2smx!4v1653583634955!5m2!1ses!2smx" width="300" height="200" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
        </div>
        <div class="col-md-6">

            <span style="float:left"><a href="tel:+52 473 734 7201" class="text-white"> <i class="fas fa-phone-square"></i>_473 734 7201</a></span><br>
            <span style="float:left"><a href="mailto:cetac.gto@gmail.com" class="text-white"><i class="fas fa-envelope"></i>_cetac.gto@gmail.com</a></span><br>
            <span style="float:left"><a href="https://www.facebook.com/CETAC-13-Plantel-Guanajuato-106353744425304"class="text-white"><i class="fa-brands fa-facebook"></i>_Cetac_13/Oficial</a></span><br>
            <span style="float:left"><a href="#" class="text-white"><li class="fab fa-instagram"></i>_Cetac_13/Oficial</a></span><br>
        </div>
    </div>
</div>

<script>
$(document).ready(function(){
  $("#id_licenciaturas").on("change", function(){
      valor = $("#id_licenciaturas").val();

      $.ajax({
        url: 'getAsignaturas.php',
        type: 'post',
        dataType: 'json',
        data: {id_licenciatura:valor},
        
        success: function (response, textStatus, jqXHR) {
          $("#id_asignaturas").empty();

          response.forEach(function(elemento, indice) {
            asignatura = elemento['descrip_asinaturas'];
            id_asignatura = elemento['id_asignaturas'];          

            $("#id_asignaturas").append(new Option(asignatura, id_asignatura));           

          });

        },
        
        error: function (jqXHR, textStatus, errorThrown) {
          alert('error');
          console.log('error(s):' + textStatus, errorThrown);
        }
      });   
  });
  

  $("#id_asignaturas").on("change", function(){
    licenciatura = $("#id_licenciaturas").val();
    asignatura = $("#id_asignaturas").val();

      $.ajax({
        url: 'getLibros.php',
        type: 'post',
        dataType: 'json',
        data: {id_licenciaturas:licenciatura,id_asignaturas:asignatura},
        
        success: function (response, textStatus, jqXHR) {
          $("#id_libros").empty();

          response.forEach(function(elemento, indice) {
            libro = elemento['descrip_libros'];
            id_libro = elemento['id_libros_carrera_asignaturas'];          

            $("#id_libros").append(new Option(libro, id_libro));           

          });

        },
        
        error: function (jqXHR, textStatus, errorThrown) {
          alert('error');
          console.log('error(s):' + textStatus, errorThrown);
        }
      });   
  });
  
});


</script>
</body>
</html>

<?php $conexion->close(); ?>