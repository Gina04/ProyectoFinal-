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
                <div id="registro_pasajero"></div>
                <div id="lst_pasajeros"></div>
                <div id="tarifas_habitaciones"></div>
                
                <div class="col-lg-12">
                    <h1 style="float:right;"><%out.println(usuario);%> <span class="icon-user"></span></h1>
                </div>
                 
            </header>
                <section class="row" id="contenido_menu">
                    <article  class= "col-lg-12" id="registro_pasajeros">
                       <div id="lateral_iz">
                        <ul>
                            <li> Nombre: <input type="texto" name="usuario" required></li>
                            <li> Apellido: <input type="password" name="clave" required></li>
                            <li> Fecha Nacimiento: <input type="month"  name="clave"></li>
                            <li> Cel: <input type="password" name="clave" required></li>
                            <li> Dni: <input type="texto" name="usuario" required></li>
                            <li> Ciudad origen: <input type="password" name="clave" required></li>
                            <li> Carrera: <input type="password" name="clave" required></li>
                            <li> Clave: <input type="password" name="clave" required></li>
                        </ul>
                            
                       </div>
                        <div id="lateral_der">
                         <ul>
                            <li> Usuario: <input type="texto" name="usuario" required></li>
                            <li> Clave: <input type="password" name="clave" required></li>
                            <li> Clave: <input type="password" name="clave" required></li>
                            <li> Clave: <input type="password" name="clave" required></li>
                            <li> Usuario: <input type="texto" name="usuario" required></li>
                            <li> Clave: <input type="password" name="clave" required></li>
                            <li> Clave: <input type="password" name="clave" required></li>
                            <li> Clave: <input type="password" name="clave" required></li>
                        </ul>
                        
                        </div> 
                      
                 
                    </article>
                    <article class="col-lg-12" id="lista_pasajeros">
                        <table class="table table-striped table-hover">
                            <thead class="header_table">
                                <tr>
                                  <th scope="col">#</th>
                                  <th scope="col">Nombre</th>
                                  <th scope="col" >Apellido</th>
                                  <th scope="col">Edad</th>
                                </tr>
                             </thead>
                            <tbody>
                              <tr>
                                <th scope="row">1</th>
                                <td>Mark</td>
                                <td>Otto</td>
                                <td>@mdo</td>
                              </tr>
                              <tr>
                                <th scope="row">2</th>
                                <td>Jacob</td>
                                <td>Thornton</td>
                                <td>@fat</td>
                              </tr>
                              <tr>
                                <th scope="row">3</th>
                                <td colspan="2">Larry the Bird</td>
                                <td>@twitter</td>
                              </tr>
                               <tr>
                                <th scope="row">3</th>
                                <td colspan="2">Larry the Bird</td>
                                <td>@twitter</td>
                              </tr>
                               <tr>
                                <th scope="row">3</th>
                                <td colspan="2">Larry the Bird</td>
                                <td>@twitter</td>
                              </tr>
                               <tr>
                                <th scope="row">3</th>
                                <td colspan="2">Larry the Bird</td>
                                <td>@twitter</td>
                              </tr>
                            </tbody>
                          </table>
                    </article>
                    <article class="col-lg-12" id="buscar_pasajeros">
                        <ul>
                            <li> Buscar: <input type="texto" name="buscar_usuario" required></li>
                        </ul>
                        
                    </article>
            </section>    
            
            
        </div>
        
        
         
    </body>
</html>
