<?php
header('Access-Control-Allow-Origin: http://localhost:4200');
header('Access-Control-Allow-Headers: *');
header('Access-Control-Allow-Credentials: true');
header('Access-Control-Allow-Methods: *');

@include '../config.php';

// Récupération des données depuis la requête HTTP POST
$id_equipe = $_POST['id_equipe'] ?? '';
$pseudo = $_POST['pseudo'] ?? '';
$nomlutteur = $_POST['nomlutteur'] ?? '';
$taille = $_POST['taille'] ?? '';
$poids = $_POST['poids'] ?? '';
$nombrecombat = $_POST['nombrecombat'] ?? '';
$nombrevictoire = $_POST['nombrevictoire'] ?? '';
$nombredefaite = $_POST['nombredefaite'] ?? '';

// Gestion du fichier photo
$photo = '';
if (isset($_FILES['photo'])) {
    $uploadDir = './imgexam';  // Remplacez par le chemin réel
    $uploadFile = $uploadDir . basename($_FILES['photo']['name']);

    if (move_uploaded_file($_FILES['photo']['tmp_name'], $uploadFile)) {
        $photo = $uploadFile;
    } else {
        echo json_encode(['success' => false, 'error' => 'Erreur lors du téléchargement du fichier.']);
        exit();
    }
}

// Requête SQL pour insérer un lutteur
$query = "INSERT INTO lutteurs (id_equipe, pseudo, nomlutteur, taille, poids, nombrecombat, nombrevictoire, nombredefaite, photo) 
          VALUES ('$id_equipe', '$pseudo', '$nomlutteur', '$taille', '$poids', '$nombrecombat', '$nombrevictoire', '$nombredefaite', '$photo')";

$result = $conn ->query($query);

if ($result) {
    echo json_encode(['success' => true]);
} else {
    echo json_encode(['success' => false, 'error' => 'Erreur lors de l\'ajout du lutteur.']);
}
?>
