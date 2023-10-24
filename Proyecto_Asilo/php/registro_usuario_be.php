<?php
  include 'conexion_be.php';

  $Nom_persona = $_POST['Nom_persona'];
  $correo = $_POST['correo'];
  $usuario = $_POST['usuario'];
  $contrasena = $_POST['contrasena'];

  //ocultar contraseña
  $contrasena = hash('sha512', $contrasena);


  $query = "INSERT INTO personas(Nom_persona, Edad_persona, Dir_persona, DNI_persona, Cod_Telefono, Fec_nacimiento, Gen_persona, IND_civil, RTN_persona, Pes_persona, Alt_persona, correo, usuario, contrasena) 
             values('$Nom_persona',00,'direccion por defecto',00,0,23/10/2023, 'F','S','00',22,22,'$correo', '$usuario', '$contrasena')";


   //verificar que el correo no se repita 
   $verificar_correo = mysqli_query($conexion, "SELECT * FROM personas WHERE correo ='$correo'");

   if (mysqli_num_rows($verificar_correo) > 0){
     echo'
        <script>
          alert("este correo ya esta registrado, intenta con otro diferente");
           window.location = "../index.php";
        </script>
    
     ';
       exit();
    }
    

   //verificar que el usuario no se repita 
   $verificar_usuario = mysqli_query($conexion, "SELECT * FROM personas WHERE usuario ='$usuario'");

   if (mysqli_num_rows($verificar_usuario) > 0){
     echo'
        <script>
          alert("este usuario ya esta registrado, intenta con otro diferente");
           window.location = "../index.php";
        </script>
    
     ';
       exit();
    }

    $ejecutar = mysqli_query($conexion, $query);

   if($ejecutar){
    echo'
       <script>
          alert("usuario registrado exitosamente");
           window.location = "../index.php";
       </script>
    
    ';

   }else{
    echo'
    <script>
       alert("intentalo de nuevo, usuario no registrado");
        window.location = "../index.php";
    </script>
 ';
   }
mysqli_close($conexion);
?>



