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
            <tiles:insert attribute="header"/>

            <div id="cuerpo" class="clearfix">
                <tiles:insert attribute="panel_izq" />

                <div id="centro">
                    <html:link action="iniciar.do">
                        <p style="font-weight: bold">
                            Inicio
                        </p>
                    </html:link>
                    <tiles:insert attribute="cuerpo" />
                </div>

                <tiles:insert attribute="panel_der" />
            </div>
            <tiles:insert attribute="footer" />
    </body>
</html>
