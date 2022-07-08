<?php 
date_default_timezone_set('America/Mexico_City');
$mensaje = "";

//Se incluye la conexión a la base de datos
include_once 'cn/conexion_be.php';
$prestamos = $conexion->query('SELECT * FROM vw_listado_prestamo');
$prestamos = $prestamos->fetch_all(MYSQLI_ASSOC);
$date = date('Y-m-d H:m:s');

if(isset($_GET['id_retorno'])){
  $query = "UPDATE prestamos_libros SET retorno_libro=1, fecha_retorno = '$date' WHERE id_prestamos = ".$_GET['id_retorno'];
  $ejecutar = mysqli_query($conexion, $query);
  if($ejecutar = 1){
    header("Location: http://localhost/Cetac_Library_php/listado_prestamos.php");
  }

}

?>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>CETAC Library</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="./Estilos.css/bootstrap.min.css" rel="stylesheet">
  <link href="./Estilos.css/fontawesome/css/all.css" rel="stylesheet">
  <link rel="stylesheet" type="text/css" href="./assets/datatables.min.css"/>
  <link rel="stylesheet" type="text/css" href="./assets/datatables.css">

  <script type="text/javascript" src="./assets/datatables.min.js"></script>
  <script src="./js/bootstrap.bundle.min.js"></script>
  <script src="./js/jquery.min.js"></script>
  <script type="text/javascript" charset="utf8" src="./assets/datatables.js"></script>
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
            <li><a class="dropdown-item" href="./videos.php">Videos educativos</a></li>
            <li><a class="dropdown-item" href="./prestamos.php">Prestamos de libros</a></li>
            <li><a class="dropdown-item" href="./listado_prestamos.php">Listado de libros</a></li>
            <li><hr class="dropdown-divider"></li>
          </ul>
        </li>
      
    </ul>
    <form class="d-flex">
      </form>
  </div>
</nav>

<div class="container mt-5">
  <div class="row">
 
    <div class="col-sm-12">
      <div class="row">
        <div class="col-sm-12">
          <h1>Listado de Libros</h1>
          <h5 style="color:red"><?php echo $mensaje; ?></h5>
        </div>
          <!--Aquí va el formulario-->
          <table class ="table table-striped table-sm" id="prestamos">
            <thead style="background:#bfd5f5">
                <th>Solicitud</th>
                <th>Solicita</th>
                <th>Entrega</th>
                <th>Licenciatura</th>
                <th>Asignatura</th>
                <th>Libro</th>
                <th>Fecha prestamo</th>
                <th>Estatus</th>
                <th>Acciones</th>
            </thead>
            <tbody>
                
                   <?php
                    $i=1;
                    foreach ($prestamos as $datos):?>
                    <tr>
                    <td><?php echo $i; ?></td>
                    <td><?php echo $datos['solicita']; ?></td>
                    <td><?php echo $datos['entrega']; ?></td>
                    <td><?php echo $datos['descrip_licenciaturas']; ?></td>
                    <td><?php echo $datos['descrip_asinaturas']; ?></td>
                    <td><?php echo $datos['descrip_libros']; ?></td>
                    <td><?php echo $datos['fecha_prestamo']; ?></td>
                    <td><?php echo ($datos['retorno_libro']==1)?"Regresado":"Sin regresar"; ?></td>
                    <td><?php echo ($datos['retorno_libro']==1)?"":'<a href="?id_retorno='.$datos['id_prestamos'].'" class="btn btn-info">Retorno de libro</a>'; ?></td>
                    </tr>
                    <?php $i++; endforeach; ?>
                
            </tbody>
          </table>
         
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
  $(document).ready( function () {
    $('#prestamos').DataTable({
      language: {
        "decimal": "",
        "emptyTable": "No hay información",
        "info": "Mostrando _START_ a _END_ de _TOTAL_ Entradas",
        "infoEmpty": "Mostrando 0 to 0 of 0 Entradas",
        "infoFiltered": "(Filtrado de _MAX_ total entradas)",
        "infoPostFix": "",
        "thousands": ",",
        "lengthMenu": "Mostrar _MENU_ Entradas",
        "loadingRecords": "Cargando...",
        "processing": "Procesando...",
        "search": "Buscar:",
        "zeroRecords": "Sin resultados encontrados",
        "paginate": {
            "first": "Primero",
            "last": "Ultimo",
            "next": "Siguiente",
            "previous": "Anterior"
        }
    },
    });
} );
</script>
</body>
</html>

<?php $conexion->close(); ?>