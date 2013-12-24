<%@page import="domain.Grupo"%>
<%@page import="java.util.ArrayList"%>
<%@page import="domain.Usuario"%>
<%@page contentType="text/html" %>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>






        <bean:write name="grupitos" property="error" filter="false"/>


        <div style="vertical-align: middle; width: 560px; margin-bottom: -4px">
            <p style="color:#336699; font-size: 14px; font-weight: bolder; size: 80px">Grupos a cargo:</p>
        </div>

<div id="noconformidades">  
    <table>
    <logic:iterate id="infoGrupo" name="listGrupos1">
    
        <tr id="lista">
            <td style="width: 560px">
                <html:link action="/linkGrupos" paramId="verGrupo"
                           paramName="infoGrupo" paramProperty="nombre_grupo"> 
                    <p style="color: #1c6ea0; font-size: 14px;">
                        <bean:write name="infoGrupo" property="nombre_grupo"/><br/>
                    </p>
                </html:link>
            </td>
            <td style="width: 115px">
                
            </td>
            <td style="width: 115px">
                
            </td>
            <td style="width: 115px">
                <html:form action="/agregarPersonas">
                    <html:hidden name="infoGrupo" property="nombre_grupo"/>
                        <html:submit styleId= "agregarp" value="+ Persona" style=""/>
                </html:form>
            </td>
        </tr>
    
    </logic:iterate>
    </table>
</div>
  
        <div style="vertical-align: middle; width: 560px; margin-bottom: -4px; margin-top: 10px">
            <p style="color:#336699; font-size: 14px; font-weight: bolder; size: 80px">Grupos a los que pertenezco:</p>
        </div>

<div id="noconformidades"> 
    <table >    
    <logic:iterate id="infoGrupo" name="listGrupos2">
    
        <tr id="lista">
            <td style="width: 560px">
                <html:link action="/linkGrupos" paramId="verGrupo"
                           paramName="infoGrupo" paramProperty="nombre_grupo"> 
                    <p style="color: #1c6ea0; font-size: 14px;">
                        <bean:write name="infoGrupo" property="nombre_grupo"/><br/>
                    </p>
                </html:link>
            </td>
            <td style="width: 115px">
                
            </td>
            <td style="width: 115px">
            </td>
        </tr>
    
    </logic:iterate>
   </table>
</div>
        

        
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
        <link rel="stylesheet" type="text/css" href="CSS/Style.css" />
</head>