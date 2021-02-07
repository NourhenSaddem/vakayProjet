<?php 
require 'db.class.php';
require 'panier.class.php';
$DB = new DB();
$panier = new panier();
if(isset($_GET['id'])){
  $prod = $DB->query('SELECT id FROM produit WHERE id=:id' , array('id' => $_GET['id']));
  if(empty($prod)){
    die("This product doesn't exist");
  }

$panier->add($prod[0]->id);
die ('Product added to cart successfully <a href="javascript:history.back()">Return</a>');
}
else{
    die("Your cart is empty");
}
?>
