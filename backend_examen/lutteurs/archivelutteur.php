<?php
header('Access-Control-Allow-Origin: http://localhost:4200');
header('Access-Control-Allow-Headers: *');
header('Access-Control-Allow-Credentials: true');
header('Access-Control-Allow-Methods: *');

$db = new PDO('mysql:host=localhost;dbname=votre_base_de_donnees;charset=utf8', 'votre_utilisateur', 'votre_mot_de_passe');

// Récupération de l'ID depuis la requête HTTP POST
$id = $_POST['id'];

// Récupération des informations du lutteur à archiver
$querySelect = "SELECT * FROM lutteur WHERE id=$id";
$resultSelect = $db->query($querySelect);
$lutteur = $resultSelect->fetch(PDO::FETCH_ASSOC);

// Requête SQL pour archiver un lutteur
$queryArchive = "INSERT INTO lutteur_archive (id, nomjoueur, photo, equipe, typeLutteur) VALUES (:id, :nomjoueur, :photo, :equipe, :typeLutteur)";
$stmtArchive = $d
?>