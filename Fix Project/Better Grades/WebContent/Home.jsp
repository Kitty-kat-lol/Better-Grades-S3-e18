<script><%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%></script>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<link rel="stylesheet" type="text/css" href="stylesheet.css">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Bienvenue</title>
</head>
<body>

<%@ page import ="MyBatisPackage.dao.ClassAverageDAO" %>
<%@ page import ="java.util.List" %>
<%@ page import ="MyBatisPackage.model.ClassAverage" %>

<h1>Welcome to Better Grades</h1>
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
	class_list = temp.getAllClassAverageByCIP("LESG2605");
for (int i = 0; i < class_list.size(); i++) {
	%>
	<tr>
<<<<<<< HEAD
   <td> <button><%= class_list.get(i).getIdCours() %>  </button></td>
   <td>  <%= class_list.get(i).getTotal() %> </td>
   <td> <%= class_list.get(i).getMoyenne()  %> </td>
   <td> <%= class_list.get(i).getCoteIndividuelle() %> </td>
   </tr>
<% } %> 
   <td> 50%<script> =class_list.get(i).getMoyenne()</script> </td>
   </tr>
<script> } </script>
>>>>>>> 3ee1f0f471e6b5994b97117a26fe76156762b38b

    </table>


<<<<<<< HEAD
	
    
    
    
=======
    <script>
    function active(String cours) {
        <!-- lien cours active -->
        }
    </script>
>>>>>>> 3ee1f0f471e6b5994b97117a26fe76156762b38b

</body>
</html>
