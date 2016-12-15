{* Affichage de l'article*}
{foreach from=$tab_articles item=tabs} 

    <h2> {$tabs['titre']} </h2>

    <img src="img/{$tabs['id']}.jpg" alt="{$tabs['titre']}" width="160px" class="img-rounded"/>

    <h6><p style="text-align: justify;">{$tabs['texte']}</p></h6>
    <p><em><u> Publié le :{$tabs['date_fr']} </u></em></p>
            {/foreach}
         Commentaire(s) :  <span class="badge">  {$nbCom['NbComm']}</span>   

{* Script js verification pseudo, email, texte pas vide *}
<script language="javascript" type="text/javascript">
//Si un champ de formulaire est vide, cette fonction avertit à l'aide d'un message, 
//et renvoie false, pour empêcher la soumission du formulaire
    function validateForm() {
        var x = document.forms["formCom"]["pseudoCom"].value;
        if (x == "") {
            alert("Le pseudo est vide");
            return false;
        }
        var y = document.forms["formCom"]["emailCom"].value;
        if (y == "") {
            alert("L'email est vide");
            return false;
        }
        var z = document.forms["formCom"]["texteCom"].value;
        if (z == "") {
            alert("Le texte est vide");
            return false;
        }
    }
</script>
<h3> Votre Commentaire</h3>
{* Formulaire commentaire *}
{* La fonction js peut être appelée lorsque le formulaire est soumis grâce à onsubmit="return validateForm()" *}

<form  name="formCom" method="post" action="commentaires.php" onsubmit="return validateForm()"  >
    <div class="clearfix">
        <label for="pseudo">Pseudo</label>
        <input type="text" name="pseudoCom" id="pseudoCom"/></div>
    <br>
    <div class="email">
        <label for="email">Email</label>
        <input type="email" name="emailCom" id="emailCom" /></div>
    <br>
    <div class="form-group">
        <label for="texteCom">Texte </label>
        <div class="textarea">
            <textarea class="form-control" rows="3" name="texteCom" id="texteCom" value = "" ></textarea>
        </div>
    </div>  
    <br>
    <div class="form-actions">
        <input type="submit" name="inserer" value="insertion" class="btn btn-large btn-primary" />
    </div>  
    {*attribut caché articles_id*}
    <input type="hidden" name ="articles_id" value="{$id}"/>

</form>	
    {* Affichage des commentaires *}
    <h2> Les Commentaires</h2>

{foreach from=$tab_coms item=coms} 
    
    <h4><span class="glyphicon glyphicon-user"></span> {$coms['pseudoCom']} </h4> {* Avatar et pseudo  *}
    <h5><span class="glyphicon glyphicon-envelope"></span>  {$coms['emailCom']} </h5> {* icone mail et le mail *}
    <h4><pre>{$coms['texteCom']} </pre> </h4> {* 'pre' permet d'encadrer le texte  *}


{/foreach}
<br>

