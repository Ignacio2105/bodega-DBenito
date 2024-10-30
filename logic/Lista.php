<?php
require '../includes/conexion.php';

// Obtener id de la categoría
$sql_categoria = "SELECT idcategoria FROM categoria WHERE nombrecategoria = '$categoria'";
$result_categoria = $conn->query($sql_categoria);

if ($result_categoria->num_rows > 0) {
    $row_categoria = $result_categoria->fetch_assoc();
    $id_categoria = $row_categoria['idcategoria'];

    // Consulta para obtener productos de la categoría con cantidad mayor a 0
    $sql_productos = "SELECT idproducto, nombreproducto, precioprodu, enlace, calificacion, descuento FROM Producto WHERE idcategoria = $id_categoria AND cantidad > 0";
    $result_productos = $conn->query($sql_productos);

    if ($result_productos->num_rows > 0) {
        echo '<main class="main-content">';
        echo '<div class="container-fluid productos">';
        echo '<div class="product-grid">';

        // Generar productos
        while ($row_producto = $result_productos->fetch_assoc()) {
            echo '<div class="product-card">';
            
            if ($row_producto["descuento"] > 0) {
                echo '<div class="discount"><span>-' . $row_producto["descuento"] . '%</span></div>';
            }

            echo '<img src="' . $row_producto["enlace"] . '" alt="' . $row_producto["nombreproducto"] . '" class="img-fluid">';

            echo '<div class="star-container">';
            for ($i = 1; $i <= 5; $i++) {
                echo $i <= $row_producto["calificacion"] ? '<i class="fa-solid fa-star"></i>' : '<i class="fa-regular fa-star"></i>';
            }
            echo '</div>';

            echo '<h3>' . $row_producto["nombreproducto"] . '</h3>';
            
            echo '<div class="product-footer">';
            echo '<div class="cart-icon"><i class="fa-solid fa-basket-shopping"></i></div>';
            echo '<div class="price-container">';
            if ($row_producto["descuento"] > 0) {
                $preciodesc = $row_producto["precioprodu"] * (1 - ($row_producto["descuento"] / 100));
                echo '<span>S/' . number_format($preciodesc, 2) . '</span>';
                echo '<span class="price-original">S/' . $row_producto["precioprodu"] . '</span>';
            } else {
                echo '<span>S/' . $row_producto["precioprodu"] . '</span>';
            }
            echo '</div></div>';

            echo '<div class="button-group">';
            echo '<span class="view-product" data-product=\'' . json_encode($row_producto) . '\'><i class="fa-regular fa-eye"></i></span>';
            echo '<span><i class="fa-regular fa-heart"></i></span>';
            echo '<span><i class="fa-solid fa-code-compare"></i></span>';
            echo '</div>';
            echo '</div>';
        }
        echo '</div></div></main>';
    } else {
        echo "No hay productos en la categoría '$categoria'.";
    }
} else {
    echo "Categoría '$categoria' no encontrada.";
}

$conn->close();
?>