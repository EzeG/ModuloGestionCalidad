<%@page contentType="text/html" %>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>


<html:form action="/CrearNuevaPublicacion">

    <table style="margin-left: 10px">
        <tbody>
            <tr>
                <td><html:text property="titulo_publicacion" value="Titulo de la Publicacion" style="width:500px" /></td>
            </tr>
            <tr>
                <td><html:textarea property="contenido_publicacion" value="Escriba aqui el contenido de la publicacion." style="width:495px"/></td>
            </tr>
            <tr>
                <td><html:submit value="Publicar" /></td>
            </tr>
        </tbody>
    </table>


</html:form>