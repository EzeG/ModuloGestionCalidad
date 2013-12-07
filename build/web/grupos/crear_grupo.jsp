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
                    <p style="font-size: 12px">Nombre Grupo: </p>
                    <html:text property="nombre_grupo" value="" alt="Nombre Grupo" style="width:500px"/>
                </td>
            </tr>
            <tr>
                <td>
                    <p style="font-size: 12px">Integrantes: </p>
                    <html:text property="string_grupo" value="" alt="Integrantes" style="width:511px"/>
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