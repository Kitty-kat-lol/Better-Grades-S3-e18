<script> <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%> </script>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
  <link rel="stylesheet" type="text/css" href="stylesheet.css">
  <head>
  <meta http-equiv="Content-Type" content="text/html; charset=ISO-	8859-1">
  <title>Bienvenue</title>
  </head>
<body>

<h1>Détails Cours :</h1>

<p id="NOM_Cours"></p>
<script>
document.getElementById("NOM_Cours").innerHTML ="nom du cours : TEST";
</script>

<p id="NOW"></p>
<script>
document.getElementById("NOW").innerHTML ="Note globale du cours jusqu'à maintenant : 10%";
</script>

<p id="MOYG"></p>
<script>
document.getElementById("MOYG").innerHTML ="Moyenne du groupe dans ce cours : 30%";
</script>

<p id="Cote_prevue"></p>
<script>
document.getElementById("Cote_prevue").innerHTML ="Cote_prevue : D";
</script>

<script>
 <%@ page import ="MyBatisPackage.dao.CompetenceAverageDAO" %>
 <%@ page import ="MyBatisPackage.dao.ExamAverageDAO" %>
</script>

<table border="1" cellpadding="10">

  <tr>
    <th> <h3>Évaluation</h3></th>
    <th> <h3>note competence</h3> </th>
    <th> <h3>ponderation competence</h3> </th>
    <th> <h3>note cours</h3> </th>
    <th> <h3>Moyenne groupe</h3> </th>
    <th> <h3>Ponderation cours</h3> </th>
    <th> <h3>Lettre</h3> </th>
  </tr>

  <script> <%
	  CompetenceAverageDAO someTest = new CompetenceAverageDAO();
	  ExamAverageDAO testExams = new ExamAverageDAO();
	  CompetenceDAO comp = new CompetenceDAO();
	  ExamDAO exam = new ExamDAO();
    for (int i = 0; i < exam.getAllExams().size(); i++) {
      %> </script>
  <tr>
    <td>A <script> <%= exam.getAllExams().get(i).getNom() %> </script> </td>
    <td>0/10 <script> <%= exam.getAllExams().get(i).getNoteCompetence() %> </script> </td>
    <td>5/30 <script> <%= exam.getAllExams().get(i).getPonderationCompetence() %> </script> </td>
    <td>10/30 <script> <%= exam.getAllExams().get(i).getNote() %> </script> </td>
    <td>15/30 <script> <%= testExams.getAllExamAverageByCIPAndClass("CONT3301", "GEN100").get(i).getNote() %> </script> </td>
    <td>10/600 <script> <%= exam.getAllExams().get(i).getPonderation() %> </script> </td>
    <td>E <script> <%= exam.getAllExams().get(i).getCote() %> </script> </td>
  </tr>
  <script> <% } %> </script>

</table>

<p id="space"></p>

<table>
	<tr>
    <!–– Boutton1 ––>
	<button type="button" onclick="precedant()">Cours précédent!</button>
    <!–– Boutton2 ––>
	<button type="button" onclick="suivant()">Cours suivant!</button>
    <tr>
</table>


<script>
function precedant() {
    <!-- lien cours précédent -->
</script>

<script>
function suivant() {
    <!-- lien cours suivant -->
}
</script>

</body>
</html>
