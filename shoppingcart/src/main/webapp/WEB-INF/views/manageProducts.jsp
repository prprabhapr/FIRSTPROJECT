<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:th="http://www.thymeleaf.org"
      xmlns:sec="http://www.thymeleaf.org/thymeleaf-extras-springsecurity3">

<html>
<head>
  <link rel="stylesheet" href='<x:url value="/resources/css/bootstrap.min.css"></x:url>' />
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.6/angular.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>
<body>
	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
					
				<a class="navbar-brand" href="landPage">Home</a>
			</div>
			<sec:authorize access="hasRole('ROLE_ADMIN')">
			<ul class="nav navbar-nav">
				<li><a href="manageSupplier">Manage Suppliers</a></li>
				<li><a href="category">Manage Categories</a></li>
			</ul></sec:authorize>
			
			 
			  <div><ul>
      <sec:authorize access="hasAnyRole('ROLE_ADMIN','ROLE_USER')">	<li class="nav navbar-nav navbar-right"><a href="<c:url value='/j_spring_security_Logout'/>">
      		<span class="glyphicon glyphicon-log-in"></span>
						Logout</a></li></sec:authorize></ul></div>
			</div>		
     
      		
			</div>					
	</nav>
 <h3>Welcome... <%=session.getAttribute("loggedInUser")%></h3>
    <div class="container">
        
<div ng-app="myApp" ng-controller="customersCtrl">

 <table class="table table-striped table-hover">
            <thead>
            <tr class="bg-success">
                  <th>Product Id</th>
                  <th>Photo Thumb</th>
                  <th>Product Name</th>
                  <th>Product Price</th>
                   <th>Product Desc</th>
      
  </tr>
  </thead>
 <!--  <sec:authorize access="hasAnyRole('ROLE_ADMIN','ROLE_USER')">-->
 <input type="text" class="form-control" placeholder="Search" ng-model="searchBy.name"/><br/>
  <tr ng-repeat="x in names | filter:searchBy">
    <td>{{x.id}}</td>
    <td><img src="<c:url value="/resources/images/{{x.image}}" /> " alt="image" style="width:30%"/></td>   
    <td>{{x.name}}</td>
    <td>{{x.price}}</td>
    <td>{{x.Description}}</td>
    <td>
    
    <a href="${pageContext.servletContext.contextPath}/viewProduct?id={{x.id}}"><span class="glyphicon glyphicon-info-sign"></span></a>
    <sec:authorize access="hasRole('ROLE_ADMIN')">
    <a href="${pageContext.servletContext.contextPath}/editProduct?id={{x.id}}"><span class="glyphicon glyphicon-pencil"></span></a>
    <a href="${pageContext.servletContext.contextPath}/delete?id={{x.id}}"><span class="glyphicon glyphicon-remove"></span></a>
   </sec:authorize>
   </td>
     </tr><!--</sec:authorize>-->
</table>
<sec:authorize access="hasRole('ROLE_ADMIN')">
<a href="newProduct" class="btn btn-info">Add Product</a>
</sec:authorize>

</div>

<script>
var app = angular.module('myApp', []);
app.controller('customersCtrl', function($scope, $http) {
    $http.get("list")
    .then(function (response) {$scope.names = response.data;});
});
</script>
</div>
</body>
</html>



