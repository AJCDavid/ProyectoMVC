
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <title>Nuevo Registro </title>
    </head>
    <div id="header" style="height:75px;background-color:#191514;color:#ffffff;"></div>
    <body>
        <div class="container mt-4 col-4">
            <div class="card border-info">
                <div class=" card-header bg-info">
                    <h4 style="color: white" align="center">Crear nueva cuenta</h4>
                </div>
                <div class="card-body">
                    <form method="POST">
                        <label>Nombre</label>
                        <input type="text" name="nombre" placeholder="Ingrese su nombre" class="form-control">
                         <label>Telefono</label> 
                        <input type="text" name="telefono" placeholder="Ingrese su telefono" class="form-control">
                         <label>Direccion</label>
                         <input type="text" name="direccion" placeholder="Direccion del domicilio" class="form-control">
                          <label>Correo</label> 
                        <input type="text" name="correo" placeholder="Ingrese su correo" class="form-control">
                        <label>Contraseña</label>
                        <input type="password" name="password"  class="form-control">
                        <br>
                          <p style="text-align:center;">
                              <input class="btn btn-danger" href="Login.htm" type="submit"value="Registrar"></p>
                        <a href="Login.htm">Atras</a>
                    </form>
                </div>
            </div> 
        </div>
    </body>
</html>
