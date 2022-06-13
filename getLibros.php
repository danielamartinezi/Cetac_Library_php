<?Php 
if(isset($_POST['id_asignaturas']) && isset($_POST['id_licenciaturas']) ){
    $id_asignaturas = $_POST['id_asignaturas'];
    $id_licenciaturas = $_POST['id_licenciaturas'];

    include_once 'cn/conexion_be.php';
    $libros = $conexion->query('SELECT * FROM vw_libros WHERE id_licenciaturas = '.$id_licenciaturas." AND id_asignaturas = ".$id_asignaturas);
    $libros = $libros->fetch_all(MYSQLI_ASSOC);

    echo json_encode($libros);



}
?>