<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="robots" content="noindex, nofollow">

    <title>REGISTER.JSP</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <style type="text/css">
    
    </style>
    <script src="//code.jquery.com/jquery-1.10.2.min.js"></script>
    <script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    <script type="text/javascript">
        window.alert = function(){};
        var defaultCSS = document.getElementById('bootstrap-css');
        function changeCSS(css){
            if(css) $('head > link').filter(':first').replaceWith('<link rel="stylesheet" href="'+ css +'" type="text/css" />'); 
            else $('head > link').filter(':first').replaceWith(defaultCSS); 
        }
        $( document ).ready(function() {
          var iframe_height = parseInt($('html').height()); 
          window.parent.postMessage( iframe_height, 'https://bootsnipp.com');
        });
    </script>
</head>
<%@ include file = "header.jsp" %>

<body>
                  <%--THIS IS FORM COMMAND NAME,METHOD,ACTION TO HANDLE IN CONTROLLER--%>
                  
	<form class="form-horizontal" commandName="user" method="post" action="addUser">
	<form:errors path="*" cssClass="errStyle" element="div"/>
	
<fieldset>
<!-- Form Name --><!--<legend>Sign Up Form</legend><center><h1>Registration Form</h1></center>-->
<br><br><br>                                      <!--Text input-->
     <div class="modal-dialog">
    <div class="modal-content">
        <div class="modal-header">
          <h1 class="text-center">REGISTER FORM</h1>
        </div>
         <div class="modal-body">                                            
<div class="form-group">
  <label class="col-md-4 control-label" for="name">Name</label>  
  <div class="col-md-4">
  <input id="name" name="name" type="text" placeholder="Enter your name" class="form-control input-md" required="">
  <form:errors path="name" cssStyle="color: #ff0000"></form:errors>  
  </div>
</div>
<div class="form-group">
  <label class="col-md-4 control-label" for="mail">Mail</label>  
  <div class="col-md-4">
  <input id="mail" name="mail" type="text" pattern="[^ @]*@[^ @]*" placeholder="Enter your mail" class="form-control input-md" required="">
    <form:errors path="mail" cssStyle="color: #ff0000"/>
  </div>
</div>
<div class="form-group">
  <label class="col-md-4 control-label" for="password">Password</label>
  <div class="col-md-4">
    <input id="password" name="password" type="password" placeholder="Enter a password" class="form-control input-md" required="">
    <form:errors path="password" cssStyle="color: #ff0000"/>
  </div>
</div>
<div class="form-group">
  <label class="col-md-4 control-label" for="phoneno">Phoneno</label>  
  <div class="col-md-4">
  <input id="phoneno" name="phoneno" type="text" placeholder="Enter your phoneno" class="form-control input-md" required="">
    <form:errors path="phoneno" cssStyle="color: #ff0000"/>
  </div>
</div>
<div class="form-group">
  <label class="col-md-4 control-label" for="addr">Addr</label>  
  <div class="col-md-4">
  <input id="addr" name="addr" type="text" placeholder="Enter your Addr" class="form-control input-md" required="">
    <form:errors path="addr" cssStyle="color: #ff0000"/>
  </div>
</div>
<div class="form-group">
  <label class="col-md-4 control-label" for="zipcode">Zipcode</label>  
  <div class="col-md-4">
  <input id="zipcode" name="zipcode" type="text" placeholder="Enter your Zipcode" class="form-control input-md" required="">
    <form:errors path="zipcode" cssStyle="color: #ff0000"/>
  </div>
</div>
                                          <!-- THIS IS BUTTON 4 SIGN UP -->
<div class="form-group">
  <label class="col-md-4 control-label" for="signup"></label>
  <div class="col-md-4">
   <center><button id="signup" name="signup" class="btn btn-success">Sign Up</button></center>
  </div>
</div></div></div></div>

</fieldset>
</form>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>