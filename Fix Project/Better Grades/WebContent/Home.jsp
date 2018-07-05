<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" type="text/css" href="stylesheet.css">
<head>
<meta charset="UTF-8">
<title>Bienvenue</title>
</head>
<body>

<%@ page import ="MyBatisPackage.dao.ClassAverageDAO" %>
<%@ page import ="java.util.*" %>
<%@ page import ="MyBatisPackage.model.ClassAverage" %>

<% String cip=(String)request.getAttribute("cip").toString().toUpperCase(); %>

<h1>Bienvenue à vos notes, <%= cip %> </h1>
<br/>
<h2>Liste de vos cours:</h2>


<table border="1" cellpadding="10">

	<tr>
        <th> <h3>Nom</h3></th>
        <th> <h3>Note</h3> </th>
        <th> <h3>Moyenne</h3> </th>
        <th> <h3>Cote</h3> </th>
        <th> <h3>Moyenne Cote</h3></th>
        <th> <h3>Crédits</h3></th>
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
