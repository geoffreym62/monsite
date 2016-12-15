<?php
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

//Si  = 0 on 'enregistre' l'utilisateur si non 'session erreur'
if (isset($_POST['register'])) {
    //Declaration variable
    $nom = ($_POST['nom']);
    $email = ($_POST['email']);

    // verification de l'existant par nom et email dans la table utilisateurs,

    $select_util = "SELECT * FROM utilisateurs WHERE nom= '$nom' AND email= '$email'";
    $reponse = $bdd->query($select_util)->fetch();
    $erreur = 0;
    if ($reponse) {
        $erreur = 1;
        $_SESSION['existant'] = "Déjà utilisé, choisissez un autre profil";
    }

    // après vérifications, insertion du nouvel utilisateur

    if ($erreur == 0) {
        $insert_util = $bdd->prepare("INSERT INTO utilisateurs(nom,prenom,email,mdp) VALUES (:nom, :prenom, :email, :mdp)");

        // Sécurisation des valeurs

        $insert_util->bindValue(':nom', $_POST['nom'], PDO::PARAM_STR);
        $insert_util->bindValue(':prenom', $_POST['prenom'], PDO::PARAM_STR);
        $insert_util->bindValue(':email', $_POST['email'], PDO::PARAM_STR);
        $insert_util->bindValue(':mdp', $_POST['mdp'], PDO::PARAM_STR);

        // Execution de la requete

        $insert_util->execute();
        header("location:connexion.php"); // puis direction vers connexion.php */
    } else {
        header("location:register.php"); //sinon redirection vers le formulaire d'inscription
    }
}

if (isset($_SESSION['message_erreur'])) {
    ?><div class="alert alert-error" id="notif">
        <?php echo $_SESSION['existant']; ?></div>
    <?php
    unset($_SESSION['existant']);
}

// lien vers fenetre debogage et template smarty

$smarty->debugging = false; //pop up smarty alerte, désactivée
$smarty->display('register.tpl');

// Menu et pied de page

include_once 'includes/footer.inc.php';
?>
