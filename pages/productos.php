<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link rel="stylesheet" href="/assets/css/productos.css">
    <title>Categorias</title>
</head>

<body>
<?php include '../includes/header.php'; ?>
    <!-- Banner -->
    <section class="banner" style="background-image: linear-gradient(100deg, #000000, #00000020), url('<?php include('../logic/nom_categoria.php');echo $imagen; ?>');">
        <div class="content-banner">
            <h1><?php include('../logic/nom_categoria.php'); echo $nombrecategoria; ?></h1>
        </div>
    </section>
    <!--Fin Banner -->
    <main class="main-content">
        <div class="container-fluid productos">
            <div class="product-grid">
                <div class="product-card">
                    <div class="discount"><span>5%</span></div>
                    <img src="https://plazavea.vteximg.com.br/arquivos/ids/22976337-1000-1000/20326303.jpg" alt="yogurt" class="img-fluid">
                    <div class="star-container">
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-regular fa-star"></i>
                    </div>
                    <h3>Yogurt Laive Gloria</h3>
                    <div class="product-footer">
                        <div class="cart-icon">
                            <i class="fa-solid fa-basket-shopping"></i>
                        </div>
                        <div class="price-container">
                            <span>S/12.00</span>
                            <span class="price-original">S/12.50</span>
                        </div>
                    </div>
                    <div class="button-group">
                        <span>
                            <i class="fa-regular fa-eye"></i>
                        </span>
                        <span>
                        <i class="fa-regular fa-heart"></i>
                        </span>
                        <span>
                            <i class="fa-solid fa-code-compare"></i>
                        </span>
                    </div>
                </div>
 
            </div>
        </div>
        </main>
        <!-- Modal para ver producto -->
<div id="product-modal" class="product-modal hidden">
    <div class="modal-content">
        <span class="close-button">&times;</span>
        <div class="modal-image">
            <img src="https://plazavea.vteximg.com.br/arquivos/ids/22976337-1000-1000/20326303.jpg" alt="yogurt" class="img-fluid">
        </div>
        <div class="modal-info">
            <h3>Yogurt Laive Gloria</h3>
            <div class="modal-price">
                <span>Ahora: S/12.00</span>
                <span class="price-original">Antes: S/12.50</span>
            </div>
            <div class="star-container">
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-regular fa-star"></i>
            </div>
        </div>
    </div>
</div>

<!-- Fin lista de Productos -->
<?php include '../includes/footer.html'; ?>
</body>

</html>