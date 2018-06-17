<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<link rel="stylesheet" type="text/css" href="stylesheet.css">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Bienvenue</title>
</head>
<body>
<%@ page import ="MyBatisPackage.dao.CoursDAO" 

%>
<h1><%
	out.println("Welcome to Better Grades,");
	out.println("Overall GPA: ,");

	
	%></h1>
<br/>	
<h2><%

	out.println("Here are your classes: ");
	%></h2>
<table border="1" cellpadding="10">

	<tr>
        <th> <h3>Class ID</h3></th>
        <th> <h3>Name</h3> </th>
        <th> <h3>Personal Average</h3> </th>
        <th> <h3>Group Average</h3> </th>
        <th> <h3>Expected GPA (letter)</h3> </th>
        <th> <h3>Expected GPA (number)</h3> </th>
    </tr>
    
		<%
		
		
CoursDAO cours = new CoursDAO();
for (int i = 0; i < cours.getAllCourss().size(); i++) {
%>
	<tr>
   <td> <%= cours.getAllCourss().get(i).getId() %> </td>
   <td> <%= cours.getAllCourss().get(i).getNom() %> </td>
   </tr>
<% } %>


    
 
    
    
    
    </table>


</body>
</html>

