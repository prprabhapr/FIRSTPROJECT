<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<html>
<head>
<title>Category Page</title>
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
			
			<ul class="nav navbar-nav">
				<li class="active"><a href="retriveRecords">Manage Products</a></li>
				<li><a href="manageCategory">Manage Categories</a></li>
				<li><a href="manageSupplier">Manage Suppliers</a></li>
			</ul>
			<ul>
      		<li class="nav navbar-nav navbar-right"><a href="<c:url value='/j_spring_security_Logout'/>">
      		<span class="glyphicon glyphicon-log-in"></span>
						Logout</a></li></ul></div>
  
		</div>
	</nav>