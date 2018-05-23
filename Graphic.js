//The begenning graphique

<html>
<body>

<h1>My First JavaScript</h1>

<p>JavaScript can change the content of an HTML element:</p>

<button type="button" onclick="myFunction1()">Click Me!</button>

<p id="demo">Ca marche pas.</p>

<script>
function myFunction1() {
    document.getElementById("demo").innerHTML = "C'est la faute de Gab!";
}
</script>

<button type="button" onclick="myFunction()">Click Me!</button>

<p id="demo1">Ca marche toujour pas ?</p>

<script>
function myFunction() {
    document.getElementById("demo1").innerHTML = "C'est encore la faute de Gab!";
}
</script>

</body>
</html>
