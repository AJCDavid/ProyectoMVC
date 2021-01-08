<%-- 
    Document   : RegistrarVenta
    Created on : 19-nov-2020, 10:15:52
    Author     : user
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
        <title>Facturación</title>
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
        
        <div class="d-flex">
            <div class="col-sm-5">
                <div class="card">
                    <form action="ControladorVenta?menu=RegistrarVenta" method="POST">
                    <div class="card-body">
                        <div class="form-group"> 
                            <label> Datos del Cliente</label>
                        </div>
                        <div class="form-group d-flex" >
                            <div class="col-sm-6 d-flex">
                                <input type="text" name="cedula" value="${c.getNombre()}" class="form-control"  placeholder="Idcliente">
                                 <input type="submit" name="accion" value="BuscarCliente" class="btn btn-outline-info">
                            </div>
                             <div class="col-sm-6 ">
                                 <input type="text" name="Nombre" value="${c.getCedula()}" placeholder="Datos Cliente"  class="form-control" >
                            </div>
                        </div>
                        <div class="form-group">
                         <label> Datos del Platillo</label>
                              <div class="form-group d-flex" >
                            <div class="col-sm-6 d-flex">
                                <input type="text" name="idplato" value="${plato.getId()}" class="form-control"  placeholder="IdPlato">
                                <input type="submit" name="accion" value="BuscarProducto" class="btn btn-outline-info">
                            </div>
                             <div class="col-sm-6 ">
                                 <input type="text" name="Nombreplato" value="${plato.getNombre()}" placeholder="Datos Platillo" class="form-control" >
                            </div>
                        </div>
                     </div>
                        <div class="form-group d-flex">
                                <div class="col-sm-6 d-flex">
                                <input type="text" name="Precio" value="${plato.getCosto()}"  class="form-control"  placeholder="$0.00">
                            </div>
                             <div class="col-sm-3">
                                 <input type="number" value="1" placeholder="" name="cantidad" class="form-control" >
                            </div>
                                <div class="col-sm-3">
                                 <input type="text" placeholder="Disponibilidad" value="${plato.getStock()}" name="stock" class="form-control" >
                            </div>
                        </div>
                        <div>
                            <div class="form-group">
                                <input type="submit" name="accion" value="Agregar" class="btn btn-outline-info">
                            </div>
                        </div>
                </div>
            </form>
            </div>
         </div> 
            <div class="col-sm-7">
                <div class="card">
                    <div class="card-body">
                           <div class="d-flex col-sm-5 ml-auto">
                               <label>Nro.Serie#</label>
                               <input type="text" disabled name="NroSerie" value="${nserie}" class="form-control">
                            </div>
                        <table class="table table-hover">
                            <thead>
                                <tr>
                                    <th>Nro</th>
                                    <th>Codigo</th>
                                    <th>Descripcion</th>
                                    <th>Precio</th>
                                    <th>Cantidad</th>
                                    <th>Subtotal</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach var="list" items="${lista}">
                                <tr>
                                    <td>${list.getItem()}</td>
                                    <td>${list.getIdplato()}</td>
                                    <td>${list.getDescripcion()}</td>
                                    <td>${list.getPrecio()}</td>
                                    <td>${list.getCantidad()}</td>
                                    <td>${list.getSubtotal()}</td>
                                 
                                </tr>
                               </c:forEach>
                            </tbody>
                        </table>
                      </div>
                    <div class="card-footer d-flex">
                        <div class="col-sm-6">
                            <a href="ControladorVenta?menu=RegistrarVenta&accion=GenerarVenta" class="btn btn-success">Generar Venta</a>
                            <a href="ControladorVenta?menu=RegistrarVenta&accion=Cancelar"  class="btn btn-danger ">Cancelar</a>
                        </div>
                        <div class="col-sm-4" ml-auto>
                            <input type="text" name="txtTotal" value="$. ${totalPagar}" class="form-control">
                        </div>
                    </div>
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
    <br><br><br><br> <br><br><br><br> <br><br>
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
