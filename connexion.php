<?php
session_start(); //on ouvre une session pour garder des variables de page en page
// Permet la connexion à la bdd
require_once 'settings/bdd.inc.php';
// permet l'affichage des erreurs
require_once 'settings/init.inc.php';
include_once 'settings/connexion.inc.php';
// Appel Smarty, présent dans chaque fichier d'affichage
require_once ('libs/Smarty.class.php');
$smarty = new Smarty(); // création de l'objet Smarty
$smarty->setTemplateDir('templates/'); // répertoire des Templates
// Insertion header et menu
include_once 'includes/header.inc.php';
include_once 'includes/menu.inc.php';

if (isset($_POST['envoyer'])) {

    // prépare la requete de comparaison dans la base

    $conex = $bdd->prepare("SELECT * FROM utilisateurs WHERE email = :email AND mdp = :mdp");

    // Sécurisation email et mdp

    $conex->bindValue(':mdp', $_POST['mdp'], PDO::PARAM_STR);
    $conex->bindValue(':email', $_POST['email'], PDO::PARAM_STR);

    // Execution de  la requete

    $conex->execute();

    // Compte le résultat d'une correspondance dans la base

    $count = $conex->rowCount();

    // // stock le résultat sous forme d'un tableau

    $tab_conex = $conex->fetchAll(PDO::FETCH_ASSOC);

    // Si connexion réussi, alert reussite grâce à sid

    if (isset($_COOKIE['sid'])) {
        ?>
        <div class = "alert alert-success text-center" role = "alert">  
            <strong>Félicitations</strong> Vous êtes connecté!!!
        </div>
        <?php
    }

    // Verification mail et mdp dans la bdd

    if ($_POST['email'] == $tab_conex[0]['email'] && $_POST['mdp'] == $tab_conex[0]['mdp']) {

        // Création de la variable

        $email = $tab_conex[0]['email'];

        // Création variable sid unique à partir du mail et du temps par la fonction php md5

        $sid = md5(time() . $email);
        $id = $tab_conex[0]['id'];

        // Préparation d'une requete de mise à jour de la base

        $conex = $bdd->prepare("UPDATE utilisateurs SET sid='$sid' WHERE id='$id'");

        // Execution de la requete

        $conex->execute();

        // Création d'un cookie 'sid'

        setcookie('sid', $sid, time() + 30 * 3600);

        // Redirection sur l'index

        header('Location: index.php');
        $_SESSION['connexion'] = TRUE;
    } else {
        ?>

        <div class="alert alert-danger" role="alert">
            <strong> Erreur </strong>Mauvais Identifiants!
        </div>
        <?php
        // Redirection sur la page connexion
    }
}

// lien vers fenetre debogage et template smarty

$smarty->debugging = false; //pop up smarty alerte, désactivée
$smarty->display('connexion.tpl');

// pied de page

include_once 'includes/footer.inc.php';
?>