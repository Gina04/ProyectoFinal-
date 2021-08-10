<%-- 
    Document   : menu
    Created on : 21/07/2021, 21:51:45
    Author     : georg
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
HttpSession objsesion = request.getSession(false);
String usuario = (String)objsesion.getAttribute("usuario");

if(usuario.equals("")){
    response.sendRedirect("Index.jsp");

}

%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Alojados</title>
        <link rel="stylesheet" href="Css/estilos.css"/>
         <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
         <link rel="stylesheet" href="Css/icomoon.css"/>
    </head>
    <body>
        
        <div class="container">
            <header class="row" id="cabecera_menu">
                <nav class="nav  justify-content-center col-lg-8">
                        <a class="nav-link active" aria-current="page" href="registrarHuesped.jsp">RegistrarHuesped</a>
                        <a class="nav-link" href="listaHuespedes.jsp">Huespedes</a>
                        <a class="nav-link" href="#">TarifasHabitaciones</a>
                </nav>
                
                <div class="col-lg-4">
                    <h1 style="float:right;"><%out.println(usuario);%> <span class="icon-user"></span></h1>
                </div>
                 
            </header>
                <section class="row" id="contenido_regHuesped">
                    <article  class= "col-lg-12" id="registro_huesped">
                        <form action="huesped" method="post" >
                             <div id="lateral_iz">
                                <ul>
                                    <li> Nombre: <input type="texto" name="nombre" required></li>
                                    <li> Apellido: <input type="texto" name="apellido" required></li>
                                    <li> mail: <input type="text"  name="mail"></li>
                                    <li> edad: <input type="number" name="edad"></li>
                                    <li> Nombre: <input type="texto" name="nombre" required></li>
                                    <li> Apellido: <input type="texto" name="apellido" required></li>
                                    <li> mail: <input type="text"  name="mail"></li>
                                    <li> edad: <input type="number" name="edad"></li>
                                    <li> Nombre: <input type="texto" name="nombre" required></li>
                                    <li> Apellido: <input type="texto" name="apellido" required></li>
                                    <li> mail: <input type="text"  name="mail"></li>
                                    <li> edad: <input type="number" name="edad"></li>
                                    <li> Nombre: <input type="texto" name="nombre" required></li>
                                    <li> Apellido: <input type="texto" name="apellido" required></li>
                                    <li> mail: <input type="text"  name="mail"></li>
                                    <li> edad: <input type="number" name="edad"></li>
                                    <li> Nombre: <input type="texto" name="nombre" required></li>
                                    <li> Apellido: <input type="texto" name="apellido" required></li>
                                    <li> mail: <input type="text"  name="mail"></li>
                                    <li> edad: <input type="number" name="edad"></li>
                                    <li> Nombre: <input type="texto" name="nombre" required></li>
                                    <li> Apellido: <input type="texto" name="apellido" required></li>
                                    <li> mail: <input type="text"  name="mail"></li>
                                    <li> edad: <input type="number" name="edad"></li>
                                    <li><textarea name="textarea" rows="5" cols="80">Write something here</textarea></li>
                                 
                                    <li><input type="submit" value="Ingrese"/></li>
                                 </ul>
                            
                             </div>
                                        
                        </form>   
                    </article>
                    
            </section>    
            
            
        </div>
        
           
    </body>
</html>
