<%-- 
    Document   : graficasfiltro
    Created on : 02-dic-2020, 18:11:18
    Author     : user
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.io.*" %>
<%@page import="java.sql.*" %>
<%@page import="org.jfree.chart.*" %>
<%@page import="org.jfree.chart.plot.*" %>
<%@page import="org.jfree.data.general.*" %>
<%@page import="org.jfree.data.category.DefaultCategoryDataset.*" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
        <link href="../../css/styles.css" rel="stylesheet" type="text/css"/>
        <title>Reporte Grafico de ventas</title>
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
        
        <style>
            ul{
       list-style:none;
       }
        </style>
                              
                         <div class="main">
                          <ul class="cards">
                            <li class="cards_item" >
                              <div class="card">
                                <div class="card_image" align="center"><figure><img src="${pageContext.request.contextPath}/img/Report.jpg" width="400" height="350"></figure></div>
                                 <div class="card_content">
                                  <h2 class="card_title" align="center">ver grafica de platillos mas vendidos</h2>
                                  <p class="card_text" align="center">Representacion de platillos del menu vendidos</p>
                                  <p align="center"> <form align="center" action="graficacircular.htm">
                                      <button type="submit" value="ver gráfica de platillos mas vendidos" class="btn btn-success">Ver Grafica</button>
                                </form> <p>
                                </div>
                              </div>
                            </li>
                            
                            <li  class="cards_item" >
                              <div class="card">
                                <div class="card_image" align="center"><figure><img src="${pageContext.request.contextPath}/img/reporteventas.png" width="400" height="350"></figure></div>
                                <div class="card_content">
                                  <h2 class="card_title" align="center">Monto Acumulado en ventas</h2>
                                  <p class="card_text" align="center">El saldo representado es Mensualmente</p>
                                    <p align="center"> <form align="center" action="Graficas">
                                      <button type="submit" value="ver gráfica " class="btn btn-success">Ver Grafica</button>
                                </form> <p>
                                </div>
                              </div>
                            </li>
                          </ul>
                        </div>
                                <%
                                Class.forName("com.mysql.jdbc.Driver").newInstance();
                                Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/dbproyectrestaurante?serverTimezone=UTC","root","admin");
                                Statement cmd =cn.createStatement();
                                String sql =" SELECT P.Nombre, sum( DV.Cantidad) as total_vendidos FROM tblventa AS V INNER JOIN tbldetalleventa AS DV ON V.idVenta = DV.idVenta INNER JOIN tblplato AS P ON DV.idPlato = P.idPlato group by Nombre;";
                                ResultSet rs =cmd.executeQuery(sql);
                                %>
                                
                                
                                                               
                                
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
   
    </body>
     <style>
        footer{
    background-color: #1D2426;
    margin:0px auto;
    padding:20px 0px 20px 0px; 
    color:white;

}
</style>
    </body>
    <br><br><br><br>
        <footer class="footer">
        <div class="container">
           <div class="row justify-content-center">             
                <div class="col-auto">
                    <p>© Copyright 2020 Restaurante by DavidAJ</p>
                </div>
           </div>
        </div>
    </footer>
</html>
