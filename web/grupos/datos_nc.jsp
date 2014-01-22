<%@page import="domain.NoConformidad"%>
<%@page import="domain.Accion"%>
<%@page contentType="text/html" %>
<%@page import ="java.util.ArrayList"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>



<%
    String visible = (String) request.getAttribute("visible");
    String visual = "visibility : " + visible;
%>
<html:hidden property="" styleId="encargado" value="<%=visible%>"/>
<p align="center" id="registro_nc_error" style="font-size: 14px; color: #B22222; margin-top: -20px"><b><bean:write name="nc" property="error"/></b></p>
<div id="menu_grupos">
    <html:img  src="images/menu_acciones.png" style="margin-top: -10px; margin-left: -10px"/>
    <table style="margin-top:-120px">
        <tr>
            <td style="vertical-align: middle; width: 135px">
                <button class = "button" id="button">
                    <html:img  src="images/acciones_preventivas.png"  width="69px" height="73px" align="center"/>
                </button>
            </td>
            
            <td style="vertical-align: middle; width: 135px">
                <button class = "button" id="button1">
                    <html:img  src="images/acciones_correctivas.png"  width="69px" height="73px" align="center"/>
                </button>
            </td>
            
            <td style="vertical-align: middle; width: 135px">
                <button class="button" id="button2">
                    <html:img  src="images/acciones_terminadas.png"  width="69px" height="73px" align="center"/>
                </button>
            </td>

            <td>
                
                    <button class = "button" style="<%=visual%>" id="button3">
                        <html:img  src="images/agregar_accion.png"  width="69px" height="73px" align="center"/>
                    </button>
                
            </td>
            
            <td style="vertical-align: middle; width: 135px">
                <html:link action="imprimir_nc" paramName="nc" paramProperty="registro_nc" paramId="registro">
                    <button class="button" style="margin-left: 20px">
                        <html:img  src="images/generar_pdf.png"  width="61px" height="73px" align="center"/>
                    </button>
                </html:link>
            </td>
        </tr>
    </table>
</div>
<div id="info">

<table>
    <tr>
        <td>
            <p > No Conformidad </p>
        </td>
        <td align = "right">
            <p style="font-size: 12px; margin-top: -10px">
                <b>Registro:</b>
                <bean:write name="nc" property="registro_nc"/>
            </p>
        </td>
    </tr>
</table>    
<div style="width: 500px">
    <table>
        <tr>
            <td>
                <p style="font-size: 12px">
                    <b>Situación:</b>
                </p>
                <bean:write name="nc" property="situacion_nc"/>
            </td>
            <td>
                <p style="font-size: 12px">
                    <b>Origen:</b>
                    <bean:write name ="nc" property="codigo_origen_nc" />
                </p>
            </td>
            <td>
                <p style="font-size: 12px">
                    <b>Fecha:</b>
                    <bean:write name="nc" property="fecha_nc"/>
                </p>
            </td>
        </tr>
    </table>

    <table>
        <tr>
            <td style="width: 50%">
                <p align="center"><b>Norma ISO 9001:</b></p><br>
                <p style="font-size: 12px">
                    <b>Código:</b>
                    <bean:write name="nc" property="codigo_nc1"/>
                </p>
            </td>
            <td>
                <p align="center"><b>ISO/IEC 17025</b></p><br>
                <p style="font-size: 12px">
                    <b>Código:</b>
                    <bean:write name="nc" property="codigo_nc2"/>
                </p>
            </td>
        </tr>
        <tr>
            <td>
                <p style="font-size: 12px">
                    <b>Requisito:</b>
                </p>
                <bean:write name="nc" property="requisito_nc1"/>
            </td>
            <td>
                <p style="font-size: 12px">
                    <b>Requisito:</b>
                </p>
                <bean:write name="nc" property="requisito_nc2"/>
            </td>
        </tr>
        <tr>
            <td style="width: 50%">
                <p style="font-size: 12px">
                    <b>Clausula:</b>
                    <bean:write name="nc" property="clausula_nc1"/>
                </p>
            </td>
            <td>
                <p style="font-size: 12px">
                    <b>Clausula:</b>
                    <bean:write name="nc" property="clausula_nc2"/>
                </p>
            </td>
        </tr>
        <tr>
            <td>
                <p style="font-size: 12px">
                    <b>Declaración:</b>
                </p>
                <bean:write name="nc" property="declaracion_nc1"/>
            </td>
            <td>
                <p style="font-size: 12px">
                    <b>Declaración:</b>
                </p>
                <bean:write name="nc" property="declaracion_nc2"/>
            </td>
        </tr>
    </table>
