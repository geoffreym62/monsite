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

//Si motcle existe on affiche l'article

if (ISSET($_POST['motcle'])) {

    // Déclaration variable

    $motcle = ($_POST['motcle']);

    // Preparation de requête de selection du titre, date, texte

    $select_recherche = $bdd->prepare("SELECT id,titre,texte,DATE_FORMAT(date,'%d/%m/%Y')AS date_fr FROM articles WHERE titre LIKE '%$motcle%'
	ORDER BY id DESC");
    $select_recherche->bindValue(':id', 1, PDO::PARAM_INT);

    // Execution de la requete

    $select_recherche->execute();

    // stock le résultat sous forme d'un tableau

    $tab_recherche = $select_recherche->fetchAll(PDO::FETCH_ASSOC);
}

// Variable d asignation pour smarty

$smarty->assign('tab_recherche', $tab_recherche);

// lien vers fenetre debogage et template smarty

$smarty->debugging = false; //alerte smarty, désactivée
$smarty->display('recherche.tpl');

// pied de page

include_once 'includes/footer.inc.php';
?>