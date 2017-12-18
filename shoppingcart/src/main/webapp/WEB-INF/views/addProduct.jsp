<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<head>
  <title>ADDPRODUCT.jsp</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="landPage">Admin Home</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="retriveRecords">Manage Products</a></li>
      <li><a href="category">Manage Categories</a></li>
      <li><a href="manageSupplier">Manage Suppliers</a></li>
      </ul>
           <div><ul>
      		<li class="nav navbar-nav navbar-right"><a href="<c:url value='/j_spring_security_Logout'/>">
      		<span class="glyphicon glyphicon-log-in"></span>
						Logout</a></li></ul></div>
  </div>
</nav>
<center><h1>ADD PRODUCT</h1></center>
    <div class="container" ng-app="imgApp" ng-controller="imgCtrl">
    <c:url var="addProduct" value="addProduct"></c:url>
   <form:form commandName="product" method="post" action="storeProduct" enctype="multipart/form-data">
       <table class="table table-bordered" >
           
           <tr><td><form:label path="name">Product Name :</form:label></td>
               <td><form:input path="name"/>
               <font color="red"><form:errors path="name"></form:errors></font></td>
           </tr>
           <tr><td><form:label path="price">Product Price :</form:label></td>
               <td><form:input path="price"/>
               <font color="red"><form:errors path="price"></form:errors></font></td>
           </tr>
           <tr><td><form:label path="Description">Description :</form:label></td>
               <td><form:input path="Description"/>
               <font color="red"><form:errors path="Description"></form:errors></font></td>
           </tr>           
           <tr><td><form:label path="warranty">Warranty :</form:label></td>
               <td><form:input path="warranty"/>
               <font color="red"><form:errors path="warranty"></form:errors></font></td>
            </tr>
                       
           <tr><td><form:label path="img">Product Image :</form:label></td>
               <td><form:input path="img" type="file"/>
               <font color="red"><form:errors path="img"></form:errors></font></td>
               
           </tr>
           <tr><td><form:label path="supplier">Supplier Name:</form:label></td>
               <td><select name="Supplier.id">
   				 <option value="">---Select---</option>
   				 <c:forEach var="Supplier" items="${suppliers}">
   				 <option value="${Supplier.id}">${Supplier.name}</option>
    		</c:forEach>
    		</select></td></tr>
    		<tr><td><form:label path="category">Category Name:</form:label></td>
               <td><select name="Category.id">
   				 <option value="">---Select---</option>
   				 <c:forEach var="Category" items="${categories}">
   				 <option value="${Category.id}">${Category.name}</option>
    		</c:forEach>
    		</select></td></tr>
           </table>
       <center><input type="submit" value="submit" class="btn"/></center>
   </form:form> 
  
</body>
</html>