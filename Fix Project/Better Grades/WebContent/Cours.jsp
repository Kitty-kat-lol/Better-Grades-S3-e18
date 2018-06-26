<script> <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%> </script>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
  <link rel="stylesheet" type="text/css" href="stylesheet.css">
  <head>
  <meta http-equiv="Content-Type" content="text/html; charset=ISO-	8859-1">
  <title>Cours</title>
  </head>
<body>

 <%@ page import ="MyBatisPackage.dao.CompetenceAverageDAO" %>
 <%@ page import ="MyBatisPackage.dao.ExamAverageDAO" %>

<h1>Détails Cours :</h1>
=======
<script>
	<%@ page import ="MyBatisPackage.dao.ClassAverageDAO" %>
 	<%@ page import ="MyBatisPackage.dao.CompetenceAverageDAO" %>
 	<%@ page import ="MyBatisPackage.dao.ExamAverageDAO" %>
</script>

<script>
	var cour_act = "GEN100";
    var cip_act = "CONT3301";
</script>
<script>
    ClassAverage Class_act;
    List<ClassAverage> Class_list;
	ClassAverageDAO test = new ClassAverageDAO();
	Class_act = test.getClassAverageByCIPAndCoursId(cip_act, cour_act);
    Class_list = test.getAllClassAverageByCIP(cip_act);
</script>
>>>>>>> 80e1152d3a77f7cd3eb2e61c054592e4f8627447

<h1 id="titre"></h1>
<script>
  document.getElementById("titre").innerHTML =cour_act;
</script>

<p id="cip"></p>
<script>
document.getElementById("cip").innerHTML ="Utilisateur : " + cip_act;
</script>

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
<<<<<<< HEAD




 

=======
-->
>>>>>>> 80e1152d3a77f7cd3eb2e61c054592e4f8627447

<table border="1" cellpadding="10">

  <tr>
    <th> <h3>Évaluation</h3></th>
    <th> <h3>Note Competence</h3> </th>
    <th> <h3>Moyenne groupe</h3> </th>
    <th> <h3>Ponderation Competence</h3> </th>
  </tr>

<<<<<<< HEAD
  <% 
 	  CompetenceAverageDAO someTest = new CompetenceAverageDAO();
	  ExamAverageDAO testExams = new ExamAverageDAO();
    for (int i = 0; i < testExams.getAllExams().size(); i++) {
      %>
=======
  <script>
  	List<ExamAverage> evals;
	  ExamAverageDAO testExams = new ExamAverageDAO();
      evals = testExams.getAllExamsByCIPAndClass(cip_act, cour_act);
    for (int i = 0; i < evals.size(); i++) {
      %> </script>
>>>>>>> 80e1152d3a77f7cd3eb2e61c054592e4f8627447
  <tr>
    <td>A <script> evals.get(i).getNomExam()</script> </td>
    <td>10% <script> evals.get(i).getTotal() %> </script> </td>
    <td>30% <script> evals.get(i).getMoyenne() %> </script> </td>
    <td>10/600 <script> evals.get(i).getPonderation() %> </script> </td>
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
    }
</script>

<script>
function suivant() {
    <!-- lien cours suivant -->
	}
</script>

</body>
</html>
