<?php
$host = "localhost";
$login = "root";
$mdp = "";
$base = "vakay";
if($con=mysqli_connect($host,$login,$mdp,$base))
{
echo "Connexion réussie";
}
else
{
die("Erreur");
}
?>