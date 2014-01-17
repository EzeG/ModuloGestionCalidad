<%@page contentType="text/html" %>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>

<html:form action="/modificarUsuarios">
<div id="listapersonas">  
    <table>
        <logic:iterate id="usuario" name="huerfanos">
            
            <tr id="lista">
                <td style="width: 580px; font-size: 14px">
                    <input type="checkbox" name="usbid" value="<bean:write name="usuario" property="usbid"/>"><bean:write name="usuario" property="nombre"/>
                    <html:hidden name="usuario" property="grupo"/>
                </td>
            </tr>
         </logic:iterate>
    </table>
</div>


    <html:submit styleId="agregar" value="Agregar"/>
</html:form>

<head>
        <link rel="stylesheet" type="text/css" href="CSS/Style.css" />
</head>