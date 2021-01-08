<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page isELIgnored="false" %>

<html>
<head>
    <link href="../../css/purecssframework.min.css" rel="stylesheet" type="text/css"/>
    <link href="../../css/purecssframework.css" rel="stylesheet" type="text/css"/>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/pure/2.0.3/base-context-min.min.css" integrity="sha512-ORa4JSYu1Y1ro1zkvG3r8k8wpnnCHL3iw1tVrmbN5qmiFgqo4v/suZTyjk0bdr7oO/9+cYF3YiflTgOQhOPrKA==" crossorigin="anonymous" />
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
            <nav class="col-12 col-12-md text-right" id="topMenuNav2"><li class="nav-item ml-5"><a class="nav-link" href="Login.htm" >Login<span class="sr-only"></span></a></li></nav>
         </ul> 
        </div>
   </nav>
   
    <style>
        .row-content{
    margin:0px auto;
    padding:0px 0px 50px 0px; 
    border-bottom: 1px ridge;
    min-height: 400px;
}

.carousel{
    background: #1391B7;    
}

.carousel-item{
    height: 300px;
}

.carousel-item img{
    position: absolute;
    top: 0;
    left: 0;
    min-height: 300px;
}

#carouselButton{
    right: 0px;
    position: absolute;
    bottom: 0px;
    z-index: 1;
}
footer{
    background-color: #1391B7;
    margin:0px auto;
    padding:20px 0px 20px 0px; 
    color:white;

}
    </style>
   <div class="row row-content">
            <div class="col">
              <div id="mycarousel" class="carousel slide" data-ride="carousel">
                  <div class="carousel-inner" role="listbox">
                      <div class="carousel-item active">
                        <img class="d-block img-fluid"
                        src="img/hamburguesas.png" alt="Hamburguesa">
                        <div class="carousel-caption d-none d-md-block">
                            <h2>Hamburguesa <span class="badge badge-danger">HOT</span> <span class="badge badge-pill badge-secondary">$2.99</span></h2>
                            <p class="hidden-xs-down">is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p> 
                        </div>
                      </div>
                      <div class="carousel-item ">
                        <img class="d-block img-fluid"
                        src="img/parrilla.jpg" alt="Parrillada">
                        <div class="carousel-caption d-none d-md-block">
                            <h2>Weekend Grand Buffet <span class="badge badge-danger">NEW</span></h2>
                            <p class="d-none d-sm-block">It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages</p>    
                        </div>  
                    </div>
                    <div class="carousel-item ">
                        <img class="d-block img-fluid"
                        src="img/helado.jpg" alt="Helados">
                        <div class="carousel-caption d-none d-md-block">
                            <h2>Helados</h2>
                            <p class="d-done d-sm-block" >Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum </p>        
                        </div>    
                    </div>
                  </div>
                  <ol class="carousel-indicators">
                      <li data-target="#mycarousel" data-slide-to="0" class="active"></li>
                      <li data-target="#mycarousel" data-slide-to="1"></li>
                      <li data-target="#mycarousel" data-slide-to="2"></li>
                  </ol>
                  <a class="carousel-control-prev" href="#mycarousel" role="button" data-slide="prev">
                      <span class="carousel-control-prev-icon"></span>
                  </a>
                  <a class="carousel-control-next" href="#mycarousel" role="button" data-slide="next">
                    <span class="carousel-control-next-icon"></span>
                </a>
                    <button class="btn btn-danger btn-sm" id="carouselButton">
                        <span class="fa fa-pause"></span>
                    </button>
              </div>
            </div>
        </div>
    
    
  <div class="col-12 col-sm-4 offset-sm-1">
        <div class="content-carrousel">
            <figure><img src="${pageContext.request.contextPath}/img/portada.jpg"></figure>
        </div>
        <div class="col-3 col-sm-11 offset-sm-1">
            Nos inspiramos en las mejores cocinas del mundo y creamos una experiencia de fusión única.
        </div>
     </div>
        <br>
       <div class="form-group d-flex offset-sm-1" >
          <div class="col-12 col-sm-4">
              <p>Un restaurante de calidad y relajante, dirigido por propietarios galardonados, en Quito. El edificio y la decoración son encantadores y rústicos, con elegantes toques modernos. Relájese junto a la estufa, ideal para las noches de invierno, o disfrute de una terraza exterior con 
                  vistas a los campos o en un bonito patio lleno de flores en los meses de verano. El menú diario, con todo recién preparado en la cocina</p>
          </div>
              <div class="col-sm-7">
             <figure><img src="${pageContext.request.contextPath}/img/rest.jpg" width="700" height="401"></figure>
        </div>
       </div>
        
        <footer class="footer">
        <div class="container">
           <div class="row justify-content-center">             
                <div class="col-auto">
                    <p>© Copyright 2020 Restaurante by DavidAJ</p>
                </div>
           </div>
        </div>
    </footer>
   </body>
</html>
