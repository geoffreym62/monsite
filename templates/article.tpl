
<script language="javascript" type="text/javascript">
//Si un champ de formulaire est vide, cette fonction avertit à l'aide d'un message, 
//et renvoie false, pour empêcher la soumission du formulaire
    function validateForm() {
        var x = document.forms["form_article"]["titre"].value;
        if (x == "") {
            alert("Le titre est vide");
            return false;
        }
        var y = document.forms["form_article"]["texte"].value;
        if (y == "") {
            alert("L'email est vide");
            return false;
        }
        
    }
</script>


{* Formulaire création d'un article *}
<form action="article.php" method="post" enctype="multipart/form-data" id="form_article" name="form_article" onsubmit="return validateForm()">
    <div class="clearfix">
        <label for="titre">Titre</label>
        <div class="input">
            <input type="text" name="titre" id="titre" value=""/>
        </div>
    </div>    
    <div class="clearfix">
        <label for="texte">Texte</label>
        <div class="textarea">
            <textarea name="texte" id="texte"> </textarea>
        </div>
    </div>  
    <div class="clearfix">
        <label for="image">Image</label>
        <div class="input">
            <input type="file" name="image" id="image"/>
        </div>
    </div>  
    <div class="clearfix">
        <label for="publie">Publier</label>
        <div class="input">
            <input type="checkbox" name="publie" id="publie" value="1"/>
        </div>
    </div> 
    <div class="form-actions">
        <input type="submit" name="envoyer" value="envoyer" class="btn btn-large btn-primary" />
    </div>   
</form>
