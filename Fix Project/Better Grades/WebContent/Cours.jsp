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
 <%@ page import ="MyBatisPackage.dao.CoursDAO" %>
</script>

<table border="1" cellpadding="10">

  <tr>
    <th> <h3>Évaluation</h3></th>
    <th> <h3>competence 1</h3> </th>
    <th> <h3>competence 2</h3> </th>
    <th> <h3>competence 3</h3> </th>
    <th> <h3>Note Totale</h3> </th>
    <th> <h3>Moyenne groupe</h3> </th>
    <th> <h3>Ponderation</h3> </th>
    <th> <h3>Lettre</h3> </th>
  </tr>

  <script> <%
      CoursDAO cours = new CoursDAO();
    for (int i = 0; i < cours.getAllCourss().size(); i++) {
      %> </script>
  <tr>
    <td>A <script> <%= cours.getAlleval().get(i).getNom() %> </script> </td>
    <td>0/10 <script> <%= cours.getAlleval().get(i).getNote() %> </script> </td>
    <td>5/10 <script> <%= cours.getAlleval().get(i).getNote() %> </script> </td>
    <td>5/10 <script> <%= cours.getAlleval().get(i).getNote() %> </script> </td>
    <td>10/30 <script> <%= cours.getAlleval().get(i).getNote() %> </script> </td>
    <td>15/30 <script> <%= cours.getAlleval().get(i).getMoyG() %> </script> </td>
    <td>10/600 <script> <%= cours.getAlleval().get(i).getPond() %> </script> </td>
    <td>E <script> <%= cours.getAlleval().get(i).getCote() %> </script> </td>
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
