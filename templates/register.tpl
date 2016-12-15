{* Formulaire Inscription *}
<div class="span8">
<h2> Inscription</h2>
<h4> Vos coordonnées : </h4>     
<div>
    <form action="register.php" method="post" enctype="multipart/form-data" id="form_inscription" name="form_inscription">
        <div class="clearfix">
            <label for="nom">Nom : </label>
            <div class="input">
                <input type="text" name="nom" id="nom" value=""/>
            </div>
            <div class="clearfix">
                <label for="prenom">Prénom : </label>
                <div class="input">
                    <input type="text" name="prenom" id="prenom" value=""/>
                </div>
            </div> 
            <div class="clearfix">
                <label for="email">Email : </label>
                <div class="input">
                    <input type="email" name="email" id="email" value="" required="required"/>
                </div>
            </div>    
            <div class="clearfix">
                <label for="passe">Mot de passe : </label>
                <div class="input">
                    <input type="password" name="mdp" id="mdp" value="" required="required"/>
                </div>
            </div>   
            

            <div class="form-actions">
                <input type="submit" name="register" value="S'inscrire" class="btn btn-large btn-primary" />
            </div>   
            </div>

    </form>
</div>
        </div>

