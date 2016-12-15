<?php
session_start(); //on ouvre une session pour garder des variables de page en page
// Permet la connexion à la bdd
require_once 'settings/bdd.inc.php';
// permet l'affichage des erreurs
require_once 'settings/init.inc.php';
// Appel Smarty, présent dans chaque fichier d'affichage
require_once ('libs/Smarty.class.php');
$smarty = new Smarty(); // création de l'objet Smarty
$smarty->setTemplateDir('templates/'); // répertoire des Templates
// Insertion header et menu
include_once 'includes/header.inc.php';
include_once 'includes/menu.inc.php';
?>  
<div class="span8"> 
    <?php
//Si un commentaire a été envoyé, il faut l'enregistrer
    if (isset($_POST['inserer'])) {
        print_r($_POST);

        // Requete d'insertion des commentaires

        $req_insertCom = $bdd->prepare("insert into commentaires(texteCom,pseudoCom,emailCom,articles_id)VALUES (:texteCom, :pseudoCom, :emailCom, :articles_id)");

        // Sécurisation des valeurs

        $req_insertCom->bindValue(':texteCom', $_POST['texteCom'], PDO::PARAM_STR);
        $req_insertCom->bindValue(':pseudoCom', $_POST['pseudoCom'], PDO::PARAM_STR);
        $req_insertCom->bindValue(':emailCom', $_POST['emailCom'], PDO::PARAM_STR);
        $req_insertCom->bindValue(':articles_id', $_POST['articles_id'], PDO::PARAM_STR);

        // Execution de la requête

        $req_insertCom->execute();

        // on créée une variable de session pour un message ok

        $_SESSION['ok_commentaire'] = "commentaire inséré...";

        // redirection vers l'accueil

        header("location:index.php");
    }

// -- Affichage de l'article --
// Création variable id

    $id = $_GET['id'];

// Preparation de la requete pour la récupération de l'ID

    $voir = $bdd->prepare("SELECT id, titre, texte, DATE_FORMAT(date,'%d/%m/%Y')as date_fr FROM articles WHERE id=$id");

// Sécurisation de l'id

    $voir->bindValue(':id', 1, PDO::PARAM_INT);

// execution de la requete

    $voir->execute();

// stock le résultat sous forme d'un tableau

    $tab_articles = $voir->fetchAll(PDO::FETCH_ASSOC);

//Requete compter le nombre de commentaire

    $countArt = $bdd->query("SELECT COUNT(*) as NbComm FROM commentaires WHERE articles_id = $id");
    $nbCom = $countArt->fetch();



// -- Affichage du commentaire avec la requete select --

    $comvoir = $bdd->prepare("SELECT pseudoCom, emailCom, texteCom FROM commentaires WHERE articles_id=$id");

// Securisation de l'id articles

    $comvoir->bindValue(':articles_id', 1, PDO::PARAM_INT);

// Execution de la requete

    $comvoir->execute();

// stock le résultat sous forme d'un tableau

    $tab_coms = $comvoir->fetchAll(PDO::FETCH_ASSOC);


// variable pour smarty

    $smarty->assign('tab_articles', $tab_articles);
    $smarty->assign('tab_coms', $tab_coms);
    $smarty->assign('id', $id);
    $smarty->assign('nbCom', $nbCom);
// lien vers fenetre debogage et template smarty

    $smarty->debugging = false; //alerte smarty, désactivée
    $smarty->display('commentaires.tpl');
    ?>
