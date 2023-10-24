<?php
session_start();
  include 'conexion_be.php';

  $correo = $_POST['correo'];
  $contrasena = $_POST['contrasena'];
  $contrasena = hash('sha512', $contrasena);

   //echo $contrasena;
   //die();

  $validar_login = mysqli_query($conexion, "SELECT * FROM personas WHERE correo='$correo' AND contrasena= '$contrasena'");
   
  if(mysqli_num_rows($validar_login) > 0){
    $_SESSION['usuario'] = $correo;

      header("location: ../bienvenida.php");
  }else{
     echo '
        <script>
        alert("usuario no existe, porfavor verifique los datos");
        window.location = "../index.php";
        </script>
     ';  
     exit();
  }




?>
