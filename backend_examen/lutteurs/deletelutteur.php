<?php
header('Access-Control-Allow-Origin: http://localhost:4200');
header('Access-Control-Allow-Headers: *');
header('Access-Control-Allow-Credentials: true');
header('Access-Control-Allow-Methods: *');

$db = new PDO('mysql:host=localhost;dbname=votre_base_de_donnees;charset=utf8', 'votre_utilisateur', 'votre_mot_de_passe');

// Récupération de l'ID depuis la requête HTTP POST
$id = $_POST['id'];

// Requête SQL pour supprimer un lutteur
$query = "DELETE FROM lutteur WHERE id=$id";
$result = $db->exec($query);

// Réponse JSON
echo json_encode(['success' => $result > 0]);
?>
