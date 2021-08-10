<%-- 
    Document   : listaHuespedes
    Created on : 05/08/2021, 12:52:06
    Author     : georg
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="Metodos.Persistencia"%>
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
         
        <script type="text/javascript">
            function eliminar(direccionACambiar,id){
                var opcion= confirm("Eliminar Fila?"); 
                if(opcion==true){
                    document.getElementById('idseleccion').value = id;
                    document.formulario.action=direccionACambiar;
                    document.formulario.submit();
                }
            }
            
            function modificar(direccionACambiar,id){
                var opcion = confirm("Modificar Fila?"); 
                if(opcion==true){
                    document.getElementById('idseleccion').value=id;
                    document.formulario.action = direccionACambiar; 
                    document.formulario.submit(); 
                    
                }
            }
        </script>
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
            <section class="row" id="contenido_lstHuespedes">
                    
                <article class="col-lg-12" id="lista_pasajeros">
                    <form name="formulario" action="eliminar" method="post">
                        <table class="table table-striped table-hover">
                            <thead class="header_table">
                                <tr>
                                  <th scope="col">#</th>
                                  <th scope="col">Nombre</th>
                                  <th scope="col" >Apellido</th>
                                  <th scope="col">Mail</th>
                                  <th scope="col">edad</th>
                                  <th scope="col"> Editar</th>
                                  <th scope="col">Eliminar</th>
                                </tr>
                             </thead>
                            <tbody>
                               
                                <%
                                    Persistencia base = new Persistencia();
                                    ResultSet rs = base.consultaSQL("SELECT * FROM clientes");
                                    while(rs.next()){   
                                %>               
                                <tr>
                                     <th scope="row">1</th>
                                     <td><%out.println(rs.getString("nombre")); %></td>
                                     <td><% out.println(rs.getString("apellido"));%></td>
                                     <td><% out.println(rs.getString("mail"));%></td>
                                     <td><%out.println(rs.getInt("edad"));%></td>
                                     <td><a id="eliminar" href="#" onclick= "eliminar('eliminar.jsp', <% out.println(rs.getInt("idHuesped")); %>"><span class="icon-pencil"></span></a></td>
                                     <td><a id="modificar" href="#" onclick="modificar('modificar.jsp',<% out.println(rs.getInt("idHuesped")); %>;"><span class="icon-bin"></span></a></th>
                                </tr>
                                
                                <%
                                    }
                                %>
                             
                            </tbody>
                        </table>
                            <input id="idseleccion" name="idseleccion" type="hidden" value="prueba" >
                    </form>            
                                
                </article>
                    <article class="col-lg-12" id="buscar_pasajeros" style="padding-left: 40px;">
                        <ul>
                           <li> Buscar:<input type="search"  name="buscar_usuario"></li>
                        </ul>
                        
                </article>
            </section>    
            
            
    </div>
        
          
    </body>
</html>
