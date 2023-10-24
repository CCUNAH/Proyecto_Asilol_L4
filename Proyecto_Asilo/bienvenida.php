<?php
  session_start();
  if(!isset($_SESSION['usuario'])) {
     echo'
      <script>alert("por favor debes iniciar seseion");
        window.location = "index.php"
       </script>
     ';
     session_destroy();
     die();
  }
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>bienvenida - MagtimusPro</title>
</head>
<body>
    <h1>bienvenido</h1>
    <a href="php/cerrar_sesion.php">cerrar sesion</a>
</body>
</html>