</div>
</div>
            
<div id="desplegable">           
    <p>Acciones preventivas:</p>
    <center>            
        <div id="noconformidades">

            <table border = "1">
                <tr bgcolor="#D3D3D3" style="font-size: 12px">
                    <td align="center">
                        <b>Acción</b>
                    </td>
                    <td align="center">
                        <b>Prior</b>
                    </td>
                    <td align="center">
                        <b>Proceso/Responsable</b>
                    </td>
                    <td align="center">
                        <b>Fecha Inicio</b>
                    </td>
                    <td align="center">
                        <b>Culminación</b>
                    </td>
                </tr>

                <logic:iterate id="a_p" name="AccionPreventiva">
                    <tr>
                        <td style="vertical-align: middle">
                            <html:link action="linkaccion.do?registro_nc=${a_p.registro_nc}&accion=${a_p.accion}">
                                <bean:write name="a_p" property="accion"/>
                            </html:link>
                        </td>
                        <td>
                            <bean:write name="a_p" property="prioridad"/>
                        </td>

                        <td>
                            <bean:write name="a_p" property="proceso"/>/<bean:write name="a_p" property="responsable"/>
                        </td>
                        <td>
                            <bean:write name="a_p" format = "dd-MM-yyyy" property="fechainicio"/>
                        </td>
                        <td>
                            <bean:write name="a_p" format = "dd-MM-yyyy" property="fechafinal"/>
                        </td>
                    </tr>
                </logic:iterate>

            </table>
        </div>
    </center>
    <br/>
 </div>
        
 <div id="desplegable1">
    <p>Acciones correctivas:</p>
    <center>
        <div id="noconformidades">
            <table border = "1">
                <tr bgcolor="#D3D3D3" style="font-size: 12px">
                    <td align="center">
                        <b>Acción</b>
                    </td>
                    <td align="center">
                        <b>Prior</b>
                    </td>
                    <td align="center">
                        <b>Proceso/Responsable</b>
                    </td>
                    <td align="center">
                        <b>Fecha Inicio</b>
                    </td>
                    <td align="center">
                        <b>Culminación</b>
                    </td>
                </tr>
                <logic:iterate id="a_c" name="AccionCorrectiva">
                    <tr>
                        <td style="vertical-align: middle">
                            <html:link action="linkaccion.do?registro_nc=${a_c.registro_nc}&accion=${a_c.accion}">
                                <bean:write name="a_c" property="accion"/>
                            </html:link>
                        </td>
                        <td>
                            <bean:write name="a_c" property="prioridad"/>
                        </td>

                        <td>
                            <bean:write name="a_c" property="proceso"/>/<bean:write name="a_c" property="responsable"/>
                        </td>
                        <td>
                            <bean:write name="a_c" format = "dd-MM-yyyy" property="fechainicio"/>
                        </td>
                        <td>
                            <bean:write name="a_c" format = "dd-MM-yyyy" property="fechafinal"/>
                        </td>
                    </tr>
                </logic:iterate>
            </table>
        </div>
    </center>
</div>              

