<?php
session_start(); // Iniciar la sesión para manejar la autenticación

// Conectar a la base de datos
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
    // Verificar si la acción es "login" o "logout"
    if (isset($_POST['accion']) && $_POST['accion'] == 'login') {
        // Recibir los datos del formulario de inicio de sesión
        $usuario = trim($_POST['usuario']);
        $contrasena = trim($_POST['contrasena']);

        // Validar si el campo de usuario está vacío
        if (empty($usuario) || empty($contrasena)) {
            $response['success'] = false;
            $response['message'] = "Todos los campos son obligatorios.";
            header('Content-Type: application/json');
            echo json_encode($response);
            exit();  // Salir para que no continúe procesando
        } else {
            // Buscar al usuario en la base de datos (puede ser por usuario o por correo)
            $sql = "SELECT * FROM cliente WHERE usuario='$usuario' OR correocliente='$usuario'";
            $result = $conn->query($sql);

            if ($result->num_rows == 1) {
                // Obtener los datos del usuario
                $row = $result->fetch_assoc();
                $contrasena_hash = $row['contrasena'];

                if (password_verify($contrasena, $contrasena_hash)) {
                    // Iniciar sesión y guardar los datos del cliente en la sesión
                    $_SESSION['idcliente'] = $row['idcliente'];
                    $_SESSION['usuario'] = $row['usuario'];
                    $_SESSION['nombrecliente'] = $row['nombrecliente'];
                    $_SESSION['correocliente'] = $row['correocliente'];
                    $_SESSION['telefonocliente'] = $row['telefonocliente'];

                    // Enviar respuesta JSON con la URL de redirección
                    $response['success'] = true;
                    $response['redirect'] = '../pages/Principal.php';
                    header('Content-Type: application/json');
                    echo json_encode($response);
                    exit();
                } else {
                    $response['success'] = false;
                    $response['message'] = "Contraseña incorrecta.";
                    header('Content-Type: application/json');
                    echo json_encode($response);
                    exit();  // Salir para que no continúe procesando
                }
            } else {
                $response['success'] = false;
                $response['message'] = "El usuario o correo electrónico no existe.";
                header('Content-Type: application/json');
                echo json_encode($response);
                exit();  // Salir para que no continúe procesando
            }
        }
    } elseif (isset($_POST['accion']) && $_POST['accion'] == 'logout') {
        // Cerrar sesión
        session_unset(); // Eliminar todas las variables de sesión
        session_destroy(); // Destruir la sesión

        // Redirigir al usuario a la página de inicio de sesión
        header("Location: ../pages/Principal.php");
        exit();
    }
}

$conn->close();
?>
