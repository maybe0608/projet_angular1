<?php
header('Access-Control-Allow-Origin: http://localhost:4200');
header('Access-Control-Allow-Headers: *');
header('Access-Control-Allow-Credentials: true');
header('Access-Control-Allow-Methods: *');

$db = new PDO('mysql:host=localhost;dbname=votre_base_de_donnees;charset=utf8', 'votre_utilisateur', 'votre_mot_de_passe');

// Récupération des données depuis la requête HTTP POST
$id = $_POST['id'];
$nomjoueur = $_POST['nomjoueur'];
$photo = $_POST['photo'];
$equipe = $_POST['equipe'];
$typeLutteur = $_POST['typeLutteur'];

// Requête SQL pour mettre à jour un lutteur
$query = "UPDATE lutteur SET nomjoueur='$nomjoueur', photo='$photo', equipe='$equipe', typeLutteur='$typeLutteur' WHERE id=$id";
$result = $db->exec($query);

// Réponse JSON
echo json_encode(['success' => $result > 0]);
?>
