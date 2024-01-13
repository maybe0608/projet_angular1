<?php
header('Access-Control-Allow-Origin: http://localhost:4200');
header('Access-Control-Allow-Headers: *');
header('Access-Control-Allow-Credentials: true');
header('Access-Control-Allow-Methods: *');

$db = new PDO('mysql:host=localhost;dbname=votre_base_de_donnees;charset=utf8', 'votre_utilisateur', 'votre_mot_de_passe');

// Récupération des données depuis la requête HTTP GET
$nomCombat = $_GET['nomCombat'];
// Ajoutez d'autres champs nécessaires pour le combat

// Requête SQL pour insérer un combat
$query = "INSERT INTO combat (nomCombat) VALUES ('$nomCombat')";
$result = $db->exec($query);

// Réponse JSON
echo json_encode(['success' => $result > 0]);
?>
