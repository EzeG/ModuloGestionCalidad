<%@page contentType="text/html" %>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>


<p id="registro_nc_error" style="font-size: 14px; color: #B22222"><b><bean:write name="public" property="error" filter="false"/></b></p>

<%String Titulo= (String) request.getAttribute("Titulo");%>
<%String Contenido= (String) request.getAttribute("Contenido");%>

<html:form action="/CrearNuevaPublicacion">

    <table style="margin-left: 10px">
        <tbody>
            <tr>
                <td>
                    <html:text styleId="titulo_publicacion" property="titulo_publicacion" value="<%=Titulo%>" style="width:500px; color:gray; font-size: 14px" />
                    
                    <p id="titulo_publicacion_error" style="font-size: 12px; color: #B22222"></p>
                </td>
            </tr>
            <tr>
                <td>
                    <html:textarea styleId="contenido_publicacion" property="contenido_publicacion" value="<%=Contenido%>" style="height: 100px; width:495px; color: gray; font-size: 14px"/>
                    <p id="contenido_publicacion_counter"  style="margin-left: 480px; font-size: 10px; color: gray">4999</p>
                    <p id="contenido_publicacion_error" style="margin-top: -20px; font-size: 12px; color: #B22222"></p>
                </td>
            </tr>
            <tr>
                <td><html:submit styleId="submit" value="Publicar" /></td>
            </tr>
        </tbody>
    </table>
</html:form>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
    <script type="text/javascript" src="JS/Validacion-nueva_publicacion.js"></script>
    <link rel="stylesheet" type="text/css" href="CSS/Style.css" />
</head>