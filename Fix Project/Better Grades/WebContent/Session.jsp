<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<link rel="stylesheet" type="text/css" href="css/home.css">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
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
	
	<img src="images/logoudes.png" />
	
	<nav class = 'content_header'>
	</nav>
	
	
<Form name="Liste_de_session" >
	<table id="La_Chose" border="1" cellpadding="10">
	
		<tr>
	        <th> <h3>Session</h3></th>
	        <th> <h3>Moyenne Individuelle (%)</h3></th>
	        <th> <h3> Moyenne du groupe (%) </h3></th>
	        <th> <h3>Cote Individuelle</h3> </th>
	        <th> <h3>Cote Moyenne</h3> </th>
	    </tr>
	
		<%String cip_act=(String)request.getAttribute("cip").toString().toUpperCase();

		List<SessionAverage> session_list;
		SessionAverageDAO temp = new SessionAverageDAO();
		session_list = temp.getAllSessionByCIP(cip_act);
		
		for (int i = 0; i < session_list.size(); i++) {%>
		<tr>
	
	<td> <form action="session" method="post">
		<input type="hidden" name="NomdeSession" size="20" value=<%= session_list.get(i).getTrimestre() %> >
	    <input type="submit" value= <%= session_list.get(i).getTrimestre() %>  />
	</form></td>
	<td><%= session_list.get(i).getTotal() %></td>
	<td><%= session_list.get(i).getMoyenne() %></td>
	<td><%= session_list.get(i).getCoteIndividuelle() %></td>
	<td><%= session_list.get(i).getCoteMoyenne()%></td>	 
	</tr>
	<% }%>
	</table>
	</Form>
	
</body>
</html>