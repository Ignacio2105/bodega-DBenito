<?php
// Conectar a la base de datos con tu configuración
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "dbenito";

$conn = new mysqli($servername, $username, $password, $dbname);

// Verificar la conexión
if ($conn->connect_error) {
    die("Error en la conexión: " . $conn->connect_error);
}

// Validar si se envió el formulario
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Recibir los datos del formulario
    $nombrecliente = trim($_POST['nombre_completo']);
    $correocliente = trim($_POST['correo_electronico']);
    $telefonocliente = trim($_POST['telefono']);
    $usuario = trim($_POST['usuario']);
    $contrasena = trim($_POST['contrasena']);


    if (empty($nombrecliente) || empty($correocliente) || empty($telefonocliente) || empty($usuario) || empty($contrasena)) {
        $response['success'] = false;
        $response['message'] = "Todos los campos son obligatorios.";
        header('Content-Type: application/json');
        echo json_encode($response);
        exit();  // Salir para que no continúe procesando
    }
    
    if (!filter_var($correocliente, FILTER_VALIDATE_EMAIL)) {
        $response['success'] = false;
        $response['message'] = "El correo electrónico no es válido.";
        header('Content-Type: application/json');
        echo json_encode($response);
        exit();
    }
    
    if (!preg_match('/^[9][0-9]{8}$/', $telefonocliente)) {
        $response['success'] = false;
        $response['message'] = "El número de teléfono debe comenzar con 9 y tener 9 dígitos.";
        header('Content-Type: application/json');
        echo json_encode($response);
        exit();
    }
    
    if (strlen($contrasena) < 6) {
        $response['success'] = false;
        $response['message'] = "La contraseña debe tener al menos 6 caracteres.";
        header('Content-Type: application/json');
        echo json_encode($response);
        exit();
    }
    
    // Verificar si el usuario o correo ya existen
    $sql = "SELECT * FROM cliente WHERE usuario='$usuario' OR correocliente='$correocliente'";
    $result = $conn->query($sql);
    
    if ($result->num_rows > 0) {
        $response['success'] = false;
        $response['message'] = "El usuario o el correo electrónico ya están registrados";
        header('Content-Type: application/json');
        echo json_encode($response);
        exit();
    }
    
    // Si todo está bien, realizar el registro
    $contrasena_hash = password_hash($contrasena, PASSWORD_DEFAULT);
    $sql = "INSERT INTO cliente (nombrecliente, correocliente, telefonocliente, usuario, contrasena)
            VALUES ('$nombrecliente', '$correocliente', '$telefonocliente', '$usuario', '$contrasena_hash')";
    
    if ($conn->query($sql) === TRUE) {
        $response['success'] = true;
        $response['message'] = "Registro exitoso.";
    } else {
        $response['success'] = false;
        $response['message'] = "Error al registrar: ".$conn->error;
    }
    
    header('Content-Type: application/json');
    echo json_encode($response);
    exit();
    
}

$conn->close();
