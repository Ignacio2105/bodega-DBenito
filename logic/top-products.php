<?php
require '../includes/conexion.php'; // Asegúrate de incluir la conexión a tu base de datos
$categoria = $_POST['categoria'];

if ($categoria == 'destacados') {
    $query = "SELECT idproducto, nombreproducto, precioprodu, enlace, calificacion, descuento 
              FROM Producto 
              WHERE calificacion = 5 
              ORDER BY RAND() 
              LIMIT 4";
} elseif ($categoria == 'recientes') {
    $query = "SELECT idproducto, nombreproducto, precioprodu, enlace, calificacion, descuento 
              FROM Producto 
              WHERE cantidad BETWEEN 1 AND 20 
              ORDER BY RAND() 
              LIMIT 4";
} elseif ($categoria == 'vendidos') {
    $query = "SELECT idproducto, nombreproducto, precioprodu, enlace, calificacion, descuento 
              FROM Producto 
              WHERE descuento BETWEEN 20 AND 100 
              ORDER BY RAND() 
              LIMIT 4";
}

$result_productos = $conn->query($query);

if ($result_productos->num_rows > 0) {

    while ($row_producto = $result_productos->fetch_assoc()) {
        /*Product Card 1*/
        echo '<div class="product-card">';
        /*Descuento*/
        if ($row_producto["descuento"] > 0) {
            echo '<div class="discount"><span>-' . $row_producto["descuento"] . '%</span></div>';
        }
        /*Imagen del producto*/
        echo '<img src="' . $row_producto["enlace"] . '" alt="' . $row_producto["nombreproducto"] . '" class="img-fluid">';
        /*Calificació*/
        echo '<div class="star-container">';
        $calificacion = $row_producto["calificacion"];
        for ($i = 1; $i <= 5; $i++) {
            if ($i <= $calificacion) {
                echo '<i class="fa-solid fa-star"></i>'; // Estrella llena
            } else {
                echo '<i class="fa-regular fa-star"></i>'; // Estrella vacía
            }
        }
        echo '</div>';
        /*Nombre del producto*/
        echo '<h3>' . $row_producto["nombreproducto"] . '</h3>';
        /*Precio y descuento*/
        echo '<div class="product-footer">';
        echo '<div class="cart-icon">';
        echo '<i class="fa-solid fa-basket-shopping"></i>';
        echo '</div>';
        echo '<div class="price-container">';
        /*Con descuento*/
        if ($row_producto["descuento"] > 0) {
            $preciodesc = $row_producto["precioprodu"] * (1 - ($row_producto["descuento"] / 100));
            echo '<span>S/' . number_format($preciodesc, 2) . '</span>';
            echo '<span class="price-original">S/12.50</span>';
        } else {
            echo '<span>S/' . $row_producto["precioprodu"] . '</span>';
        }
        echo '</div>';
        echo '</div>';
        /*Button Group*/
        echo '<div class="button-group">';
        echo '<span>';
        echo '<i class="fa-regular fa-eye"></i>';
        echo '</span>';
        echo '<span>';
        echo '<i class="fa-regular fa-heart"></i>';
        echo '</span>';
        echo '<span>';
        echo '<i class="fa-solid fa-code-compare"></i>';
        echo '</span>';
        echo '</div>';
        echo '</div>';
    }
    
} else {
    echo '<p>No hay productos disponibles</p>';
}

$conn->close();
