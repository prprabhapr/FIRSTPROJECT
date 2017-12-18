<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
					
				<a class="navbar-brand" href="index">Home</a>
			</div>
			
      		
			</div>					
	</nav>
 
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
 
 <input type="text" class="form-control" placeholder="Search" ng-model="searchBy.name"/><br/>
  <tr ng-repeat="x in names | filter:searchBy">
    <td>{{x.id}}</td>
    <td><img src="<c:url value="/resources/images/{{x.image}}" /> " alt="image" style="width:30%"/></td>   
    <td>{{x.name}}</td>
    <td>{{x.price}}</td>
    <td>{{x.Description}}</td>
      </tr>
</table>


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



