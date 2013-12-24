<%@page contentType="text/html" %>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>








        <div>
            <bean:write name="grupitos" property="error" filter="false"/>
        </div>

        
        <div>
            <table>
                <tr>
                    <td style="vertical-align: middle; width: 540px">
                        <p style="color:#336699; font-size: 14px; font-weight: bolder; size: 80px">Grupos</p>
                    </td>
                    <td>
                        <html:link action="nuevo_grupo">
                            <html:submit styleId="crear" value="Crear Nuevo" style="margin: 0px 0px 0px -30px" disabled="true"/>
                        </html:link>
                    </td>
                </tr>
            </table>
        </div>
<div id="noconformidades">  
    <table>
        <logic:iterate id="infoGrupo" name="listGrupos">
            <tr id="lista">
                <td style="width: 580px">
                    <html:link action="/linkGrupos" paramId="verGrupo"
                               paramName="infoGrupo" paramProperty="nombre_grupo"> 
                        <p style="color: #1c6ea0; font-size: 14px;">
                            <bean:write name="infoGrupo" property="nombre_grupo"/><br/>
                        </p>
                    </html:link>
                </td>

                <td style="width: 115px">
                    <html:form action="/agregarNC">
                        <html:hidden name="infoGrupo" property="nombre_grupo"/>
                        <html:submit styleId= "agregarp" value="+ No Conformidad"/>
                    </html:form>
                </td>
                <td >
                    <html:form action="/eliminargrupo">
                        <html:hidden name="infoGrupo" property="nombre_grupo" disabled="true"/>
                        <html:submit styleId="eliminar" value="Eliminar"/>
                    </html:form>
                </td>
            </tr>
        </logic:iterate>
    </table>
</div>
        
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
        <link rel="stylesheet" type="text/css" href="CSS/Style.css" />
        
</head>