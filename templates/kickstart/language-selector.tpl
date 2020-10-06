{if $core.config.language_switch && count($core.languages) > 1}
 <ul class=" lang_selector">
                {foreach $core.languages as $code => $language}
                    <li {if $smarty.const.IA_LANGUAGE == $code} class="active"{/if}><a href="{ia_page_url code=$code}" title="{$language.title}">{$language.title|replace:'English':'En'|replace:"Italian":'It'}</a></li>
                {/foreach}
            </ul>
{/if}
