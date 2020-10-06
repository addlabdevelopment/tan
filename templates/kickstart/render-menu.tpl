{if in_array($position, array('mainmenu','rightmenu'))}
<div class="col-md-5 col-sm-5">
  <ul class="nav navbar-nav navbar-right nav-main {$menu.classname}{if $pid} menu_{$pid}{/if}">
    {ia_menu menus=$menu.contents}
  </ul>
  </div>
{elseif in_array($position, array('leftmenu'))}
<div class="col-md-5 col-sm-5">
  <ul class="nav navbar-nav navbar-left nav-main {$menu.classname}{if $pid} menu_{$pid}{/if}">
    {ia_menu menus=$menu.contents}
  </ul>
  </div>
{elseif 'copyright' == $position}
<ul class="nav-footer {$menu.classname}{if $pid} menu_{$pid}{/if}">
    {ia_menu menus=$menu.contents}
        </ul>
{else}
    <!--__ms_{$menu.id}-->
    {if $menu.header || isset($manageMode)}
        <div class="nav-menu-header {$menu.classname}">{$menu.title|escape}</div>
    {else}
        <div class="menu {$menu.classname}">
    {/if}

    <!--__ms_c_{$menu.id}-->
    {ia_menu menus=$menu.contents class='nav-menu'}
    <!--__me_c_{$menu.id}-->

    {if $menu.header || isset($manageMode)}
    {else}
        </div>
    {/if}
    <!--__me_{$menu.id}-->
{/if}
          

