<%@page contentType="text/html" %>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>

<html:link action="tab_grupos"><p><b>Atras</b></p></html:link>
<p id="registro_nc_error" style="font-size: 14px; color: #B22222"><b><bean:write name="grupito" property="error" filter="false"/></b></p>
                <td style="vertical-align: middle">
                    <p style="font-size: 16px; color:#127ba5">
                        <bean:write name="grupito" property="nombre_grupo" filter="false"/>/No conformidad 
                    </p>
                </td>

<%String nombreG= (String) request.getAttribute("nombreG");%>
<%String registro= (String) request.getAttribute("registro_nc");%>
<%String situacion= (String) request.getAttribute("situacion_nc");%>
<%String clausula= (String) request.getAttribute("clausula_nc");%>
<%String requisito= (String) request.getAttribute("requisito_nc");%>
<%String declaracion= (String) request.getAttribute("declaracion_nc");%>
<%String codigo= (String) request.getAttribute("codigo_nc");%>

<fieldset>
    <html:form styleId="no_conformidad" action="/CrearNoConformidad">
        
        <table style="margin-left: 10px">
                <tr></tr>
                <tr></tr>
                <tr>
                </tr>

                 <tr>
                    <td><p style="font-size: 14px"><b>Registro:</b></p></td>
                    <td>
                        <html:text  styleId="registro_nc" property="registro_nc" value="<%=registro%>" style="width:100px; color: gray; font-size: 14px"/>
                        <p id="registro_nc_error" style="font-size: 12px; color: #B22222"></p>
                    </td>
                </tr>

                
                <tr>
                    <td><p style="font-size: 14px"><b>Situacion:</b></p></td>
                    <td>
                        <html:textarea  styleId="situacion_nc" property="situacion_nc" value="<%=situacion%>" style="height: 100px; width:300px; color: gray; font-size: 14px"/>
                        <p id="situacion_nc_counter"  style="margin-left: 290px; font-size: 10px; color: gray">4999</p>
                        <p id="situacion_nc_error" style=" font-size: 12px; color: #B22222"></p>
                    </td>                   
                </tr> 
           
                
                <tr>
                    <td><p style="font-size: 14px"><b>Origen:</b></p></td>
                    <td>
                        <html:select style="font-size: 14px; height: 20px " property="origen_nc">
                        <html:option value="1">Queja</html:option>
                        <html:option value="2">Auditoria</html:option>
                        <html:option value="3">Revision del SGC</html:option>
                        <html:option value="4">Oportunidad de Mejora</html:option>
                        <html:option value="5">Trabajo No Conforme</html:option>
                        <html:option value="6">Otro</html:option>
                        </html:select>
                    </td>
                </tr>
                
                
                <tr>
                    <td><p style="font-size: 14px"><b>Norma:</b></p></td>
                    <td>
                        <html:select style="font-size: 14px; height: 20px " property="documento_nc">
                        <html:option value="ISO 9001">ISO 9001</html:option>
                        <html:option value="ISO/IEC 17025">ISO/IEC 17025</html:option>
                        </html:select>
                    </td>
                </tr>   
                
                
                <tr>
                    <td><p style="font-size: 14px"><b>Clausula:</b></p></td>
                    <td>
                        <html:text styleId="clausula_nc" property="clausula_nc" value="<%=clausula%>" style="color: gray; font-size: 14px"/>
                        <p id="clausula_nc_error" style="font-size: 12px; color: #B22222"></p>
                    </td>
                </tr>

                
                <tr>
                    <td><p style="font-size: 14px"><b>Requisito:</b></p></td>
                    <td>
                        <html:textarea styleId="requisito_nc" property="requisito_nc" value="<%=requisito%>" style="height: 100px; width:250px; color: gray; font-size: 14px"/>
                        <p id="requisito_nc_counter"  style="margin-left: 220px; font-size: 10px; color: gray">4999</p>
                        <p id="requisito_nc_error" style="font-size: 12px; color: #B22222"></p>
                    </td>
                </tr>
  
                
                <tr>
                    <td><p style="font-size: 14px"><b>Declaracion:</b></p></td>
                    <td>
                        <html:textarea  styleId="declaracion_nc" property="declaracion_nc" value="<%=declaracion%>" style="height: 100px; width:250px; color: gray; font-size: 14px"/>
                        <p id="declaracion_nc_counter"  style="margin-left: 220px;font-size: 10px; color: gray">4999</p> 
                        <p id="declaracion_nc_error" style="font-size: 12px; color: #B22222"></p>
                    </td>

                </tr>

                
                <tr>
                    <td><p style="font-size: 12px"><b>Codigo:</b></p></td>
                    <td>
                        <html:text styleId="codigo_nc" property="codigo_nc" value="<%=codigo%>" style="color: gray; font-size: 14px"/>
                        <p id="codigo_nc_error" style="font-size: 12px; color: #B22222"></p>
                    </td>
                </tr>
                <tr>
                    <td><html:submit styleId="submit" value="Aceptar" />
                        <html:hidden property="grupo_nc" value="<%=nombreG%>"/>
                    </td>
                    <td></td>
                </tr>
         </table>       
    </html:form>
</fieldset>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
    <title>Ejemplo de código JavaScript en el propio documento</title>
    <script type="text/javascript" src="JS/Validacion-No_conformidades.js"></script>
</head>
