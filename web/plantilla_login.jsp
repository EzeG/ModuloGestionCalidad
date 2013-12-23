<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>

<!DOCTYPE html>
<html>
    <head profile="http://www.w3.org/1999/xhtml/vocab">
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
        <meta name="Generator" content="Drupal 7 (http://drupal.org)" />
        <link rel="shortcut icon" href="http://www.ulab.usb.ve/misc/favicon.ico" type="image/vnd.microsoft.icon" />
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
        
        <!--[if lt IE 9]><script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script><![endif]-->
    </head>
    
    <body class="html not-front not-logged-in two-sidebars page-noticias" >
        <div id="container" class="container-16">
            <header id="header" class="section section-header clearfix" role="banner">
                <hgroup class="grid-10">
                   <html:link action="iniciar.do">
                        <img src="http://www.ulab.usb.ve/sites/default/files/logo_drupal.gif" alt="Inicio"/>
                   </html:link>
                </hgroup>
            </header>
            <div id="main" class="section section-main clearfix" role="main">
                <div id="content" class="column grid-10 push-3">
                    <h2 class="element-invisible">Se encuentra usted aquí</h2>
                    <div class="inner">
                        <div id="main-content" class="clearfix">
                            <div class="region region-content">
                                <div class="view view-noticias view-id-noticias view-display-id-page_1 view-dom-id-f258d0e6a6378f17f545a0c53e3df3ad">
                                    <div class="view-content">

                                        <tiles:insert attribute="cuerpo" />

                                    </div>
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