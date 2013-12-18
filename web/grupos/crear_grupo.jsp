<%@page import="clases.NoConformidad"%>
<%@page contentType="text/html" %>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>


<html:link action="tab_grupos"><p>Atras</p></html:link>

<bean:write name="grupito" property="error" filter="false"/>

<html:form action="/CrearGrupo">

    <table style="margin-left: 10px">
        <tbody>
            <tr>
                <td>
                    <p style="font-size: 14px"><b>Nombre Grupo:</b> </p>
                    <html:text  styleId="nombre_grupo"   property="nombre_grupo" value="" alt="Nombre Grupo" style="width:500px; color:gray; font-size: 14px"/>
                </td>
            </tr>
            <tr>
                <td>
                    <p style="font-size: 14px"><b>Integrantes:</b> </p>
                    <html:text styleId="string_grupo" property="string_grupo" value="" alt="Integrantes" style="width:500px; color:gray; font-size: 14px"/>
                </td>
            </tr>
            <tr>
                <td>
                    <html:submit value="Asociar No Conformidad" />
                </td>
            </tr>
        </tbody>
    </table>

</html:form>
<div style="margin: -43px 0 0 165px; position: absolute">
    <html:link action="tab_grupos">
        <html:submit value="Cancelar" />
    </html:link>
</div>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
        <script type="text/javascript" src="JS/Validacion-Grupo.js"></script>
</head>