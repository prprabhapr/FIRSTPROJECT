<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<html>
  <head><title>ADDSUPPLIER.JSP</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  </head>
  <%@ include file = "header.jsp" %>
<body>
<form class="form-horizontal" commandName="supplier" method="GET" action="insertSupplier">
<legend>Category</legend>
 <div class="modal-dialog">
    <div class="modal-content">
        <div class="modal-header"> 
          <h1 class="text-center">ADD SUPPLIER</h1>
        </div>
         <div class="modal-body">  
<div class="form-group">
  <label class="col-md-4 control-label" for="name">Supplier Name</label>  
  <div class="col-md-4">
  <input id="name" name="name" type="text" placeholder="Enter your cname" class="form-control input-md" required="">
  </div>
</div>
<div class="form-group">
  <label class="col-md-4 control-label" for="location">Supplier Location</label>  
  <div class="col-md-4">
  <input id="location" name="location" type="text" placeholder="Enter supplier location" class="form-control input-md" required="">
  </div></div>
  <div class="form-group">
  <label class="col-md-4 control-label" for="name">Category Name</label>  
  <div class="col-md-4">
  <input id="category" name="category" type="text" placeholder="Enter Cayegory" class="form-control input-md" required="">
    <br><center><button id="add" name="add" class="btn btn-success">ADD</button></center>
  </div>
  
</div></div></div></div>
 </form>
 
 </body>
 </html>