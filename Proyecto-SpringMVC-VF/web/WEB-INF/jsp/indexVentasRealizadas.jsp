<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
          <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
        <title>Menu</title>
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
  
 <div class="container mt-4">
            <div class="card border-info">
                <div class="card-header bg-info text-white">
                    <a class="btn btn-light" href="#">Reporte Ventas</a>
                </div>
                <div class="card-body">
                   <table class="table table-hover">
                        <thead>
                            <tr>
                                <th>idVenta</th>
                                <th>idCliente</th>
                                <th>idEmpleado</th>
                                <th>numeroSerie</th>
                                <th>FechaVenta</th>
                                <th>Monto</th>

                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="dato" items="${lista}">
                            <tr>
                                                             <td>${dato.idVenta}</td>
                                <td>${dato.idCliente}</td>
                                <td>${dato.idEmpleado}</td>
                                <td>${dato.numeroSerie}</td>
                                <td>${dato.FechaVenta}</td>
                                <td>${dato.Monto}</td>

                            </tr>
                            </c:forEach>
                        </tbody>
                    </table> 
              </div>
        </div>
 </div>
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