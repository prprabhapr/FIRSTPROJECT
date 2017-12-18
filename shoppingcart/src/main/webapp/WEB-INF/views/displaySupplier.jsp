<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<html>
  <head><title>DISPLAYSUP.JSP</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  </head>
  <%@ include file = "header.jsp" %>
<body>
 
<body  style="background-color:powderblue;">
<center>
 <form:form action="manageSupplier" method="GET">
 <br><br><br>
 <h1>Supplier List</h1>
 
 <table border="4" width="40%" cellpadding="2"> 
 <tr>
 <td><center><b>SID</b></center></td>
 <td><center><b>SNAME</b></center></td>
 <td><center><b>SLOCATION</b></center></td>
  <td><center><b>CATEGORY</b></center></td>
 </tr>
 <c:forEach items="${list}" var="supplier">
 <tr>
 <td><center>${supplier.id}</center></td>
 <td><center>${supplier.name}</center></td>
 <td><center>${supplier.location}</center></td>
 <td><center>${supplier.category}</center></td>
 <td><center><a href="<c:url value='/manage_supplier_edit?id=${supplier.id}'/>"><span class="glyphicon glyphicon-edit"></span></a></center></td>
 <td><center><a href="<c:url value='/manage_supplier_delete?id=${supplier.id}'/>"><span class="glyphicon glyphicon-remove"></span></a></center></td>
 </tr>
 </c:forEach>
 </table><br><br><br>
 <a href="addsup" class="btn btn-info">Add Supplier</a>
 </form:form>
 </center>
 <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><%@ include file = "footer.jsp" %>
</body>
</html>