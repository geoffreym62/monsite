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
include_once 'settings/connexion.inc.php';


// Nombre d'article par page

$nbArticlesParPage = 2;

// Déclaration de la page courante

$pageCourante = isset($_GET['p']) ? $_GET['p'] : 1;

// Calcule l'index de depart de la requete

$debut = ($pageCourante - 1) * $nbArticlesParPage;

// Calcule le nombre message 'publie' dans la table et securisation avec bindvalue
$sql = $bdd->prepare("SELECT COUNT(*) as nbArticles FROM articles WHERE publie = :publie");
$sql->bindValue(':publie', 1, PDO::PARAM_INT);

// Execution de la requete

$sql->execute();

// stock le résultat sous forme d'un tableau
$tabResult = $sql->fetchAll(PDO::FETCH_ASSOC);

//Création variable nbarticles
$nbArticles = $tabResult[0]['nbArticles'];

// calcule de l'index

$nbPages = ceil($nbArticles / $nbArticlesParPage);

// 1) variable qui va contenir la requete sql, qui va etre dans prepare, préparation de la requete
// 2) modification de la requete pour avoir une date au format francais

$sth = $bdd->prepare("SELECT id, titre, texte, DATE_FORMAT(date,'%d/%m/%Y')as date_fr FROM articles WHERE publie = :publie LIMIT $debut, $nbArticlesParPage");

// 1) associez une valeur à :publie
// 2) bindvalue sécurisation des donnnées (requiert 3 parametre)
// 3) la relation :publie,la valeur qui va servir à remplacer ce pointeur,
// 4) pdo::PARAM sécurisation de type numérique ou caractere, dans le cas présent numérique

$sth->bindValue(':publie', 1, PDO::PARAM_INT);

// exécution de la requete pour envoyer la requete SQL

$sth->execute();

// Utilisation fetchall pour retourner tout la ligne d'une case, retourne un tableau avec assoc

$tab_articles = $sth->fetchAll(PDO::FETCH_ASSOC);
?>
<div class="span8">

<?php
//variable pour faciliter la partie smarty
// Si pas connecté on n'affiche pas les boutons (modifier et supprimer)
// la variable $sid teste la présence du cookie de connexion 
$sid = "";

if (ISSET($_COOKIE['sid'])) {
    $sid = $_COOKIE['sid'];
}

// Si connexion est ok, alert reussite grâce à sid

if (isset($_COOKIE['sid'])) {
    ?>
        <div class = "alert alert-success text-center" role = "alert">  
            <strong>Félicitations</strong> Vous êtes connecté!!
        </div>
    <?php
}
?>
    <br />

<?php
//variables smarty

$smarty->assign('sid', $sid);
$smarty->assign('tab_articles', $tab_articles);


// variables boucle de pagination pour smarty

$smarty->assign('nbPages', $nbPages);
$smarty->assign('pageCourante', $pageCourante);

// lien vers fenetre debogage et template smarty

$smarty->debugging = false; //alerte smarty, désactivée
$smarty->display('index.tpl');
?>

</div>  

<?php
//Inclusion pied de page
include_once 'includes/footer.inc.php';
?>
