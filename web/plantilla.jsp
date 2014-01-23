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
        <link rel="stylesheet" type="text/css" href="CSS/Style_plantilla.css" />
        <title>agag</title>
    </head>
    <body>
        <div class="contenedor">
            <div class="header">
                <html:link action="iniciar.do">
                    <img src="images/plantilla/ulab.jpg"/>
                </html:link>
            </div>
        </div>
    </body>
</html>
