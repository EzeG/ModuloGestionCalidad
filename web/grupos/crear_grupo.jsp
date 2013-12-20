<%@page import="clases.NoConformidad"%>
<%@page contentType="text/html" %>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>


<html:link action="tab_grupos"><p>Atras</p></html:link>

<p id="submit_error" align="center" style="font-size: 16px; color: #B22222">
<bean:write name="grupito" property="error" filter="false"/>
</p>

<%String nombreG= (String) request.getAttribute("nombre_grupo");%>
<%String miembrosG= (String) request.getAttribute("string_grupo");%>
<%String registro= (String) request.getAttribute("registro_nc");%>
<%String situacion= (String) request.getAttribute("situacion_nc");%>
<%String clausula= (String) request.getAttribute("clausula_nc");%>
<%String requisito= (String) request.getAttribute("requisito_nc");%>
<%String declaracion= (String) request.getAttribute("declaracion_nc");%>
<%String codigo= (String) request.getAttribute("codigo_nc");%>
<%String error= (String) request.getAttribute("error");%>

<html:form action="/CrearGrupo">

    <table style="margin-left: 10px">
        <tbody>
            <tr>
                <td>
                    <p style="font-size: 14px"><b>Nombre Grupo:</b> </p>
                    <html:text  styleId="nombre_grupo"   property="nombre_grupo" value="<%=nombreG%>" alt="Nombre Grupo" style="width:500px; color:gray; font-size: 14px"/>
                    <p id="nombre_grupo_error" style="font-size: 12px; color: #B22222"></p>
                </td>
            </tr>
            <tr>
                <td>
                    <p style="font-size: 14px"><b>Integrantes:</b> </p>
                    <html:text styleId="string_grupo" property="string_grupo" value="<%=miembrosG%>" alt="Integrantes" style="width:500px; color:gray; font-size: 14px"/>
                    <p id="string_grupo_error" style="font-size: 12px; color: #B22222"></p>
                </td>
            </tr>
            <tr>
            </tr>
        </tbody>
    </table>
    <fieldset>
        <table style="margin-left: 10px">
                <tr></tr>
                <tr></tr>
                <tr>
                </tr>

                <tr>
                    <td><p style="font-size: 14px"><b>Registro:</b></p></td>
                    <td>
                        <html:text  styleId="registro_nc" property="registro_nc" value="<%=registro%>" style="width:100px; color: gray; font-size: 14px"/>
                        <p id="registro_nc_error" style="font-size: 12px; color: #B22222">
                    </td>
                </tr>

                
                <tr>
                    <td><p style="font-size: 14px"><b>Situacion:</b></p></td>
                    <td>
                        <html:textarea  styleId="situacion_nc" property="situacion_nc" value="<%=situacion%>" style="height: 100px; width:300px; color: gray; font-size: 14px"/>
                        <p id="situacion_nc_counter"  style="margin-left: 290px; font-size: 10px; color: gray">4999</p>
                        <p id="situacion_nc_error" style="font-size: 12px; color: #B22222"></p>
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
                        <p id="declaracion_nc_counter"  style="margin-left: 220px; font-size: 10px; color: gray">4999</p>
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
                    <td></td>
                </tr>
         </table>       
    </fieldset>
    <html:submit styleId="submit" value="Aceptar" />
    <html:hidden styleId="error_style" name="error_style" property="error" value="<%=error%>"/>
 </html:form>
<div style="margin: -25px 0 0 80px; position: absolute">
    <html:link action="tab_grupos">
        <html:submit value="Cancelar" />
    </html:link>
</div>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
        <script type="text/javascript" src="JS/Validacion-Grupo.js"></script>
</head>