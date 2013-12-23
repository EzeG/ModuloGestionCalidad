<%@page contentType="text/html" %>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>


<p style="margin-top: -10px; color:#336699; font-size: 1.154em; font-weight: bolder; size: 80px">
                    <%= request.getAttribute("nombreGrupo")%>

</p>
<table style="margin-bottom: -5px;">
    <td style="vertical-align: middle">
        <b>Miembro:</b>           
    </td>
    <td style="vertical-align: middle">
        <p style="margin-left: 97px"><b>E-mail:</b><p>
    </td>
    <td style="vertical-align: middle">
        <p style="margin-left: 93px"><b>USBID::</b><p>
     </td>
</table>
<div id="miembros">
    <table style="">
        <tr>
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
    </table>
</div>
<p style="font-size: 11px; size: 80px; font-weight: bold">
    No Conformidad:
</p>
<div id="noconformidades">                    
    <table>    
             <logic:iterate id="ncG" name="noConformidad">
                    <tr>
                        <td style="vertical-align: middle">
                            <bean:write name="ncG" property="registro_nc" />           
                        </td>
                    </tr>
             </logic:iterate>
            <td></td>
            <td></td>
    </table>
</div>
                    
                    
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
    <link rel="stylesheet" type="text/css" href="CSS/Style.css" />
</head>

