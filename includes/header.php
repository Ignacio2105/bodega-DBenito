<header>
  <!--ENCABEZADO-->
  <div class="container-fluid encabezado">
    <div class="row align-items-center">
      <!-- 4 -->
      <div class="col-4 col-md-4 izquierda">
        <i class="fa-solid fa-headset"></i>
        <div class="row">
          <div class="col-12 col-md-12">
            Servicio al cliente
          </div>
          <div class="col-12 col-md-12">
            943-072-035
          </div>
        </div>
      </div>
      <!-- 4 -->
      <div class="col-4 col-md-4 centro">
        <div class="centro-contenido">
          <i class="fa-solid fa-shop"></i>
          <h1><a href='../pages/Principal.php'>D'BENITO</a></h1>
        </div>
      </div>

      <!-- 4 -->
      <div class="col-4 col-md-4 col-lg-4 derecha text-right">
        <?php
        session_start();
        if (isset($_SESSION['usuario'])) {
          // Si la sesión está iniciada, muestra el ícono del usuario con el tooltip
          echo '
            <div class="user-icon">
              <i class="fa-solid fa-user" id="userIcon"></i>
            </div>';
        } else {
          // Si no está iniciada, redirige al login
          echo '<a href="../pages/login.html"><i class="fa-solid fa-user"></i></a>';
        }
        ?>
        <i class="fa-solid fa-basket-shopping"></i>
        <div class="row">
          <div>Carrito</div>
          <div>(0)</div>
        </div>
      </div>
    </div>
  </div>
  <!-- Tooltip con datos del usuario -->
  <?php
  if (isset($_SESSION['usuario'])) {
    echo '
    <div class="tooltip-box" id="tooltipBox">
      <p><strong> Usuario: </strong> <br> ' . $_SESSION['usuario'] . '</p>
      <p><strong> Cliente: </strong> <br> ' . $_SESSION['nombrecliente'] . '</p>
      <form method="post" action="../login/login.php">
          <input type="hidden" name="accion" value="logout">
          <button type="submit">Cerrar sesión</button>
      </form>
    </div>';
  }
  ?>
  <!--NAVBAR-->
  <nav class="navbar navbar-expand-lg">
    <div class="container-fluid">
      <a class="navbar-brand" href="#">Menú</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
        aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
          <li class="nav-item">
            <a class="nav-link active" aria-current="page" href='../pages/Principal.php'>Inicio</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href='../pages/Categorias.php?id=1'>Alimentos</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href='../pages/Categorias.php?id=2'>Bebidas</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href='../pages/Categorias.php?id=3'>Lácteos</a>
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown"
              aria-expanded="false">
              Más
            </a>
            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
              <li><a class="dropdown-item" href='../pages/Categorias.php?id=4'>Carnes y Aves</a></li>
              <li><a class="dropdown-item" href='../pages/Categorias.php?id=5'>Verduras</a></li>
              <li><a class="dropdown-item" href='../pages/Categorias.php?id=6'>Frutas</a></li>
              <li><a class="dropdown-item" href='../pages/Categorias.php?id=7'>Panadería</a></li>
              <li><a class="dropdown-item" href='../pages//Categorias.php?id=8'>Limpieza</a></li>
              <li><a class="dropdown-item" href='../pages//Categorias.php?id=9'>Aseo Personal</a></li>
              <li><a class="dropdown-item" href='../pages//Categorias.php?id=10'>Mascotas</a></li>
              <li><a class="dropdown-item" href='../pages//Categorias.php?id=11'>Papelería</a></li>
              <li><a class="dropdown-item" href='../pages//Categorias.php?id=12'>Suministros Médicos</a></li>
              <li><a class="dropdown-item" href='../pages/Categorias.php?id=13'>Snacks</a></li>
            </ul>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">Blogs</a>
          </li>
        </ul>
        <form class="d-flex buscar" role="search">
          <input class="form-control me-2" type="search" placeholder="Buscar..." aria-label="Search">
          <button class="btn" type="submit"><i class="fa-solid fa-magnifying-glass"></i></button>

        </form>
      </div>
    </div>
  </nav>

</header>