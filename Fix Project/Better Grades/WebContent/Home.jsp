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

<script><%@ page import ="MyBatisPackage.dao.ClassAverageDAO" %></script>

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

<script>
list<ClassAverage> = class_list;
ClassAverageDAO temp = new ClassAverageDAO();
class_list = temp.getAllClassAverageByCIP("LESG2605");
for (int i = 0; i < class_list.size(); i++) {
</script>
	<tr>
   <td> <button type="button" onclick="active(class_list.get(i).getId())">GENtem<script> class_list.get(i).getId()</script> </button></td>
   <td> 50%<script> class_list.get(i).getTotal()</script> </td>
   <td> 50%<script> class_list.get(i).getMoyenne()</script> </td>
   <td> D<script> class_list.get(i).getCoteIndividuelle()</script> </td>
   </tr>
<script> } </script>

    </table>


    <script>
    function active(String cours) {
        <!-- lien cours active -->
        }
    </script>

</body>
</html>