<div id="desplegable2">
    <p>Acciones terminadas:</p>
    <div id="noconformidades">
        <table border = "1">
            <tr bgcolor="#D3D3D3" style="font-size: 12px">
                <td align="center">
                    <b>Acción</b>
                </td>
                <td align="center">
                    <b>Prior</b>
                </td>
                <td align="center">
                    <b>Proceso/Responsable</b>
                </td>
                <td align="center">
                    <b>Fecha Inicio</b>
                </td>
                <td align="center">
                    <b>Culminación</b>
                </td>
            </tr>
            <logic:iterate id="a_t" name="AccionTerminada">
                <tr>
                    <td style="vertical-align: middle">
                        <html:link action="linkaccion.do?registro_nc=${a_t.registro_nc}&accion=${a_t.accion}">
                            <bean:write name="a_t" property="accion"/>
                        </html:link>
                    </td>
                    <td>
                        <bean:write name="a_t" property="prioridad"/>
                    </td>

                    <td>
                        <bean:write name="a_t" property="proceso"/>/<bean:write name="a_t" property="responsable"/>
                    </td>
                    <td>
                        <bean:write name="a_t" format = "dd-MM-yyyy" property="fechainicio"/>
                    </td>
                    <td>
                        <bean:write name="a_t" format = "dd-MM-yyyy" property="fechafinal"/>
                    </td>
                </tr>
            </logic:iterate>
        </table>
    </div>
</div>
            
<div id="desplegable3">

<table>
    <tr>
        <td>
            <p> Añadir nueva Acción:</p>
        </td>
        <td>
            <p style="font-size: 12px">
                <b>Registro:</b><bean:write name = "nc" property="registro_nc"/>
            </p>
        </td>
    </tr>
</table>
  
             
<html:form action="/CrearAccion">
    <fieldset>  
    <table style="margin-left: 10px">
        <tr>
            <td><p style="font-size: 14px"><b>Accion:</b></p></td>
            <td>
                <html:hidden property="registro_nc" name="nc"/>
            <html:text styleId="accion" property="accion" name = "accion" style="width:300px; color:gray; font-size: 14px" />
            <p id="accion_error" style="font-size: 12px; color: #B22222"></p>
            </td>
        </tr>
        <tr>
            <td><p style="font-size: 14px"><b>Tipo:</b></p></td>
            <td>
                <html:select style="font-size: 14px; height: 24px " property="tipo">
                <html:option value="Preventiva">Preventiva</html:option>
                <html:option value="Correctiva">Correctiva</html:option>
                </html:select>
            </td>
        </tr>
        <tr>
            <td><p style="font-size: 14px"><b>Prioridad:</b></p></td>
            <td>
                <html:select style="font-size: 14px; height: 24px " property="prioridad">
                <html:option value="1">1</html:option>
                <html:option value="2">2</html:option>
                <html:option value="3">3</html:option>
                <html:option value="4">4</html:option>
                <html:option value="5">5</html:option>
                <html:option value="6">6</html:option>
                <html:option value="7">7</html:option>
                <html:option value="8">8</html:option>
                <html:option value="9">9</html:option>
                <html:option value="10">10</html:option>
                </html:select>
            </td>
         </tr>
                <tr>
            <td><p style="font-size: 14px"><b>Proceso:</b></p></td>
            <td>
                <html:select style="font-size: 14px; height: 24px " property="proceso">
                <html:option value="Acciones Correctivas">Acciones Correctivas</html:option>
                <html:option value="Acciones Preventivas">Acciones Preventivas</html:option>
                <html:option value="Auditoría interna o externa">Auditoría interna o externa</html:option>
                <html:option value="Calibración">Calibración</html:option>
                <html:option value="Compras a proveedores en el extranjero">Compras a proveedores en el extranjero</html:option>
                <html:option value="Compras Nacionales">Compras Nacionales</html:option>
                <html:option value="Control de Documentos">Control de Documentos</html:option>
                <html:option value="Control de Registros">Control de Registros</html:option>
                <html:option value="Control de Trabajo No Conforme">Control de Trabajo No Conforme</html:option>
                <html:option value="Dirección">Dirección</html:option>
                <html:option value="Ensayo">Ensayo</html:option>
                <html:option value="Mejora">Mejora</html:option>
                <html:option value="Organización">Organización</html:option>
                <html:option value="Planificación">Planificación</html:option>
                <html:option value="Revisión del SGC">Revisión del SGC</html:option>
                <html:option value="Revisión pedidos, ofertas y contratos">Revisión pedidos, ofertas y contratos</html:option>
                <html:option value="Servicios al Cliente">Servicios al Cliente</html:option>
                <html:option value="Tratamiento de quejas">Tratamiento de quejas</html:option>
                </html:select>
            </td>
         </tr>

        <tr>
             <td><p style="font-size: 14px"><b>Responsable:</b></p></td>
            <td>
             <html:select style="font-size: 14px; height: 24px " property="responsable">
                <html:options collection="integrantes" labelProperty="nombre" property="usbid" />
             </html:select>
            </td>
        </tr>
        <tr>
            <td><p style="font-size: 14px"><b>Fecha Inicio:</b></p></td>
            <td>
                <html:text styleId="fechainicioinput" property="fechainicioinput" value="dd-mm-yyyy" style="width:300px; color:gray; font-size: 14px"/>
                <p id="fechainicioinput_error" style="font-size: 12px; color: #B22222"></p>
            </td>
        </tr>
        <tr>
            <td><p style="font-size: 14px"><b>Fecha Culminación:</b></p></td>
            <td>
                <html:text styleId="fechafinalinput" property="fechafinalinput" value="dd-mm-yyyy" style="width:300px; color:gray; font-size: 14px"/>
                <p id="fechafinalinput_error" style="font-size: 12px; color: #B22222"></p>
            </td>
        </tr>
        <tr>
            <td><p style="font-size: 14px"><b>Recursos:</b></p></td>
            <td>
                <html:textarea styleId="recursos" property="recursos" name="accion" style="height: 100px; width:300px; color: gray; font-size: 14px"/>
                <p id="recursos_counter"  style="margin-left: 290px; font-size: 10px; color: gray">199</p>
                <p id="recursos_error" style="font-size: 12px; color: #B22222"></p>
            </td>
        </tr>
    </table>
