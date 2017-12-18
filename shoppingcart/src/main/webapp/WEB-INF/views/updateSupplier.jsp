<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head><title>UPDATESUPPLIER.JSP</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

</head>
<body>
    <div align="center">
        <h1>New/Edit Contact</h1>
        <form:form action="updateSup" method="get" modelAttribute="supplier">
        <table>
            <form:hidden path="id"/>
            <tr>
                <td>Supplier Name:</td>
                <td><form:input path="name" /></td>
            </tr>
            <tr>
                <td>Supplier Desc</td>
                <td><form:input path="location" /></td>
            </tr>
             <tr>
                <td>Supplier Cat</td>
                <td><form:input path="category" /></td>
            </tr>
            <tr>
                <td colspan="2" align="center"><input type="submit" value="Update"></td>
            </tr>
        </table>
        </form:form>
    </div>
</body>
</html>