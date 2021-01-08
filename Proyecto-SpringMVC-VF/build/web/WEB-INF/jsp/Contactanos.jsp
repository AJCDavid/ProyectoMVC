<%-- 
    Document   : Contactanos
    Created on : 15-nov-2020, 17:48:38
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
      <!-- Required meta tags always come first -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="x-ua-compatible" content="ie=edge">

    <!-- Bootstrap CSS -->
    <!-- build:css css/main.css -->
  <link rel="stylesheet" href="node_modules/bootstrap-social/bootstrap-social.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
  
  
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
            <li class="nav-item ml-5 active"><a class="nav-link" href="Inicio.htm" >Inicio <span class="sr-only"></span></a></li>
            <li class="nav-item ml-5"><a class="nav-link " href="#">Nosotros <span class="sr-only"></span></a></li>
            <li class="nav-item ml-5"><a class="nav-link" href="Contactanos.htm">Contacto<span class="sr-only"></span></a></li>
         </ul> 
        </div>
   </nav>

    <header class="jumbotron">
        <div class="container">
            <div class="row row-header">
                <div class="col-12 col-sm-6">
                    <h1>Restaurante</h1>
                    <p>Nos inspiramos en las mejores cocinas del mundo y creamos una experiencia de fusión única.</p>
                </div>
                <div class="col-12 col-sm">
                </div>
            </div>
        </div>
    </header>

    <div class="container">
        <div class="row">
            <ol class="col-12 breadcrumb">
                <li class="breadcrumb-item"><a href="Inicio.htm">Inicio</a></li>
                <li class="breadcrumb-item active">Contacto</li>
            </ol>
            <div class="col-12">
               <h3>Contactanos</h3>
               <hr>
            </div>
        </div>

        <div class="row row-content">
           <div class="col-12">
              <h3>Estamos ubicados en</h3>
           </div>
            <div class="col-12 col-sm-4 offset-sm-1">
                   <h5>Nuestra Direccion: </h5>
                    <address style="font-size: 100%">
		              121, Francisco de Orellana, Quito<br>
		              Quito 170184<br>
		              QUITO-TUMBACO<br>
		              <i class="fa fa-phone"></i>: +593 1234 5678<br>
		              <i class="fa fa-fax"></i>: +593 8765 4321<br>
		              <i class="fa fa-envelope"></i>:
                        <a href="mailto:confusion@food.net">restaurante@food.net</a>
		           </address>
            </div>
            <div class="col-12 col-sm-6 offset-sm-1">
                <h5>Mapa de nuestras sucursales</h5>
                <figure><img src="${pageContext.request.contextPath}/img/map.png" width="500" height="350"></figure>
            </div>
            <div class="col-12 col-sm-11 offset-sm-1">
                <div class="btn-group" role="group">
                    <a role="button" class="btn btn-primary" href="tel:+85212345678"><i class="fa fa-phone"></i>Call</a>
                    <a role="button" class="btn btn-info"><i class="fa fa-skype"></i>Skipe</a>
                    <a role="button" class="btn btn-success" href="mailto:confusion@food.net "><i class="fa fa-envelope-o"></i>Email</a>
                </div>
            </div>
        </div>

        <div class="row row-content">
           <div class="col-12">
              <h3>Danos un Feedback</h3>
           </div>
            <div class="col-12 col-md-9">
              <form>
                  <div class="form-group row">
                   <label for="firstname" class="col-md-2 col-form-label">Nombre</label> 
                   <div class="col-md-10">
                       <input type="text" class="form-control" id="firstname" name="firstname"
                       placeholder="First Name">
                   </div>
                  </div>
                  <div class="form-group row">
                    <label for="lastname" class="col-md-2 col-form-label">Apellido</label> 
                    <div class="col-md-10">
                        <input type="text" class="form-control" id="lastname" name="lastname"
                        placeholder="Last Name">  
                  </div>

                </div>
                <div class="form-group row">
                    <label for="telnum" class=" col-12 col-md-2 col-form-label">Contact Tel.</label> 
                    <div class="col-5 col-md-3">
                        <input type="tel" class="form-control" id="areacode" name="areacode"
                        placeholder="Area Code">
                    </div>
                    <div class="col-7 col-md-7">
                        <input type="tel" class="form-control" id="telnum" name="telnum"
                        placeholder="Tel. Number">
                    </div>
                </div>
                   <div class="form-group row">
                     <label for="emailid" class="col-md-2 col-form-label">Email</label> 
                     <div class="col-md-10">
                         <input type="email" class="form-control" id="emailid" name="emailid"
                         placeholder="Email">  
                   </div>
                 </div>
                 <div class="form-group row">
                  <div class="col-md-6 offset-md-2">
                      <div class="form-check">
                          <input type="checkbox" class="form-check-input"
                          name="approve" id="approve" value="">
                          <label class="form-check-label" for ="approve">
                             <strong>como podemos contactarte?</strong>
                          </label>
                      </div>
                  </div>
                  <div class="col-md-3 offset-md-1">
                    <select class="form-control">
                        <option>Tel.</option>
                        <option>Email</option>
                       </select>
                     </div>
                </div>
                <div class="form-group row">
                    <label for="feedback" class="col-md-2 col-form-label">Aqui escribe tu Feedback </label> 
                    <div class="col-md-10">
                        <textarea class="form-control" id="feedback" name="feedback"
                        rows="12"></textarea>  
                  </div>
                </div>
                <div class="form-group row">
                    <div class="offset-md-2 col-md-10">
                        <button type="submit" class="btn btn-primary" >
                            Enviar Feedback
                        </button>
                    </div>
                </div>
              </form>   
            </div>
             <div class="col-12 col-md">
            </div>
       </div>

    </div>

    <footer class="footer">
        <div class="container">
            <div class="row">             
                <div class="col-4 offset-1 col-sm-2">
                    <h5>Links</h5>
                    <ul class="list-unstyled">
                        <li><a href="#">Inicio</a></li>
                        <li><a href="#">Acerca de</a></li>
                        <li><a href="#">Menu</a></li>
                        <li><a href="#">Contactanos</a></li>
                    </ul>
                </div>
                <div class="col-7 col-sm-5">
                    <h5>Nuestra Direccion</h5>
                    <address>
                           121, Francisco de Orellana, Tumbaco<br>
		              Quito 170184<br>
		              QUITO-TUMBACO<br>
                      <i class="fa fa-phone fa-lg"></i>: +593 1234 5678<br>
                      <i class="fa fa-fax fa-lg"></i>: +593 8765 4321<br>
                      <i class="fa fa-envelope fa-lg"></i>: 
                      <a href="mailto:confusion@food.net">restaurante@food.net</a>
		           </address>
                </div>
                <div class="col-12 col-sm-4 align-self-center">
                    <div class="text-center">
                        <a class="btn btn-social-icon btn-google" href="http://google.com/+"><i class="fa fa-google-plus"></i></a>
                        <a class="btn btn-social-icon btn-facebook" href="http://www.facebook.com/profile.php?id="><i class="fa fa-facebook"></i></a>
                        <a class="btn btn-social-icon btn-linkedin" href="http://www.linkedin.com/in/"><i class="fa fa-linkedin"></i></a>
                        <a class="btn btn-social-icon btn-twitter" href="http://twitter.com/"><i class="fa fa-twitter"></i></a>
                        <a class="btn btn-social-icon btn-google" href="http://youtube.com/"><i class="fa fa-youtube"></i></a>
                        <a class="btn btn-social-icon" href="mailto:"><i class="fa fa-envelope-o"></i></a>
                    </div>
                </div>
           </div>
           <div class="row justify-content-center">             
                <div class="col-auto">
                    <p>© Copyright 2020 Restaurante</p>
                </div>
           </div>
        </div>
    </footer>

</body>

</html>
