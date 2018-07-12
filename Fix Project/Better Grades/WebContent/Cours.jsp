<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<!--
<link rel="stylesheet" type="text/css" href="stylesheet.css">
-->
<head>
<meta charset="UTF-8">
  <title>Bienvenue</title>
  </head>
<body>
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

 	


	<% String cour_act= (String)request.getAttribute("myname").toString().toUpperCase();
    String cip_act = (String)request.getAttribute("cip").toString().toUpperCase();
    int groupe_act = (int)request.getAttribute("groupe").toint();
    String trim_act = (String)request.getAttribute("trimestre").toString().toUpperCase();

    ClassAverage Class_act;
	ClassAverageDAO class_total = new ClassAverageDAO();
	Class_act = test.getClassAverageByCIPAndCoursId(cip_act, cour_act, groupe_act, trim_act);
     %>



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

  <tr>
    <th> <h3>Évaluation</h3></th>
    <th> <h3>C1</h3></th>
    <th> <h3>C2</h3></th>
    <th> <h3>C3</h3></th>
    <th> <h3>Note</h3> <p></th>
    <th> <h3>Moyenne</h3> <p></th>
    <th> <h3>Pondération</h3></th>
  </tr>


  	<% List<ExamAverage> evals;
	  ExamAverageDAO testExams = new ExamAverageDAO();
      evals = testExams.getAllExamAverageByCIPAndClass(cip_act, cour_act, groupe_act, trim_act);
      List<CompetenceAverage> compt;
      CompetenceAverageDAO someTest = new CompetenceAverageDAO();
      compt = someTest.getAllCompetenceAverageByCIP(cip_act, cour_act, groupe_act, trim_act);
      
    for (int i = 0; i < evals.size(); i++) {
      %> 
  <tr>
    <td> <%=evals.get(i).getNomExam() %></td>
    <td> <%=evals.get(i).getC1() %></td>
    <td> <%=evals.get(i).getC2() %></td>
    <td> <%=evals.get(i).getC3() %></td>
    <td><%= evals.get(i).getTotal() %>  </td>
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
    
    }
</script>

<script>
function suivant() {
   
	}
</script>

</body>
</html>
