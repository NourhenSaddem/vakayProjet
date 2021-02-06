<?php
header( 'content-type: text/html; charset=utf-8' );
include("connexion.php");

//Création de la table client
$sql = "CREATE TABLE client (
id_client INT(6) AUTO_INCREMENT PRIMARY KEY,
nom_client VARCHAR(30) NOT NULL,
prenom_client VARCHAR(30) NOT NULL,
email VARCHAR(40)Not NULL,
mdp VARCHAR(30)Not NULL,
tel INT(8),
adresse VARCHAR(50) Not NULL
)";
if(mysqli_query($con,$sql))
{
echo "La table client a été créée avec succès";
}
else{
echo "Erreur de création de la table";
}

//Création de la table produit
$sql = "CREATE TABLE produit ( 
id_produit INT(6) AUTO_INCREMENT PRIMARY KEY,
designation_prod VARCHAR(60) NOT NULL,
nom_prod VARCHAR(30) NOT NULL,
prix_prod FLOAT,
qte_prod INT(200),
id_categorie INT(10),
Foreign key (id_categorie) references categorie(id_categorie)
)";
if(mysqli_query($con,$sql))
{
echo "La table produit a été créée avec succès";
}
else{
echo "Erreur de création de la table";
}

//Création de la table commande
$sql = "CREATE TABLE commande (
id_cmd INT(6) AUTO_INCREMENT PRIMARY KEY,
date_cmd Date NOT NULL,
total_cmd FLOAT,
date_livr DATE,
id_client INT(6),
Foreign key (id_client) references client(id_client)
)";
if(mysqli_query($con,$sql))
{
echo "La table commande a été créée avec succès";
}
else{
echo "Erreur de création de la table";
}

//Création de la table ligne_commande
$sql = "CREATE TABLE ligne_commande (
id_lig_commande INT(6) AUTO_INCREMENT PRIMARY KEY,
id_produit INT(6),
id_cmd INT(6),
Foreign key (id_produit) references Patient(id_produit),
Foreign key (id_cmd) references commande(id_cmd)
)";
if(mysqli_query($con,$sql))
{
echo "La table ligne_commande a été créée avec succès";
}
else{
echo "Erreur de création de la table";
}

//Création de la table categorie
$sql = "CREATE TABLE categorie (
id_cat INT(6) AUTO_INCREMENT PRIMARY KEY,
nom_cat VARCHAR(30) NOT NULL
)";
if(mysqli_query($con,$sql))
{
echo "La table categorie a été créée avec succès";
}
else{
echo "Erreur de création de la table";
}

?>