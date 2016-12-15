<?php
require_once 'settings/bdd.inc.php';        //permet la connection à la base de données
require_once 'settings/init.inc.php';  
require_once 'settings/connexion.inc.php';
include_once 'includes/header.inc.php';

 
//Deconnexion en supprimant le cookie,on lui attribue un temps négatif
    setcookie("sid", "", -1);
    echo "Deconnexion en cours...";
//Redirection index
    header('location:index.php');
    include_once 'includes/menu.inc.php';
    include_once 'includes/footer.inc.php';
    ?>

