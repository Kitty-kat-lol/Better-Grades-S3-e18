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
 	<%@ page import ="MyBatisPackage.dao.CompetenceAverageDAO" %>
 	<%@ page import ="MyBatisPackage.dao.ExamAverageDAO" %>
 	<%@ page import ="MyBatisPackage.model.*" %>
	<%@ page import ="java.util.*" %>
 	


	<% String cour_act= (String)request.getAttribute("myname").toString().toUpperCase();
    String cip_act = (String)request.getAttribute("cip").toString().toUpperCase(); 

    ClassAverage Class_act;
    List<ClassAverage> Class_list;
	ClassAverageDAO test = new ClassAverageDAO();
	Class_act = test.getClassAverageByCIPAndCoursId(cip_act, cour_act);
    Class_list = test.getAllClassAverageByCIP(cip_act); %>



<h1> <%= cour_act %></h1>


<p><%= cip_act %> </p>

<p id="NOW"></p>
<script>
document.getElementById("NOW").innerHTML ="Note globale du cours : "+
"temp" + " = " + "C";
</script>

<p id="MOYG"></p>
<script>
document.getElementById("MOYG").innerHTML ="Moyenne du groupe dans ce cours : "+
"temp" + " = " + "C";
</script>

<!--
<p id="Cote_prevue"></p>
<script>
document.getElementById("Cote_prevue").innerHTML ="Cote_prevue : D";
</script>
-->

<table border="1" cellpadding="10">

  <tr>
    <th> <h3>Évaluation</h3></th>
    <th> <h3>Totale</h3> <p> note/ponderation</p> </th>
    <th> <h3>Moyenne</h3> <p> note/ponderation</p></th>
    <th> <h3>competences</h3> <p> note/ponderation</p></th>
    <th> <h3> moyenne competences</h3> <p> note/ponderation</p></th>
  </tr>


  	<% List<ExamAverage> evals;
	  ExamAverageDAO testExams = new ExamAverageDAO();
      evals = testExams.getAllExamAverageByCIPAndClass(cip_act, cour_act);
    for (int i = 0; i < evals.size(); i++) {
      %> 
  <tr>
    <td> <%=evals.get(i).getNomExam() %></td>
    <td><%= evals.get(i).getNote() %>  </td>
    <td> <%=evals.get(i).getMoyenne() %>  </td>
    <td> <%=evals.get(i).getPonderation() %>  </td>
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
    <!-- lien cours précédent -->
    }
</script>

<script>
function suivant() {
    <!-- lien cours suivant -->
	}
</script>

</body>
</html>
