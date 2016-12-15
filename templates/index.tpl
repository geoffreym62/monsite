{* Affichage de l'article sur l'index *}

{*depuis: tableau original  vers: objet tableau smarty*}
{foreach from=$tab_articles item=tabs} 
      
    <h2> {$tabs['titre']} </h2>
   
    <img src="img/{$tabs['id']}.jpg" alt="{$tabs['titre']}" width="160px" class="img-rounded"/>
     
    <h6><p style="text-align: justify;">{$tabs['texte']}</p></h6>
    <p><em><u> Publié le :{$tabs['date_fr']} </u></em></p>
    
    {* Bouton commentaires *}
    <a href='commentaires.php?id={$tabs['id']}'><input type="submit"name ="voir" value="Commentaires" class="btn btn-primary active"></a>
        {* affichage des liens de modification et suppresion si connexion *}  
    <div style="{if $sid == ""}display:none;{/if} ">
        <br>
        {*on ajoute des liens qui ne qui sont visibles qu'après connexion pour modifier, supprimer *}
    <a href='modifier.php?id={$tabs['id']}'><input type="submit"name ="modifier" value="Modifier" class="btn btn-sm btn-success"></a>
    <a href='article.php?supprime={$tabs['id']}'><input type="submit"name ="supprime" value="Supprimer" class="btn btn-sm btn-danger"></a>
 </div> 
    
        {/foreach}


<br>

{*Pagination *}
        <div class="pagination">
            <ul>
                {* //commence à 1  *}
                {for $i=1 to $nbPages}
                    {* //class active pour couleur sur la page courante  *}
                    <li {if $i == $pageCourante} class="active" {/if}><a href="index.php?p={$i}">{$i}</a></li>
                    {/for}
            </ul>
        </div>

    
