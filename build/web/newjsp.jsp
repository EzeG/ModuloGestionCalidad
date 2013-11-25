<%-- 
    Document   : newjsp
    Created on : 25/11/2013, 11:42:49 AM
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
        <title>JSP Page</title>
    </head>
    <body>
        <html:form action="/nueva_publicacion">

    <table>
        <tbody>
            <tr>
                <td><html:text property="titulo_publicacion" value="Titulo de la Publicacion" /></td>
            </tr>
            <tr>
                <td><html:textarea property="contenido_publicacion" value="Escriba aqui el contenido de la publicacion." /></td>
            </tr>
            <tr>
                <td><html:submit value="Publicar" /></td>
            </tr>
        </tbody>
    </table>


</html:form>
    </body>
</html>
