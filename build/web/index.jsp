<%-- 
    Document   : index
    Created on : 19/07/2021, 22:23:36
    Author     : georg
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Administración</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="Css/estilos.css">
        
        <script src="js/main.js"></script> 
    </head>
    <body>   
        <div class="container">
            <header class="row" id="cabecera_index">
                <div class="col-lg-12">
                    <h1 class= "text-center" id="titulo_login">Inicio de Sesión</h1>
                </div>          
            </header>
            
            <section class="row" id="contenido_index">
                <div  class="col-lg-12" id="formulario">
                    <form action="InicioSesion" method="POST" id="formIncio">
                        <div class="mb-3">
                          <label for="exampleInputEmail1" class="form-label">Usuario</label>
                         <input  type="text" class="form-control" name="usuario" id="txtusuario">
                         </div>
                        <div class="mb-3">
                         <label for="exampleInputPassword1" class="form-label">Contraseña</label>
                         <input type="password" class="form-control" name="contrasenia" id="txtcontra">
                        </div>
                  
                         <button type="buttom" class="btn btn-primary" id="btnIniciar">Iniciar Sesión</button>
                         <p>No tienes una cuenta...<a href="registro.jsp"> Registrarme</a></p>
                     </form>
                </div>
            
            </section>
            
            <footer class="row">
                <div class="col-lg-12">
                    <p class= "text-center">@Atahualpa</p>
                </div>
                
            </footer>
                
        </div>
            
          
               
   
     
    </body>
</html>
