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
	<%@ page import ="java.math.*" %>
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

 	


	<% String cour_act= (String)request.getAttribute("myname").toString().toUpperCase();
    String cip_act = (String)request.getAttribute("cip").toString().toUpperCase();
    int groupe_act = 1;
    String trim_act = "H18";

    ClassAverage Class_act;
	ClassAverageDAO class_total = new ClassAverageDAO();
	Class_act = class_total.getClassAverageByCIPAndCoursId(cip_act, cour_act, groupe_act, trim_act);
     %>


<img src="images/logoudes.png" />

<nav class = 'content_header' >
<h1> <%= cour_act %></h1>


<p><%= cip_act %> </p>

<p id="NOW"></p>
<script>
document.getElementById("NOW").innerHTML ="Note globale du cours : = " + Class_act.getCoteIndividuelle();
</script>

<p id="MOYG"></p>
<script>
document.getElementById("MOYG").innerHTML ="Moyenne du groupe dans ce cours : = " + Class_act.getCoteGroupe();
</script>

<!--
<p id="Cote_prevue"></p>
<script>
document.getElementById("Cote_prevue").innerHTML ="Cote_prevue : D";
</script>
-->

<table border="1" cellpadding="10">

  	<% List<ExamAverage> evals;
	  ExamAverageDAO testExams = new ExamAverageDAO();
      evals = testExams.getAllExamAverageByCIPAndClass(cip_act, cour_act, groupe_act, trim_act);
      List<CompetenceAverage> compt;
      CompetenceAverageDAO someTest = new CompetenceAverageDAO();
      compt = someTest.getAllCompetenceAverageByCIP(cip_act, cour_act, groupe_act, trim_act);%>
      
  <tr>
    <th> <h3>Évaluation</h3></th>
    <% for (int i = 0; i < compt.size(); i++) {%> 
    <th> <h3>C<%=(i+1) %></h3></th>
    <% } %>
    <th> <h3>Note</h3> <p></th>
    <th> <h3>Moyenne du groupe</h3> <p></th>
    <th> <h3>Pondération</h3></th>
  </tr>

    <%int len = 0;
    String temp_str ="";
    for (int i = 0; i < evals.size(); i++)
    {
		if (!evals.get(i).getNomExam().equals(temp_str))
		{
    		len = len + 1;
		}
		temp_str = evals.get(i).getNomExam();
    }
    
    int run = 0;
    temp_str ="";
    String tabb[][] = new String[len][(4+compt.size())];
    for (int i = 0; i < evals.size(); i++) 
    {
		if (!evals.get(i).getNomExam().equals(temp_str))
		{
			tabb[run][0] = evals.get(i).getNomExam();
			for (int j = 0; j < compt.size(); j++) 
			{
			   	if((j+i) < evals.size())
			   	{
			   		if (evals.get(j+i).getCompetence() == (j+1))
			   		{
			   			tabb[run][(j+1)] = String.valueOf(Math.round(evals.get(i+j).getNote()));
			   		}
			       	else 
			       	{
			       		tabb[run][(j+1)] = "null";
			       	}
			   	}
			}
		tabb[run][(1+compt.size())] = String.valueOf(Math.round(evals.get(i).getTotalExam()));
		tabb[run][(2+compt.size())] = String.valueOf(Math.round(evals.get(i).getTotalMoyenne()));
		tabb[run][(3+compt.size())] = String.valueOf(Math.round(evals.get(i).getPonderation()));
		run = run + 1;
		}
	temp_str = evals.get(i).getNomExam();
	} %> 
	
	<%for (int i = 0;i < tabb.length; i++){ %>
  <tr>
  	<td><%=tabb[i][0]%></td>
  		<%for (int j = 0; j < compt.size();j++){ %>
    <td><%=tabb[i][(j+1)]%></td>
    	<% } %>
    <td><%=tabb[i][(1+compt.size())]%></td>
    <td><%=tabb[i][(2+compt.size())]%></td>
    <td><%=tabb[i][(3+compt.size())]%></td>
  </tr>
   <% } %>

</table>

<p id="space"></p>

<table>
	<tr>
    <td><button type="button" onclick="precedant()">Cours précédent!</button> </td>
    <td><button type="button" onclick="suivant()">Cours suivant!</button> </td>	
    <tr>
</table>


<script>
function precedant() {
    
    }
</script>

<script>
function suivant() {
   
	}
</script>

</body>
</html>
