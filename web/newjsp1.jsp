<%-- 
    Document   : plantilla
    Created on : 22/01/2014, 07:05:55 PM
    Author     : edgar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="CSS/Style_plantilla.css"/>
        <link rel="shortcut icon" href="http://www.ulab.usb.ve/misc/favicon.ico" type="image/vnd.microsoft.icon" />
        <title><tiles:getAsString name="titulo"/></title>
    </head>
    <body>
        <div id="contenedor">

            <div id="header">
                <html:link action="iniciar.do">
                    <img src="images/plantilla/ulab.jpg"/>
                </html:link>
            </div>

            <div id="cuerpo" class="clearfix">
                <div id="panel_izq">
                    <ul>
                        <li><html:link action="agenda"><p>Agenda</p></html:link></li>
                        <li><html:link action="cartelera"><p>Cartelera</p></html:link></li>
                        <li><html:link action="Quejas"><p>Quejas</p></html:link></li>
                        <li><html:link action="procesos"><p>Procesos</p></html:link></li>
                        <li><html:link action="estadisticas"><p>Estadisticas</p></html:link></li>
                        <li><html:link action="tab_grupos"><p>Grupos</p></html:link></li>
                        <li><html:link action="Quejate"><p>Quéjate</p></html:link></li>
                        <li id="cerrar"><html:link action="login"><p>Cerrar Sesión</p></html:link></li>

                        </ul>
                    </div>

                    <div id="centro">
                    <tiles:insert attribute="cuerpo" />
                </div>

                <div id="panel_der">
                    <img src="images/plantilla/logo_ulab.gif"/>
                    <img src="images/plantilla/innovar.gif" />
                    <a href="http://www.ulab.usb.ve/jornadas">
                        <img src="images/plantilla/stickers_jornadas.jpg"/>
                    </a>
                    <a href="http://159.90.91.211/sites/default/files/catalogo_ulab.pdf">
                        <img src="images/plantilla/cat_ulab.jpg"/>
                    </a>
                    <a href="http://159.90.91.211/node/26">
                        <img src="images/plantilla/cons_ulab.jpg"/>
                    </a>
                    <a href="http://159.90.91.211/node/27">
                        <img src="images/plantilla/doc_ulab.jpg"/>
                    </a>
                    <a href="http://159.90.91.211/node/25">
                        <img src="images/plantilla/comit_ulab.jpg"/>
                    </a>
                    <a href="https://www.facebook.com/pages/Unidad-de-Laboratorios-USB/173900382644914" target="_blank">
                        <img src="images/plantilla/facebook.gif"/>
                    </a>
                    <img src="images/plantilla/somosusb.gif"/>
                </div>
            </div>

            <div id="footer" class="clearfix">
                <div id="cebolla">
                    <a href="http://www.usb.ve">
                        <img src="images/plantilla/cebolla_70_45.jpg"/>
                    </a>
                </div>
                <div id="contenido">
                    <a href="http://www.usb.ve/home/node/68">
                        e-virtual
                    </a> |
                    <a href="https://webmail.usb.ve/" target="_blank">
                        Correo
                    </a> |
                    <a href="https://esopo.usb.ve">
                        esopo
                    </a> |
                    <a href="http://www.youtube.com/canalusb" target="_blank">
                        canalUSB
                    </a> |
                    <a href="http://www.usb.ve/agenda.php" target="_blank">
                        Agenda Cultural
                    </a> |
                    <a href="http://usbnoticias.info/" target="_blank">
                        USBnoticias
                    </a> |
                    <a href="http://www.usb.ve/home/node/55">
                        Calendario
                    </a>
                    <p>
                        Sede Sartenejas, Baruta, Edo. Miranda - Apartado 89000 - Cable Unibolivar - Caracas Venezuela. Teléfono +58 0212-9063111<br/>
                        Sede Litoral, Camurí Grande, Edo. Vargas Parroquia Naiguatá. Teléfono +58 0212-9069000<br/>
                        Diseñada y desarrollada por Agree Systems
                    </p>
                </div>
            </div>

        </div>
    </body>
</html>
