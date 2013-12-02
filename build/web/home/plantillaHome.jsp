<%-- 
    Document   : plantillaHome
    Created on : 01/12/2013, 11:43:23 AM
    Author     : edgar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>


<!DOCTYPE html>
<html version="HTML+RDFa 1.0" lang="es" dir="ltr" xmlns="http://www.w3.org/1999/xhtml"
      xmlns:content="http://purl.org/rss/1.0/modules/content/"
      xmlns:dc="http://purl.org/dc/terms/"
      xmlns:foaf="http://xmlns.com/foaf/0.1/"
      xmlns:og="http://ogp.me/ns#"
      xmlns:rdfs="http://www.w3.org/2000/01/rdf-schema#"
      xmlns:sioc="http://rdfs.org/sioc/ns#"
      xmlns:sioct="http://rdfs.org/sioc/types#"
      xmlns:skos="http://www.w3.org/2004/02/skos/core#"
      xmlns:xsd="http://www.w3.org/2001/XMLSchema#">
    <head profile="http://www.w3.org/1999/xhtml/vocab">
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
        <link rel="shortcut icon" href="http://www.ulab.usb.ve/misc/favicon.ico" type="image/vnd.microsoft.icon" />
        <link rel="alternate" type="application/rss+xml" title="Unidad de Laboratoris RSS" href="http://www.ulab.usb.ve/rss.xml" />
        <meta name="Generator" content="Drupal 7 (http://drupal.org)" />
        <title><tiles:getAsString name="titulo"/></title>
        <style type="text/css" media="all">@import url("http://www.ulab.usb.ve/modules/system/system.base.css?ml8e0y");</style>
        <style type="text/css" media="all">@import url("http://www.ulab.usb.ve/modules/field/theme/field.css?ml8e0y");
            @import url("http://www.ulab.usb.ve/themes/sky/css/user.css?ml8e0y");
            @import url("http://www.ulab.usb.ve/sites/all/modules/views/css/views.css?ml8e0y");</style>
        <style type="text/css" media="all">@import url("http://www.ulab.usb.ve/sites/all/modules/ckeditor/ckeditor.css?ml8e0y");
            @import url("http://www.ulab.usb.ve/sites/all/modules/ctools/css/ctools.css?ml8e0y");</style>
        <style type="text/css" media="all">@import url("http://www.ulab.usb.ve/themes/sky/css/layout.css?ml8e0y");
            @import url("http://www.ulab.usb.ve/themes/sky/css/style.css?ml8e0y");
            @import url("http://www.ulab.usb.ve/themes/sky/css/forms.css?ml8e0y");
            @import url("http://www.ulab.usb.ve/themes/sky/css/colors.css?ml8e0y");</style>
        <style type="text/css" media="print">@import url("http://www.ulab.usb.ve/themes/sky/css/print.css?ml8e0y");</style>

        <!--[if lte IE 7]>
        <link type="text/css" rel="stylesheet" href="http://www.ulab.usb.ve/themes/sky/css/ie.css?ml8e0y" media="all" />
        <![endif]-->
        <script type="text/javascript" src="http://www.ulab.usb.ve/misc/jquery.js?v=1.4.4"></script>
        <script type="text/javascript" src="http://www.ulab.usb.ve/misc/jquery.once.js?v=1.2"></script>
        <script type="text/javascript" src="http://www.ulab.usb.ve/misc/drupal.js?ml8e0y"></script>
        <script type="text/javascript" src="http://www.ulab.usb.ve/sites/default/files/languages/es_4XpqCflKazTuXzLphPzjQcs4p_0-3cW6doKJyQdMlBo.js?ml8e0y"></script>
        <script type="text/javascript" src="http://www.ulab.usb.ve/themes/sky/js/scripts.js?ml8e0y"></script>
        <script type="text/javascript">
            <!--//--><![CDATA[//><!--
        jQuery.extend(Drupal.settings, {"basePath": "\/", "pathPrefix": "", "ajaxPageState": {"theme": "sky", "theme_token": "6hpfUJ7HdsnqkUl-lDXJHRqwcWoct6mWVa2W4ZNZH3o", "js": {"misc\/jquery.js": 1, "misc\/jquery.once.js": 1, "misc\/drupal.js": 1, "public:\/\/languages\/es_4XpqCflKazTuXzLphPzjQcs4p_0-3cW6doKJyQdMlBo.js": 1, "themes\/sky\/js\/scripts.js": 1}, "css": {"modules\/system\/system.base.css": 1, "modules\/field\/theme\/field.css": 1, "modules\/user\/user.css": 1, "sites\/all\/modules\/views\/css\/views.css": 1, "sites\/all\/modules\/ckeditor\/ckeditor.css": 1, "sites\/all\/modules\/ctools\/css\/ctools.css": 1, "themes\/sky\/css\/layout.css": 1, "themes\/sky\/css\/style.css": 1, "themes\/sky\/css\/forms.css": 1, "themes\/sky\/css\/colors.css": 1, "themes\/sky\/css\/print.css": 1, "themes\/sky\/css\/ie.css": 1}}});
            //--><!]]>
        </script>
        <!--[if lt IE 9]><script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script><![endif]-->
    </head>
    <body class="html front not-logged-in two-sidebars page-node" >
        <div id="skip-link">
            <a href="#main-content" class="element-invisible element-focusable">Pasar al contenido principal</a>
        </div>
        <div id="container" class="container-16">
            <header id="header" class="section section-header clearfix" role="banner">
                <hgroup class="grid-10">
                    <a title="Inicio" rel="home" href="/"><img src="http://www.ulab.usb.ve/sites/default/files/logo_drupal.gif" alt="Inicio"/></a>
                </hgroup>
            </header>
            <div id="main" class="section section-main clearfix" role="main">
                <div id="content" class="column grid-10 push-3">
                    <div class="inner">
                        <div id="main-content" class="clearfix">
                            <div class="region region-content">
                                
                                <!-- ********************ARTICULOS **************-->
                                
                                <article id="node-53" class="node node-article node-promoted node-teaser clearfix" about="/node/53" typeof="sioc:Item foaf:Document" role="article">
                                    <header class="clearfix">
                                        <h2 property="dc:title" datatype="" class="title node-title"><a href="/node/53">1° Jornadas Científico-Técnicas Unidad de Laboratorios Mayo 2013</a></h2>
                                    </header>
                                    <div class="content clearfix">
                                        <div class="field field-name-body field-type-text-with-summary field-label-hidden"><div class="field-items"><div class="field-item even" property="content:encoded"><p>La Unidad de Laboratorios tiene el gusto de informar que las nuevas fechas para llevar a cabo las 1° Jornadas Científico - Técnicas de la Unidad de Laboratorios serán; los días miércoles 29 de mayo (Sede de Camurí), jueves 30 y viernes 31 de mayo (Sartenejas).</p>
                                                    <p>A todos nuestra mas cordial invitación a acompañarnos. </p>
                                                </div></div></div>  </div>
                                    <footer>
                                        <nav class="links">
                                            <ul class="links inline"><li class="node-readmore first last"><a href="/node/53" rel="tag" title="1° Jornadas Científico-Técnicas Unidad de Laboratorios Mayo 2013">Leer más</a></li>
                                            </ul>      </nav>
                                    </footer>
                                </article>

                                <h2 class="element-invisible">Páginas</h2><div class="item-list"><ul class="pager"><li class="pager-current first">1</li>
                                        <li class="pager-item"><a title="Ir a la página 2" href="/node?page=1">2</a></li>
                                        <li class="pager-item"><a title="Ir a la página 3" href="/node?page=2">3</a></li>
                                        <li class="pager-next"><a title="Ir a la página siguiente" href="/node?page=1">siguiente ›</a></li>
                                        <li class="pager-last last"><a title="Ir a la última página" href="/node?page=2">última »</a></li>
                                    </ul></div>  </div>
                        </div>
                        <a href="/rss.xml" class="feed-icon" title="Subscribe to Unidad de Laboratoris RSS"><img typeof="foaf:Image" src="http://www.ulab.usb.ve/misc/feed.png" width="16" height="16" alt="Subscribe to Unidad de Laboratoris RSS" /></a>    </div>
                </div>
                <div id="sidebar-first" class="sidebar grid-3 pull-10">
                    <div class="region region-sidebar-first">
                        <div id="block-system-main-menu" class="block block-system block-menu first">
                            <div class="inner">
                                <div class="content">
                                    <ul class="menu"><li class="first leaf"><html:link action="agenda"><p>Agenda</p></html:link></li>
                                        <li class="leaf"><html:link action="cartelera"><p>Cartelera</p></html:link></li>
                                        <li class="leaf"><html:link action="quejas"><p>Quejas</p></html:link></li>
                                        <li class="last leaf"><html:link action="procesos"><p>Procesos</p></html:link></li>
                                        <li class="last leaf"><html:link action="estadisticas"><p>Estadisticas</p></html:link></li>
                                        <li class="last leaf"><html:link action="tab_grupos"><p>Grupos</p></html:link></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div id="block-menu-menu-historico" class="block block-menu">
                            <div class="inner">
                                <div class="content">
                                    <ul class="menu"><li class="first last leaf"><a href="/noticias" title="Archivo de Noticias">Archivo de Noticias</a></li>
                                    </ul>    </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div id="sidebar-second" class="sidebar grid-3">
                    <div class="region region-sidebar-second">
                        <div id="block-block-2" class="block block-block first">
                            <div class="inner">
                                <div class="content">
                                    <p><img alt="" src="http://www.ulab.usb.ve/sites/default/files/stikers/logo_ulab.gif" /></p>
                                    <p><img alt="" src="http://www.ulab.usb.ve/sites/default/files/stikers/innovar.gif" /></p>
                                    <p><a href="http://www.ulab.usb.ve/jornadas"><img alt="" src="http://www.ulab.usb.ve/sites/default/files/stickers_jornadas.jpg" /></a></p>
                                    <p><a href="http://159.90.91.211/sites/default/files/catalogo_ulab.pdf"><img alt="" src="http://www.ulab.usb.ve/sites/default/files/cat_ulab.jpg" /></a></p>
                                    <p><a href="http://159.90.91.211/node/26"><img alt="" src="http://www.ulab.usb.ve/sites/default/files/cons_ulab.jpg" /></a></p>
                                    <p><a href="http://159.90.91.211/node/27"><img alt="" src="http://www.ulab.usb.ve/sites/default/files/doc_ulab.jpg" /></a></p>
                                    <p><a href="http://159.90.91.211/node/25"><img alt="" src="http://www.ulab.usb.ve/sites/default/files/comit_ulab.jpg" /></a></p>
                                    <p><a href="https://www.facebook.com/pages/Unidad-de-Laboratorios-USB/173900382644914" target="_blank"><img alt="" src="http://www.ulab.usb.ve/sites/default/files/stikers/facebook.gif" /></a></p>
                                    <p><img alt="" src="http://www.ulab.usb.ve/sites/default/files/somosusb.gif" /></p>
                                    <p> </p>
                                    <p> </p>
                                    <p> </p>
                                    <p> </p>
                                    <p> </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <footer id="footer" class="section section-footer clearfix" role="footer">
                <div class="region region-footer">
                    <div id="block-block-1" class="block block-block first">
                        <div class="inner">
                            <div class="content">
                                 <table align="left" border="0" cellpadding="1" cellspacing="1"><tr><td valign="bottom" width="95">
                                            <a href="http://www.usb.ve"><img alt="" src="http://www.ulab.usb.ve/sites/default/files/cebolla_70_45.jpg" /></a>
                                            <td valign="bottom">
                                                <a href="http://www.usb.ve/home/node/68">e-virtual</a> | <a href="https://webmail.usb.ve/" target="_blank">Correo</a> |<a href="http://www.usb.ve/buscador.php" target="_blank"> </a><a href="https://esopo.usb.ve">esopo</a> |<a href="http://www.usb.ve/buscador.php" target="_blank"> </a><a href="http://www.youtube.com/canalusb" target="_blank">canalUSB</a> | <a href="http://www.usb.ve/agenda.php" target="_blank">Agenda Cultural</a> | <a href="http://usbnoticias.info/" target="_blank">USBnoticias</a> |<span> </span><span> </span><a href="http://www.usb.ve/home/node/55">Calendario</a> |<br />
                                                Sede Sartenejas, Baruta, Edo. Miranda - Apartado 89000 - Cable Unibolivar - Caracas Venezuela. Teléfono +58 0212-9063111<br />
                                                Sede Litoral, Camurí Grande, Edo. Vargas Parroquia Naiguatá. Teléfono +58 0212-9069000<br />
                                                Diseñada y desarrollada por la Dirección de Servicios Multimedia <a href="mailto:webmaster@usb.ve">webmaster@usb.ve</a></td>
                                    </tr></table><p> </p>
                            </div>
                        </div>
                    </div>
                </div>
            </footer>
        </div>
    </body>
</html>
