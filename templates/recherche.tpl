{* Affichage de l'article lors de la recherche  *}
{foreach from=$tab_recherche item=tableau} 
    {*from: tableau original  item: objet tableau smarty*}
    <h2> {$tableau['titre']} </h2>
    <img src="img/{$tableau['id']}.jpg" alt="{$tableau['titre']}" width="160px" class="img-rounded"/>

    <h6><p style="text-align: justify;">{$tableau['texte']}</p></h6>
    <p><em><u> Publié le :{$tableau['date_fr']} </u></em></p>

{/foreach}