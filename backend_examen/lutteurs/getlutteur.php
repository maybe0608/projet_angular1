<?php
header('Access-Control-Allow-Origin:http://localhost:4200');
header('Access-Control-Allow-Headers: *');
header('Access-Control-Allow-Credentials: true');
header('Access-Control-Allow-Methods: *');

@include '../config.php';

// Requête SQL pour récupérer tous les éléments de la table "lutteur"
$query = "SELECT * FROM lutteurs";
$result = $conn ->query($query);
//var_dump($result);
if ($result) {
    $lutteurs = array();

    while ($row = mysqli_fetch_assoc($result)) {
        // Ajoutez chaque ligne de résultat à un tableau
      $lutteurs[] = $row;
    }
    //print_r($lutteurs);
    // Retourne le tableau encodé en JSON
     echo json_encode(['success' => true, 'lutteurs' => $lutteurs]);
} else {
    // En cas d'erreur lors de l'exécution de la requête
    echo json_encode(['success' => false, 'error' => 'Erreur lors de la récupération des lutteurs.']);
}
?>
