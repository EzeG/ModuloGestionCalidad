<%-- 
    Document   : agregar_personas
    Created on : Dec 5, 2013, 12:02:01 AM
    Author     : ani
--%>

<%@page contentType="text/html" %>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>
<table>
    <logic:iterate id="usuario" name="huerfanos">
        <tr>
            <td>
                <bean:write name="usuario" property="nombre"/>
                <bean:write name="usuario" property="email"/>
                <bean:write name="usuario" property="usbid"/>
            </td>
            <td>
                <html:form action="/modificarUsuarios">
                    <html:hidden name="usuario" property="usbid"/>
                    <html:hidden name="usuario" property="grupo"/>
                    <html:submit styleId="agregar" value="Agregar"/>
                </html:form>
            </td>
        </logic:iterate>
    </tr>
</table>


<head>
        <link rel="stylesheet" type="text/css" href="CSS/Style.css" />
</head>