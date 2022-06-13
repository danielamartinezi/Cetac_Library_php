<?Php 

if(isset($_POST['id_licenciatura'])){
    $id_licenciatura = $_POST['id_licenciatura'];

    include_once 'cn/conexion_be.php';
    $asignaturas = $conexion->query('SELECT DISTINCT (descrip_asinaturas), id_asignaturas FROM vw_libros WHERE id_licenciaturas = '.$id_licenciatura);
    $asignaturas = $asignaturas->fetch_all(MYSQLI_ASSOC);

    echo json_encode($asignaturas);
}
?>