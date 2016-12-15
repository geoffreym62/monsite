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

// Si l'utilisateur n'est pas connecté, redirection vers la page de connexion

if (!isset($_COOKIE['sid'])) {
    header("location:connexion.php");
}

if (isset($_POST['envoyer'])) {

    // Afficher la date

    $_POST['date'] = date("Y-m-d");

    // Préparation de la requete d'insertion

    $sth = $bdd->prepare("INSERT INTO articles (titre, texte, publie, date)VALUES (:titre, :texte, :publie, :date)");

    // Sécurisation des valeurs

    $sth->bindValue(':titre', $_POST['titre'], PDO::PARAM_STR);
    $sth->bindValue(':texte', $_POST['texte'], PDO::PARAM_STR);
    $sth->bindValue(':publie', $_POST['publie'], PDO::PARAM_INT);
    $sth->bindValue(':date', $_POST['date'], PDO::PARAM_STR);

    // Execute la requete

    $sth->execute();

    // Affectation de l'id de l'article en cours comme nom d'image

    $dernier_id = $bdd->lastInsertId();

    // ternaire

    $publie = (!empty($_POST['publie']) ? $_POST['publie'] : 0);

    // Erreur sur le fichier image se traduit par un champ erreur différent de 0

    $erreur_image = $_FILES['image']['error'];

    // Si different de 0 = erreur on affiche une alerte

    if ($erreur_image != 0) {

        // Création d'une variable de session message d'erreur

        $_SESSION['message_erreur'] = "Erreur de chargement de votre image";
    } else {

        // Déplacement dans le dossier img et renommage de l'image en fonction de l'id

        move_uploaded_file($_FILES['image']['tmp_name'], dirname(__FILE__) . "/img/$dernier_id.jpg");

        // Message pour avertir l'utilisateur que le fichier à bien etait envoyé

        $_SESSION['ok_article'] = "article inséré...";

        // Redirection vers l'accueil

        header("location:index.php");
    }

    
} else {

    // Creation d'une variable de session message d'erreur

    if (isset($_SESSION['message_erreur'])) {
        ?><div class="alert alert-error" id="notif">
            <?php echo $_SESSION['message_erreur']; ?></div>
        <?php
        unset($_SESSION['message_erreur']);
    }

    // Supprimer
    // on test si le bouton supprime a été cliqué

    if (isset($_GET['supprime'])) {
        $supprime = ($_GET['supprime']);

        // requêtes suppression

        $supprime_article = $bdd->prepare("DELETE FROM articles WHERE id = $supprime");

        // Sécurisation de la valeur

        $supprime_article->bindValue(':id', 1, PDO::PARAM_INT);

        // Execution de la requete

        $supprime_article->execute();
        //Suppresion article
        $supprime_commentaire = "DELETE FROM commentaires WHERE idCom = $supprime";
        $supprime_commentaire->execute();
        // Redirection de la page

        header("location:index.php");
    }
}
// lien vers fenetre debogage et template smarty

$smarty->debugging = false; //pop up smarty alerte, désactivée
$smarty->display('article.tpl');

// Menu et pied de page

include_once 'includes/footer.inc.php';
?>
