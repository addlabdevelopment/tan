<!DOCTYPE html>
<html lang="{$core.language.iso}" dir="{$core.language.direction}">
    <head>
        {ia_hooker name='smartyFrontBeforeHeadSection'}

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=Edge">
        <title>{ia_print_title}</title>
        <meta name="description" content="{$core.page['meta-description']}">
        <meta name="keywords" content="{$core.page['meta-keywords']}">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="generator" content="Subrion CMS - Open Source Content Management System">
        <meta name="robots" content="index">
        <meta name="robots" content="follow">
        <meta name="revisit-after" content="1 day">
        <base href="{$smarty.const.IA_URL}">

        <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
            <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->

        <link rel="shortcut icon" href="{if !empty($core.config.site_favicon)}{$core.page.nonProtocolUrl}uploads/{$core.config.site_favicon}{else}{$core.page.nonProtocolUrl}favicon.ico{/if}">

        {ia_add_media files='jquery, subrion, bootstrap' order=0}
        {ia_add_media files='tanholding' order=1000}

        {ia_print_js files='_IA_TPL_app' order=999}

        {ia_hooker name='smartyFrontAfterHeadSection'}

        {ia_print_css display='on'}

        {ia_add_js}
            intelli.pageName = '{$core.page.name}';
            intelli.securityToken = '{$securityToken}';
            intelli.config.url = '{$smarty.const.IA_URL}';
            {foreach $core.customConfig as $key => $value}
                intelli.config.{$key} = '{$value}';
            {/foreach}
        {/ia_add_js}
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.1/css/all.css" integrity="sha384-gfdkjb5BdAXd+lj+gudLWI+BXq4IuLW5IT+brZEZsLFm++aCMlF1V92rMkPaX4PP" crossorigin="anonymous">


        {if $core.config.custom_colors}
            <style type="text/css">
                body { background-color: {$core.config.custom_color_body_bg}; color: {$core.config.custom_color_text}; }
                h1, h2, h3, h4, h5, h6,
                .box__caption { color: {$core.config.custom_color_headings}; }
                a,
                a:focus { color: {$core.config.custom_color_link}; }
                a:hover { color: {$core.config.custom_color_link_hover}; }

                .inventory { background-color: {$core.config.custom_color_inventory_bg}; }
                .nav-inventory > li > a,
                .nav-inventory > li > a:focus { color: {$core.config.custom_color_inventory_link}; }
                .nav-inventory > li > a:hover { color: {$core.config.custom_color_inventory_link_hover}; }
                .nav-inventory > li.active > a,
                .nav-inventory > li.active > a:focus,
                .nav-inventory > li.active > a:hover { color: {$core.config.custom_color_inventory_link_active}; }

                .navbar-default { background-color: {$core.config.custom_color_navbar_bg}; }
                .navbar-default .navbar-nav > li > a,
                .navbar-default .navbar-nav > li > a:focus { color: {$core.config.custom_color_navbar_link}; }
                .navbar-default .navbar-nav > li > a:hover { color: {$core.config.custom_color_navbar_link_hover}; }
                .navbar-default .navbar-nav > li.active > a,
                .navbar-default .navbar-nav > li.active > a:focus,
                .navbar-default .navbar-nav > li.active > a:hover { color: {$core.config.custom_color_navbar_link_active}; }

                .header {
                    {if $core.config.bg_header_use_color}
                        background: {$core.config.bg_header_color};
                    {elseif $core.config.bg_header}
                        background-image: url('{$core.page.nonProtocolUrl}uploads/{$core.config.bg_header}');
                    {/if}
                }

                .section-features {
                    {if $core.config.bg_features_use_color}
                        background: {$core.config.bg_features_color};
                    {elseif $core.config.bg_features}
                        background-image: url('{$core.page.nonProtocolUrl}uploads/{$core.config.bg_features}');
                    {/if}
                }

                .footer-blocks { background: {$core.config.footer_blocks_bg}; }
                .footer { background: {$core.config.footer_bg}; }
                .nav-footer > li > a,
                .nav-footer > li > a:focus { color: {$core.config.footer_link}; }
                .nav-footer > li > a:hover { color: {$core.config.footer_link_hover}; }
                .nav-footer > li.active > a,
                .nav-footer > li.active > a:focus,
                .nav-footer > li.active > a:hover { color: {$core.config.footer_link_active}; }
            </style>
        {/if}
        <script>
 
        </script>
    </head>

    <body class="page-{$core.page.name}">
       

        <nav class="navbar navbar-default {if $core.config.navbar_sticky}navbar-sticky{/if}">
            <div class="container">
          
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-collapse" aria-expanded="false">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                 
                </div>
    <div class="collapse navbar-collapse" id="navbar-collapse">
                    {ia_blocks block='leftmenu'}
                  <div class="col-md-2 col-sm-2 hidden-xs desktop-logo">
                    <a class="navbar-brand{if !$core.config.enable_text_logo} navbar-brand--img{/if}" href="{$smarty.const.IA_URL}">
                        {if $core.config.enable_text_logo}
                            {$core.config.logo_text}
                        {else}
                            {if !empty($core.config.site_logo)}
                                <img src="{$core.page.nonProtocolUrl}uploads/{$core.config.site_logo}" alt="{$core.config.site}">
                            {else}
                                <img src="{$img}logo.png" alt="{$core.config.site}">
                            {/if}
                        {/if}
                    </a></div>
                    {ia_blocks block='rightmenu'}
                </div>
                    <div class="hidden-md hidden-sm hidden-lg mobile-logo">
                    <a class="navbar-brand{if !$core.config.enable_text_logo} navbar-brand--img{/if}" href="{$smarty.const.IA_URL}">
                        {if $core.config.enable_text_logo}
                            {$core.config.logo_text}
                        {else}
                            {if !empty($core.config.site_logo)}
                                <img src="{$core.page.nonProtocolUrl}uploads/{$core.config.site_logo}" alt="{$core.config.site}">
                            {else}
                                <img src="{$img}logo.png" alt="{$core.config.site}">
                            {/if}
                        {/if}
                    </a></div>
            
            </div>
     
              
        </nav>
             {include 'language-selector.tpl'}

        {if isset($smarty.get.elements)}
            {include 'page.elements.tpl'}
        {else}
        <header class="header">
            {ia_blocks block='teaser'}
        </header>

        {/if}
                <div class="content__body">
                {ia_hooker name='smartyFrontBeforeBreadcrumb'}
                    {include 'breadcrumb.tpl' bclass="br-{$core.page.name}"}
                    {$_content_}
                </div>
        <footer class="footer">
            <div class="footer-container">
                {ia_hooker name='smartyFrontBeforeFooterLinks'}
                <div class="innrf">
                {ia_blocks block='footer1'}
                </div>
                 <div class="downf">
                {ia_blocks block='footer2'}
                </div>
                {*<p class="copyright">&copy; {$smarty.server.REQUEST_TIME|date_format:'%Y'} {lang key='powered_by_subrion'}</p>*}

                {ia_hooker name='smartyFrontAfterFooterLinks'}
            </div>
        </footer>

        <button class="back-to-top js-back-to-top"><span class="fa fa-angle-double-up"></span></button>

        <!-- SYSTEM STUFF -->

        {if $core.config.cron}
            <div style="display: none;">
                <img src="{$core.page.nonProtocolUrl}cron/?{randnum}" width="1" height="1" alt="">
            </div>
        {/if}

        {if isset($manageMode)}
            {include 'visual-mode.tpl'}
        {/if}

        {if isset($previewMode)}
            <p>{lang key='youre_in_preview_mode'}</p>
        {/if}

        {ia_print_js display='on'}

        {ia_hooker name='smartyFrontFinalize'}
    </body>
</html>
