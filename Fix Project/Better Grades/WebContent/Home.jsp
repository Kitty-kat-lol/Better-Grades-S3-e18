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

<%@ page import ="MyBatisPackage.dao.ClassAverageDAO" %>
<%@ page import ="java.util.*" %>
<%@ page import ="MyBatisPackage.model.ClassAverage" %>

<% String cip=(String)request.getAttribute("cip").toString().toUpperCase(); %>

<h1>Welcome to Better Grades, <%= cip %> </h1>
<br/>
<h2>Here are your classes:</h2>


<table border="1" cellpadding="10">

	<tr>
        <th> <h3>Class ID</h3></th>
        <th> <h3>Personal Average</h3> </th>
        <th> <h3>Group Average</h3> </th>
        <th> <h3>Expected GPA (letter)</h3> </th>
    </tr>

	<%
	
	List<ClassAverage> class_list;
	ClassAverageDAO temp = new ClassAverageDAO();
	class_list = temp.getAllClassAverageByCIP(cip);
for (int i = 0; i < class_list.size(); i++) {
	%>
	<tr>

<td> <form action="cours" method="post">
	<input type="hidden" name="NomdeCours" size="20" value=<%= class_list.get(i).getIdCours() %> >
    <input type="submit" value=<%= class_list.get(i).getIdCours() %>  />
</form></td> 

   <td>  <%= class_list.get(i).getTotal() %> </td>
   <td> <%= class_list.get(i).getMoyenne()  %> </td>
   <td> <%= class_list.get(i).getCoteIndividuelle() %> </td>
   </tr>
<% } %>   


    </table>



	
    
    
    


</body>
</html>
