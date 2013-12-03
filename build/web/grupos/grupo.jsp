<%@page contentType="text/html" %>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>


<table style="margin-top: -10px">
    <tr>
        <td style="vertical-align: middle">
            <p style="color:#336699; font-size: 1.154em; font-weight: bolder; size: 80px">GRUPOS</p>
        </td>
        <td>
            <html:link action="nuevo_grupo">
                <html:submit value="Crear"/>
            </html:link>
        </td>
    </tr>

    <logic:iterate id="infoGrupo" name="listGrupos">
        <tr>
            <td style="width: 560px">
                <html:link action="/linkGrupos" paramId="verGrupo"
                           paramName="infoGrupo" paramProperty="nombre_grupo"> 
                <p style="color: #1c6ea0;">
                    <bean:write name="infoGrupo" property="nombre_grupo"/><br/>
                </p>
                </html:link>
            </td>
            <td style="width: 115px">
                <p>Eliminar</p>
            </td>
        </tr>
    </logic:iterate>
</table>