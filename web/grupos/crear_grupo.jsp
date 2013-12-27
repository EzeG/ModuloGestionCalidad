<%@page import="domain.NoConformidad"%>
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

<%String clausula1= (String) request.getAttribute("clausula_nc1");%>
<%String requisito1= (String) request.getAttribute("requisito_nc1");%>
<%String declaracion1= (String) request.getAttribute("declaracion_nc1");%>
<%String codigo1= (String) request.getAttribute("codigo_nc1");%>

<%String clausula2= (String) request.getAttribute("clausula_nc2");%>
<%String requisito2= (String) request.getAttribute("requisito_nc2");%>
<%String declaracion2= (String) request.getAttribute("declaracion_nc2");%>
<%String codigo2= (String) request.getAttribute("codigo_nc2");%>

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
                    <p style="font-size: 14px"><b>Encargado:</b> </p>
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
                        <html:select style="font-size: 14px; height: 24px " property="origen_nc">
                        <html:option value="1">Queja</html:option>
                        <html:option value="2">Auditoria</html:option>
                        <html:option value="3">Revision del SGC</html:option>
                        <html:option value="4">Oportunidad de Mejora</html:option>
                        <html:option value="5">Trabajo No Conforme</html:option>
                        <html:option value="6">Otro</html:option>
                        </html:select>
                    </td>
                </tr>
        </table>
            <p style="font-size: 14px; color:gray" align="center"><b>Norma ISO 9001: </b></p>
        <fieldset style="margin-left:20px; margin-right: 20px">    
        <table>
            <tr>
                <td>
                <p style="font-size: 14px"><b>Codigo:</b></p>
                </td>
                <td>
                <html:text styleClass="boton1"  styleId="codigo_nc1" property="codigo_nc1" value="<%=codigo1%>" style="color: gray; font-size: 14px"/>
                </td>
                <p id="codigo_nc1_error" style="font-size: 12px; color: #B22222"></p>
            </tr>
        </table> 
        
        <div id="desplegable1"> 
            <table>
                <tr>
                    <td><p style="font-size: 14px"><b>Clausula:</b></p></td>
                    <td>
                        <html:text styleId="clausula_nc1" property="clausula_nc1" value="<%=clausula1%>" style="color: gray; font-size: 14px"/>
                        <p id="clausula_nc1_error" style="font-size: 12px; color: #B22222"></p>
                    </td>
                </tr>  
                <tr>
                    <td><p style="font-size: 14px"><b>Requisito:</b></p></td>
                    <td>
                        <html:textarea styleId="requisito_nc1" property="requisito_nc1" value="<%=requisito1%>" style="height: 100px; width:250px; color: gray; font-size: 14px"/>
                        <p id="requisito_nc1_counter"  style="margin-left: 220px; font-size: 10px; color: gray">4999</p>
                        <p id="requisito_nc1_error" style="font-size: 12px; color: #B22222"></p>
                    </td>
                </tr>
                <tr>
                    <td><p style="font-size: 14px"><b>Declaracion:</b></p></td>
                    <td>
                        <html:textarea  styleId="declaracion_nc1" property="declaracion_nc1" value="<%=declaracion1%>" style="height: 100px; width:250px; color: gray; font-size: 14px"/>
                        <p id="declaracion_nc1_counter"  style="margin-left: 220px; font-size: 10px; color: gray">4999</p>
                        <p id="declaracion_nc1_error" style="font-size: 12px; color: #B22222"></p>
                    </td>
                </tr> 
                
            </table> 
        </div>  
        </fieldset>
        <p style="font-size: 14px; color:gray" align="center"><b>ISO/IEC 17025 </b></p>
        <fieldset style="margin-left:20px; margin-right: 20px"> 
        <table>
            <tr>
                <td>
                <p style="font-size: 14px"><b>Codigo:</b></p>
                </td>
                <td>
                <html:text styleClass="boton2"  styleId="codigo_nc2" property="codigo_nc2" value="<%=codigo2%>" style="color: gray; font-size: 14px"/>
                </td>
                <p id="codigo_nc2_error" style="font-size: 12px; color: #B22222"></p>
            </tr>
        </table>
        <div id="desplegable2"> 
            <table>
                <tr>
                    <td><p style="font-size: 14px"><b>Clausula:</b></p></td>
                    <td>
                        <html:text styleId="clausula_nc2" property="clausula_nc2" value="<%=clausula2%>" style="color: gray; font-size: 14px"/>
                        <p id="clausula_nc2_error" style="font-size: 12px; color: #B22222"></p>
                    </td>
                </tr>   
                <tr>
                    <td><p style="font-size: 14px"><b>Requisito:</b></p></td>
                    <td>
                        <html:textarea styleId="requisito_nc2" property="requisito_nc2" value="<%=requisito2%>" style="height: 100px; width:250px; color: gray; font-size: 14px"/>
                        <p id="requisito_nc2_counter"  style="margin-left: 220px; font-size: 10px; color: gray">4999</p>
                        <p id="requisito_nc2_error" style="font-size: 12px; color: #B22222"></p>
                    </td>
                </tr>
                <tr>
                    <td><p style="font-size: 14px"><b>Declaracion:</b></p></td>
                    <td>
                        <html:textarea  styleId="declaracion_nc2" property="declaracion_nc2" value="<%=declaracion2%>" style="height: 100px; width:250px; color: gray; font-size: 14px"/>
                        <p id="declaracion_nc2_counter"  style="margin-left: 220px; font-size: 10px; color: gray">4999</p>
                        <p id="declaracion_nc2_error" style="font-size: 12px; color: #B22222"></p>
                    </td>
                </tr>   
            </table> 
         </div>
     </fieldset>
    </fieldset>
    <html:submit styleId="submit" value="Aceptar" />
    <html:hidden styleId="error_style" name="error_style" property="error" value="<%=error%>"/>
 </html:form>
<div style="margin: -24px 0 0 90px; position: absolute">
    <html:link action="tab_grupos">
        <html:submit styleId= "cancel" value="Cancelar" />
    </html:link>
</div>






<head>
    <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
        <script type="text/javascript" src="JS/Validacion-Grupo.js"></script>
        <link rel="stylesheet" type="text/css" href="CSS/Style.css" />
        <script type="text/javascript" src="JS/jquery-1.2.6.min.js"></script>
        <script type="text/javascript">
            $(document).ready(function(){
            $(".boton1").click(function(){
            $("#desplegable1").slideToggle("slow");
            });
            $(".boton2").click(function(){
            $("#desplegable2").slideToggle("slow");
            });
            $("#desplegable1").css({ display: 'none' });
            $("#desplegable2").css({ display: 'none' });
            });
            
        </script>
        
</head>