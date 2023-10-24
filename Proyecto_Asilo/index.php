<?php
 session_start();
 if (isset($_SESSION['usuario'])) {
    header("location: ../bienvenida.php" );
 }

?>



<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>login y registro </title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,900&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="assets/css/estilos.css">
    
</head>

<body>
    <main>
        <div class="contenedor__todo">
            <div class="caja__trasera">
                <div class="caja__trasera-login">
                    <h3>¿ya tienes cuenta?</h3>
                    <p>inicia secion para entrar a la paguina</p>
                    <button id="btn__iniciar-sesion">iniciar sesion</button>
                </div>
                <div class="caja__trasera-register">
                    <h3>¿aun no tienes cuenta?</h3>
                    <p> registrate para iniciar sesion</p>
                    <button id="btn__registrarse">registrarse</button>
                </div>
            </div>
            <!--formulario del login y registro-->
            <div class="contenedor__login-register">
                <form action="php/login_usuario_be.php" method="POST" class="formulario__login">
                <img src= "assets/images/icono.ico" width="150" height="150" style="display: block; margin-left: auto; margin-right: auto;">
                    <h2>inciar sesion </h2>
                    <input type="text" placeholder="correo electronico" name="correo">
                    <input type="password" placeholder="contraseña"name="contrasena">
                    <button style="display: block; margin-left: auto; margin-right: auto;">entrar</button>
                </form>
                <!--formulario de registro-->
                <form action="php/registro_usuario_be.php" method="POST" class="formulario__register">
                    <h2>registrarse</h2>
                    <input type="text" placeholder="nombre completo" name="Nom_persona">
                    <input type="text" placeholder="correo electronico" name="correo">    
                    <input type="text" placeholder="usuario" name="usuario">
                    <input type="password" placeholder="contraseña" name="contrasena">
                    <button>registrarse </button>
                </form>


            </div>

        </div>





    </main>
    <script src="assets/js/script.js"></script>
</body>

</html>