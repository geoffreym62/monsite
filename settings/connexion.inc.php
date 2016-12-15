<?php
//creer une variable bool de connexion, initialisée à FALSE;
$_SESSION['logg'] = 'FALSE';
if (isset($_COOKIE['sid'])) {//on teste la présence de $_COOKIE
    $ids = $_COOKIE['sid']; //attribution de la valeur de sid à une variable
    //echo $ids;
    //vérification en bdd de la présence de la valeur (requete pour sid= valeur)
    $select_verif = 'SELECT * FROM utilisateurs WHERE sid="' . $ids . '"';
    $reponse = $bdd->query($select_verif)->fetch();
    //si on a un résultat, on modifie la valeur de la variable de connexion en TRUE
    if ($reponse) {
        $_SESSION['logg'] = 'TRUE';
    }
}
?>
