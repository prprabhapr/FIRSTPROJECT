<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="x" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib prefix="x" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head><title>VIEWPRODUCT.JSP</title>
     
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
  </head>
   
</head>
<body>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="landPage">Home</a>
    </div>
     <sec:authorize access="hasRole('ROLE_ADMIN')">  
    <ul class="nav navbar-nav">
      <li class="active"><a href="retriveRecords">Manage Products</a></li>
      <li><a href="category">Manage Categories</a></li>
      <li><a href="manageSupplier">Manage Suppliers</a></li>
      </ul>
      </sec:authorize>
           <div><ul>
      		<li class="nav navbar-nav navbar-right"><a href="<x:url value='/j_spring_security_Logout'/>">
      		<span class="glyphicon glyphicon-log-in"></span>
						Logout</a></li></ul></div>
  </div>
</nav>

    
    <!--  <form:form commandName="CartItem" method="post" action="viewcart">-->
        <div class="page-header">
            <h1>Product Detail</h1>


            <p class="lead">Here is the detail information of the product:</p>
        </div>

        <div class="container" ng-app = "cartApp">
            <div class="row">
                <div class="col-md-5">
                  
                    <img src='<x:url value="/resources/images/${product.image}"/>'/>
                </div>
                <div class="col-md-5">
                
                    <h3><strong>Name</strong>:${product.name}</h3>
                    <p><strong>Price</strong> : ${product.price}</p>
                    <p><strong>Warranty</strong>: ${product.warranty}</p>
                    
                    

                    <!-- <sec:authorize access="hasRole('ROLE_USER')">    -->                                                        
                    <a href="viewCart?chairId=${product.id}" class="btn btn-warning btn-large"><span class="glyphicon glyphicon-shopping-cart"></span>ADD TO CART</a>     
                    <!-- </sec:authorize>          -->                  
                </div>
            </div>
        </div>
        </form:form>
        
        </div></div></html>
        




