<!–– The begenning graphique ––>

<!DOCTYPE html>
<html>
<body>

<h1>Interface Initiale</h1>

<p>Better-Grades-S3-e18</p>

<!–– Boutton1 ––>
<p id="Affichage1">Ca marche pas.</p>

<button type="button" onclick="myFunction1()">Get notes!</button>

<script>
function myFunction1() {
    document.getElementById("Affichage1").innerHTML = "C'est la faute de Gab!";
}
</script>

<!–– Boutton2 ––>
<p id="Affichage2">Ca marche toujour pas ?</p>

<button type="button" onclick="myFunction2()">Cours suivant!</button>

<script>
function myFunction2() {
    document.getElementById("Affichage2").innerHTML = "C'est encore la faute de Gab!";
}
</script>
<!–– Boutton3 ––>
<p id="Affichage3">Et après?</p>

<button type="button" onclick="myFunction3()">"Réponse de l'univers!"</button>

<script>
function myFunction3() {
    document.getElementById("Affichage3").innerHTML = "C GAB!";
}
</script>

</body>
</html>
