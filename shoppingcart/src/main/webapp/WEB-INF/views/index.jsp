<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<html lang="en">
<head><title>INEDX.JSP</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.6/angular.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  
  <style>
  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img 
  { width: 70%;
    margin: auto;
   }</style>
</head>                                   <%--THIS IS BODY --%>
<body>   
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
      <ul class="nav navbar-nav">
      <li class="active"><a href="index">Home</a></li>
      <li><a href="allProducts">View All</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
      <li><a href="register"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
      <li><a href="loginPage"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
     </ul>
  </div>
</nav>
  

   <div class="container">
     <div class="center-block">  
   <br><%-- <br>THIS BREAK 4 HEADER AND CAROUSEL--%> 
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
    
                                   <!--Indicators -->              
      <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      </ol>
                                   <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
    
      <div class="item active">
         <img src="<c:url value="/resources/images/surfacepro4.jpg"/>" alt="Chania" width="1920" height="1080">
      </div>

      <div class="item">
        <img src="<c:url value="/resources/images/apple.jpg"/>" alt="Chania" width="1920" height="1080">
      </div>
    
      <div class="item">
        <img src="<c:url value="/resources/images/evvy.jpg"/>" alt="Chania" width="1920" height="1080"> 
      </div>
                                    <!-- L&R controls -->
          
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div></div></div></div>
  <%-- THIS IS JSP Comment IT IS 4PLACE 4 WRITeCODE 4 PICTURES WILL APPER DOWN TO THE Carousel u can get this from saved notepad--%>
  <br><br> <jsp:include page="footer.jsp"></jsp:include>
 </body>
  </html>
 