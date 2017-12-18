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
  <%@ include file = "header.jsp" %>
  <body>
    <div align="center">
    <br><br><br>
        <h1>Update Category</h1>
        <form:form action="updateCat" method="get" modelAttribute="category">
        <table>
            <form:hidden path="id"/>
            <tr>
                <td>Category Name:</td>
                <td><form:input path="name" /></td>
            </tr>
            <tr>
                <td>Category Desc</td>
                <td><form:input path="description" /></td>
            </tr>
            <tr>
                <td colspan="2" align="center"><input type="submit" value="Update"></td>
            </tr>
        </table>
        
        
        </form:form>
    </div>
</body>
</html>