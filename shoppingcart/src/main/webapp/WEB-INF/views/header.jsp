<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<html lang="en">
<head>
<title>HEADER.JSP</title>
</head>
<body>

<nav id="navbar-red" class="navbar navbar-inverse navbar-fixed-top" role="navigation">

<ul class="nav navbar-nav">
<button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
 data-target="#bs-example-navbar-collapse-1">
<span class="icon-bar"></span>
<span class="icon-bar"></span>
<span class="icon-bar"></span>
</button>
</ul>
</div>
<div class="collaps navbar-collapse" id="bs-example-navbar-collapse-1">
<ul class="nav navbar-nav">


 <li><a href="index">Home</a></li>
<li><a href="Contact Us"><i class="fa fa-address-book" aria-hidden ="true"></i></a></li>
</ul>
 
     
    <ul class="nav navbar-nav navbar-right">
       
      
      <li><a href="<c:url value='/j_spring_security_Logout'/>">
      		<span class="glyphicon glyphicon-log-in"></span>
						</a></li></ul>
</div>
</nav>
</body>
</html>
