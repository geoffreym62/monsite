   <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="index.php">LPASR</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="index.php">Accueil</a></li>
       <li><a href="register.php"><span class="glyphicon glyphicon-user"></span> Inscription</a></li>
      <li><a href="connexion.php"><span class="glyphicon glyphicon-log-in"></span> Connexion</a></li>
      <li><a href="article.php"><span class="glyphicon glyphicon-pencil"></span> Écrire</a></li>
      <li><a href="deconnexion.php"><span class="glyphicon glyphicon-log-out"></span> Déconnexion</a></li>

    </ul>
    <form class="navbar-form navbar-left"action="recherche.php" enctype="multipart/form-data"  id="form_recherche" name="form_recherche" method="post">
      <div class="form-group">
        <input type="text" class="form-control" name="motcle" placeholder="Recherche">
      </div>
     
        <input type="submit" name="Rechercher" value="Rechercher" class="btn btn-small btn-primary"  />
    </form>
  </div>
</nav>