</fieldset>
<html:submit styleId="submit" value="Agregar"/>
</html:form>
</div>
            
            <head>
    
    <link rel="stylesheet" type="text/css" href="CSS/Style.css" />
    <script type="text/javascript" src="JS/jquery-1.2.6.min.js"></script>
    <script type="text/javascript" src="JS/Validacion-Accion.js"></script>
    <script type="text/javascript">
        $(document).ready(function() {
            $("#button").click(function() {
                $("#desplegable1").hide();
                $("#desplegable2").hide();
                $("#desplegable3").hide();
                $("#registro_nc_error").hide();
                $("#info").fadeIn("slow");
                $("#desplegable").fadeIn("slow").delay(1000);
                
                
            });
            
            $("#button1").click(function() {
                $("#desplegable").hide();
                $("#desplegable2").hide();
                $("#desplegable3").hide();
                $("#registro_nc_error").hide();
                $("#info").fadeIn("slow");
                $("#desplegable1").fadeIn("slow");
                
            });
            $("#button2").click(function() {
                $("#desplegable").hide();
                $("#desplegable1").hide();
                $("#desplegable3").hide();
                $("#registro_nc_error").hide();
                $("#info").fadeIn("slow");
                $("#desplegable2").fadeIn("slow");
            });
            $("#button3").click(function() {
                $("#desplegable").hide();
                $("#desplegable1").hide();
                $("#desplegable2").hide();
                $("#registro_nc_error").hide();
                $("#info").hide();
                $("#desplegable3").fadeIn("slow");
            });
            $("#desplegable").css({display: 'none'});
            $("#desplegable1").css({display: 'none'});
            $("#desplegable2").css({display: 'none'});
            $("#desplegable3").css({display: 'none'});
        });

    </script>  
</head>
