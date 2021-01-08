<%-- 
    Document   : EditarPlato
    Created on : 19-nov-2020, 19:11:28
    Author     : user
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Page</title>
    </head>
    <body>
            <nav class="navbar navbar-expand-md navbar-dark bg-dark mb-4">
      <a class="navbar-brand" href="#">RESTAURANTE </a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse"
         aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
         <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarCollapse">
         <ul class="navbar-nav mr-auto">
              <li class="nav-item ml-5"><a class="nav-link" href="IndexEmpleados.htm">Nomina Empleados<span class="sr-only"></span></a></li>
                 <li class="nav-item ml-5"><a class="nav-link" href="indexCategoria.htm">Categoria<span class="sr-only"></span></a></li>
             <li class="nav-item ml-5"><a class="nav-link" href="index.htm">Clientes<span class="sr-only"></span></a></li>
            <li class="nav-item ml-5"><a class="nav-link" href="IndexPlatos.htm">Menu<span class="sr-only"></span></a></li>
            <li class="nav-item ml-5"><a class="nav-link" href="ControladorVenta?menu=RegistrarVenta&accion=default" >RegistrarVenta</a></li>
              <li class="nav-item ml-5"><a class="nav-link" href="indexVentasRealizadas.htm">Reporte Ventas<span class="sr-only"></span></a></li>
                 <li class="nav-item ml-5"><a class="nav-link" href="graficasfiltro.htm" >Reporte Grafico</a></li>

         </ul> 
           <div class="dropdown">
            <a style="color: white" href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">Cerrar Sesion</a>
            <div class="dropdown-menu text-center"> 
                <a>Usuario</a>
                <a>example@gmail.com</a>
                <div class="dropdown-divider"></div>
                <a href="Inicio.htm" class="dropdown-item">Salir</a>
            </div>
        </div>
     </div>
   </nav>
        
        <div class="container mt-4 col-4">
            <div class="card border-info">
                <div class=" card-header bg-info">
                    <h4>Modificar un Registro</h4>
                </div>
                <div class="card-body">
                    <form method="POST">
                        <label>Nombre</label>
                        <input type="text" name="Nombre" class="form-control" value="${lista[0].Nombre}">
                        <label>Categoria</label> 
                            <select class="form-control" name="Categoria" value="${lista[0].Categoria}>
                                     <option value="-1">Seleccione una Categoria</option>
                                     <%
                                       try{
                                         String Query="select * from tblcategoria";  
                                         Class.forName("com.mysql.jdbc.Driver").newInstance();
                                         Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/dbproyectrestaurante?serverTimezone=UTC","root","admin");
                                         Statement stm=conn.createStatement();
                                         ResultSet rs =stm.executeQuery(Query);
                                         while(rs.next()){
                                           %>
                                           <option value="<%=rs.getString("Nombre")%>"><%=rs.getString("Nombre")%></option>
                                           <%
                                         }
                                       } catch (Exception e){
                                           e.printStackTrace();
                                           out.println("Error"+e.getMessage());
                                       }
                                     %>
                                 </select>
                        <label>Costo</label>
                        <input type="text" name="Costo" class="form-control" value="${lista[0].Costo}">
                        <label>Stock</label>
                        <input type="text" name="Stock" class="form-control" value="${lista[0].Stock}">
                        <input type="submit" value=" Actualizar" name="Agregar" class="btn btn-success">
                        <a href="IndexPlatos.htm">Regresar</a>
                    </form>
                </div>
            </div> 
        </div>
    </body>
</html>
