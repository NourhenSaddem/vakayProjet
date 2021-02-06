<?php 
require 'db.class.php';
require 'panier.class.php';
$db = new DB();
$panier = new panier();
if(isset($_Grt['id'])){
  $prod = $db->query('SELECT id FROM produit WHERE id=:id' , array('id' => $_GET['id']));
  var_dump($prod);
}
else{
    die("Your cart is empty");
}
?>

