<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import ="com.Servlet.model.Employee" %>
<%@page import="java.util.ArrayList" %>
<%@ page isELIgnored="false"%>
<html>
<% ArrayList <Employee> obj = (ArrayList <Employee> )request.getAttribute("validate"); %>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

<style>
table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

td, th {
  border: 1px solid #dddddd;
  text-align: left;
  padding: 8px;
}

tr:nth-child(even) {
  background-color: #dddddd;
}
</style>

</head>
<body>

 
 <table>
 
 <tr>
 	<th>emp_id</th>
 	<th>firstname</th>
 	<th>lastname</th>
 	<th>email</th>
 	<th>password</th>
 	<th>Contact</th>
 
 </tr>
 
 <% for (int a = 0 ; a < obj.size();a++){ %>
 
 	<tr>
 	<% Employee emp = (Employee)obj.get(a); %>
 		<td><%=emp.getEmp_id()%></td>
 		<td><%=emp.getFirstName()%></td>
 		<td><%=emp.getLastName()%></td>
 		<td><%=emp.getEmail()%></td>
 		<td><%=emp.getPassword()%></td>
 		<td><%=emp.getContact()%></td>
 	</tr>

 <%} %>
 </table>
</body>
</html>