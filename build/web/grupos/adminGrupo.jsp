<%@page contentType="text/html" %>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>

<table style="margin-top: -10px">
    <tr>
        <td style="vertical-align: middle" colspan="3">
            <p style="color:#336699; font-size: 1.154em; font-weight: bolder; size: 80px">
                <%= request.getAttribute("nombreGrupo")%>
            </p>
        </td>
        <td></td>
        <td></td>
    </tr>
    <logic:iterate id="usuarioG" name="usuariosGrupo">
        <tr>
            <td style="vertical-align: middle">
                <bean:write name="usuarioG" property="nombre" />           
            </td>
            <td>
                <bean:write name="usuarioG" property="email" />
            </td>
            <td>
                <bean:write name="usuarioG" property="usbid" /> 
            </td>
        </tr>
    </logic:iterate>
    <tr>
        <td style="vertical-align: middle" colspan="3">
            <p style="color:#336699; font-size: 11px; size: 80px; font-weight: bold">
                No Conformidad:
            </p>
            <p>

                    <%= request.getAttribute("noConformidad")%>

            </p>
        </td>
        <td></td>
        <td></td>
    </tr>

</table>
