<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ include file = "header.jsp" %>
<html>
  <head><title>DISPLAYCAT.JSP</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  </head>
  
<body>
<form class="form-horizontal" commandName="category" method="get" action="insertCategory">
<legend>Category</legend>
 <div class="modal-dialog">
    <div class="modal-content">
        <div class="modal-header"> 
          <h1 class="text-center">ADD CATEGORY</h1>
        </div>
         <div class="modal-body">  
<div class="form-group">
  <label class="col-md-4 control-label" for="name">Category Name</label>  
  <div class="col-md-4">
  <input id="name" name="name" type="text" placeholder="Enter your cname" class="form-control input-md" required="">
  </div>
</div>
<div class="form-group">
  <label class="col-md-4 control-label" for="description">Category Description</label>  
  <div class="col-md-4">
  <input id="description" name="description" type="text" placeholder="Enter your cdescription" class="form-control input-md" required="">
  <br><center><button id="add" name="add" class="btn btn-success">ADD</button></center>
  </div>
  
</div></div></div></div>
 </form>
 
 </body>
 </html>