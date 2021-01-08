
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <title>Ingresar al Sistema </title>
    </head>
    
    <style>
      body {
	background-image: url('img/portada.jpg');
	background-repeat: no-repeat;
	background-size: cover;
}
    </style>
    <body class="background" background="${pageContext.request.contextPath}/img/portada.jpg">
       <nav class="navbar navbar-expand-md navbar-dark bg-dark mb-4">
      <a class="navbar-brand" href="#">RESTAURANTE </a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse"
         aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
         <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarCollapse">
         <ul class="navbar-nav mr-auto">
            <li class="nav-item ml-5 active"><a class="nav-link" href="Inicio.htm" >Inicio <span class="sr-only"></span></a></li>
            <li class="nav-item ml-5"><a class="nav-link " href="#">Nosotros <span class="sr-only"></span></a></li>
            <li class="nav-item ml-5"><a class="nav-link" href="Contactanos.htm">Contacto<span class="sr-only"></span></a></li>
            <li class="nav-item ml-5"><a class="nav-link" href="#">Menu<span class="sr-only"></span></a></li>
         </ul> 
        </div>
   </nav>
        <div class="container mt-4 col-4">
            <div class="card border-info">
                <div class=" card-header bg-info">
                    <h4 align="center" style="color: white">Log in</h4>
                </div>
                <div class="card-body">
                    <form action="iniciar" method="post">
                        <label>Usuario</label>
                        <input type="text" name="txtnombre" placeholder="Ingrese su Usuario" class="form-control">
                        <label>Password</label>
                        <input type="password" name="txtpassword" class="form-control">
                        <br>
                        <input class="btn btn-danger btn-block" type="submit" value="Ingresar">
                        <br>
                        <p style="text-align:center;">
                            <a align="center" href="Registro.htm">Registrarse</a></p>
                    </form>
                </div>
            </div> 
        </div>
    </body>
</html>
