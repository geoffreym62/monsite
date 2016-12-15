<?php

session_start(); //on ouvre une session pour garder des variables de page en page
// Permet la connexion à la bdd
require_once 'settings/bdd.inc.php';
// permet l'affichage des erreurs
require_once 'settings/init.inc.php';
require_once 'settings/connexion.inc.php';
// Appel Smarty, présent dans chaque fichier d'affichage
require_once ('libs/Smarty.class.php');
$smarty = new Smarty(); // création de l'objet Smarty
$smarty->setTemplateDir('templates/'); // répertoire des Templates
// Insertion header et menu
include_once 'includes/header.inc.php';
include_once 'includes/menu.inc.php';
// Si l'utilisateur n'est pas connecté, redirection vers la page de connexion

if (!isset($_COOKIE['sid'])) {
    header("location:connexion.php");
}
// si le formulaire a été modifié et renvoyé, il faut faire les Updates (titre, texte, publie), puis renvoyer sur l'accueil  

if (isset($_POST['modifier'])) {
    //Déclaration des variables
    $id_encours = $_POST['id_encours'];
    $upTitre = ($_POST['titre']);
    $upTexte = ($_POST['texte']);

    // Condition ternaire

    $upPublie = (!empty($_POST['publie']) ? $_POST['publie'] : 0);

    // on ne modifie que le titre, le texte ou la publication avec cette requete

    $update = $bdd->prepare("UPDATE articles SET date = NOW(), titre = '$upTitre', texte ='$upTexte',publie ='$upPublie'WHERE id = '$id_encours'");

    // Execution de la requete

    $update->execute();

    // Création d'une variable de session article inséré

    $_SESSION['ok_article'] = "article inséré...";

    // redirection vers l'accueil

    header("location:index.php");
}
//on teste si le bouton modifier a été cliqué
if (isset($_GET['id'])) {
    //Variable id
    $id = ($_GET['id']);

    // Requête vers l'article sélectionné pour l'afficher dans les champs

    $select_article = "SELECT id,titre,texte,publie,DATE_FORMAT(date,'%d/%m/%Y')AS date_fr FROM articles WHERE id=$id";
    //Execution de la requete

    $reponse = $bdd->query($select_article)->fetch();

    //Variable titre,texte et publie
    $upTitre = $reponse['titre'];
    $upTexte = $reponse['texte'];
    $upPublie = $reponse['publie'];
}
//smarty variable
$smarty->assign('upPublie', $upPublie);
$smarty->assign('upTexte', $upTexte);
$smarty->assign('upTitre', $upTitre);
$smarty->assign('id', $id);
// lien vers fenetre debogage et template smarty

$smarty->debugging = false; //alerte smarty, désactivée
$smarty->display('modifier.tpl');

//Pied de page 
include_once 'includes/footer.inc.php';
?>