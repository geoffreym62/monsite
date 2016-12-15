{* Formulaire modification et variable pour recuperer le titre et texte *}

<form action="modifier.php" method="post" enctype="multipart/form-data" id="form_modif" name="form_modif">
        <input type="hidden" name="id_encours" value="{$id}">
        <div class="clearfix">
            <label for="titre">Titre : </label>
            <div class="input">
                <input type="text" name="titre" id="titre" value="{$upTitre}"/>
            </div>
        </div>    
        <div class="clearfix">
            <label for="texte">Texte : </label>
            <div class="textarea">
                <textarea name="texte" id="texte" value = "">{$upTexte}</textarea>
            </div>
        </div>  
        <div class="clearfix">
            <label for="publie">Publié : </label>
            <div class="input">
                <input type="checkbox" name="publie" id="publie" value="{$upPublie}" checked  />
            </div>
        </div> 
        <div class="form-actions">
            <input type="submit" name="modifier" id="modifier" value="modifier" class="btn btn-large btn-primary" />
        </div>   
    </form>