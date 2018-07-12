<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<link rel="stylesheet" type="text/css" href="css/home.css">

<head>
<meta charset="UTF-8">
<title>Bienvenue</title>
</head>
<body>

<nav class = "background">
<nav class = "content">
	<%@ page import ="MyBatisPackage.dao.ClassAverageDAO" %>
	<%@ page import ="java.util.*" %>
	<%@ page import ="MyBatisPackage.model.ClassAverage" %>
	<%@ page import ="MyBatisPackage.dao.CompetenceAverageDAO" %>
	<%@ page import ="MyBatisPackage.dao.CoursDAO" %>
	<%@ page import ="MyBatisPackage.dao.ExamAverageDAO" %>
	<%@ page import ="MyBatisPackage.dao.SessionAverageDAO" %>
	<%@ page import ="MyBatisPackage.model.ClassAverage" %>
	<%@ page import ="MyBatisPackage.model.CompetenceAverage" %>
	<%@ page import ="MyBatisPackage.model.Cours" %>
	<%@ page import ="MyBatisPackage.model.ExamAverage" %>
	<%@ page import ="MyBatisPackage.model.SessionAverage" %>


	<% String cip=(String)request.getAttribute("cip").toString().toUpperCase(); %>
	
	<img src="images/logoudes.png" />
	
	<nav class = "content_header">
	<h1>Bienvenue, <%= cip %> </h1>
	
	<h1>Liste de vos cours:</h1>
	</nav>
	<h1>Choisissez Session<h1>
	<ul> 
	<% for (int i = 0; i < 3; i++) {%>
		<li><a href="#">session<%System.out.print(i);%></a></li>
	<%}%>
	</ul>
	
	<nav class = "tableau">
	<table border="1" cellpadding="10">
	
		<tr>
	        <th> <h3>Nom</h3></th>
	        <th> <h3>Note</h3> </th>
	        <th> <h3>Moyenne</h3> </th>
	        <th> <h3>Cote</h3> </th>
	        <th> <h3>Cote groupe</h3></th>
	        <th> <h3>Crédits</h3></th>
	    </tr>
	
		<%
	    String trim_act = "H18";
		String cip_act=(String)request.getAttribute("cip").toString().toUpperCase();

		List<ClassAverage> class_list;
		ClassAverageDAO temp = new ClassAverageDAO();
		class_list = temp.getAllClassAverageByCIP(cip_act, trim_act);
		
		for (int i = 0; i < class_list.size(); i++) {%>
		<tr>
	
	<td> <form action="cours" method="post">
		<input type="hidden" name="NomdeCours" size="20" value=<%= class_list.get(i).getIdCours() %> >
	    <input type="submit" value=<%= class_list.get(i).getIdCours() %>  />
	</form></td> 
	
	   <td>  <%= class_list.get(i).getTotal() %> </td>
	   <td> <%= class_list.get(i).getMoyenne()  %> </td>
	   <td> <%= class_list.get(i).getCoteIndividuelle() %> </td>
	   <td> <%= class_list.get(i).getCoteMoyenne() %> </td>
	   <td> <%= class_list.get(i).getCredit() %> </td>
	   </tr>
	<% } %>   
	
	
	</table>
	</nav>
	
</nav>
</nav>

</body>
</html>
