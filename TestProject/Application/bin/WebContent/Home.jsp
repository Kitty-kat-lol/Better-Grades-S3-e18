<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<link rel="stylesheet" type="text/css" href="Style.css">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Bienvenue</title>
</head>
<body>

<h1><%
	out.println("Welcome to Better Grades,");

	
	%></h1>
<br/>	
<h2><%

	out.println("Here are your classes: ");
	%></h2>
<table>

	<tr>
        <th><h3>Class ID</h3></th>
        <th> <h3>Name</h3> </th>
    </tr>
    </table>


</body>
</html>

