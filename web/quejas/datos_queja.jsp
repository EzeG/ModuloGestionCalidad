<%@page import="domain.Queja"%>
<%@page contentType="text/html" %>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>

<%String visual1;
  String visual2;
  Queja  queja = (Queja) request.getAttribute("queja");
  String registro_nc= queja.getRegistro_nc();
  if(registro_nc.equals("")){
      visual1="visibility: visible";
      visual2="visibility: hidden";
  }else{
      visual2="visibility: visible";
      visual1="visibility: hidden";
  }
%>


<p align="center" id="registro_nc_error" style="font-size: 14px; color: #B22222; margin-top: -20px"><b><bean:write name="grupito" property="error"/></b></p>
<div id="menu_grupos">
    <table>
        <tr>
            <td style="vertical-align: middle; width: 135px">
                <button class = "button" id="button">
                    <html:img  src="images/queja.png"  width="69px" height="69px" align="center"/>
                </button>
            </td>
            
            <td style="vertical-align: middle; width: 135px">
                <button class = "button" id="button1" style="<%=visual1%>">
                    <html:img  src="images/crear_nc.png"  width="128px" height="69px" align="center"/>
                </button>
            </td>
            
            <td style="vertical-align: middle; width: 135px">
                <button class="button" id="button2" style="<%=visual2%>">
                    <html:img  src="images/nc_asociada.png"  width="71px" height="69px" align="center"/>
                </button>
            </td>
            
            <td style="vertical-align: middle; width: 135px">
                <button class="button" id="button3">
                    <html:img  src="images/generar_pdf.png"  width="61px" height="73px" align="center"/>
                </button>
            </td>
        </tr>
    </table>
</div>


<div id="desplegable">
    <table>
        <tr>
            <td style="width: 300px">
                <b>Registro:</b> <bean:write name="queja" property="registro"/>
            </td>
            <td>
                <b>Fecha:</b> <bean:write name="queja" property="fecha"/>
            </td>
        </tr>
        <tr>
            <td>
                <b>Empresa:</b><br/> <bean:write name="queja" property="empresa"/>
            </td>
            
            <td>
                <b>Contacto:</b><br/> <bean:write name="queja" property="contacto"/>
            </td>
        </tr>
        <tr>
            <td>
                <b>Vinculo con la universidad:</b> <bean:write name="queja" property="vinculo"/>
            </td>
            <td>
                <b>Email:</b> <bean:write name="queja" property="email"/>
            </td>
        </tr>
        <tr>
            <td>
                <b>Telefono Local:</b> <bean:write name="queja" property="telefono"/>
            </td>
        </tr>
        <tr>
            <td>
                <b>Fax:</b> <bean:write name="queja" property="fax"/>
            </td>
        </tr>
        <tr>
            <td>
                <b>Telefono Celular:</b> <bean:write name="queja" property="celular"/>
            </td>
        </tr>
        <tr>
            <td>
                <b>Dirección:</b> <br/><bean:write name="queja" property="direccion"/>
            </td>
        </tr>
        <tr>
            <td>
                <b>Contrato:</b> <bean:write name="queja" property="contrato"/>
            </td>
        </tr>
    </table>
    <table>
        <tr>
            <td>
              <b>Exposición:</b> <bean:write name="queja" property="exposicion"/>  
            </td>
        </tr>
        <tr>
            <td>
                <b>Acciones Sugeridas:</b> <bean:write name="queja" property="acciones"/>
            </td>
        </tr>
    </table>
   
</div> 
            
<div id="desplegable1">  
    
    <html:form action="/Crear_NC_Queja">
    <fieldset>
        
        <html:radio styleId="button5" property="existe" value="no"/> <b>Deseo crear un grupo y asignarle la nueva no conformidad</b>
        <br/>
        <html:radio styleId="button6" property="existe" value="si"/> <b>Deseo agregar la nueva no conformidad a un grupo ya existente</b>
        <div id= "desplegable5">
            <table style="margin-left: 10px">
                <tbody>
                    <tr>
                        <td>
                            <p style="font-size: 14px"><b>Nombre: </b> </p>
                            <html:text styleClass="textbox" styleId="nombre_grupo"   property="nombre_grupo" name="grupito" alt="Nombre Grupo" style="width:500px; color:gray; font-size: 14px"/>
                            <html:img styleId="nombre_grupo_image" height="20px" width="20px" src="images/empty.png" style="margin-bottom: -4px; margin-left:5px"/>
                            <p id="nombre_grupo_error" style="font-size: 12px; color: #B22222"></p>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <p style="font-size: 14px"><b>Encargado:</b> </p>
                            <html:text styleClass="textbox" styleId="string_grupo" property="string_grupo" name="grupito" alt="Integrantes" style="width:500px; color:gray; font-size: 14px"/>
                            <html:img styleId="string_grupo_image" height="20px" width="20px" src="images/empty.png" style="margin-bottom: -4px; margin-left:5px"/>
                            <p id="string_grupo_error" style="font-size: 12px; color: #B22222"></p>
                        </td>
                    </tr>
                    <tr>
                    </tr>
                </tbody>
            </table>
        </div>
        <div id= "desplegable6">
            <table style="margin-left: 10px">
                <tbody>
                    <tr>
                        <td>
                            <p style="font-size: 14px"><b>Nombre: </b> </p>
                            <html:select style="font-size: 14px; height: 24px " property="nombre_grupo_aux" name = "grupito">
                                <html:options collection="grupos" labelProperty="nombre_grupo" property="nombre_grupo" />
                            </html:select>
                        </td>
                    </tr>

                </tbody>
            </table>
        </div>
                        
    </fieldset>             
<p>No Conformidad: </p>
    <fieldset>
        <table style="margin-left: 10px">
            <tr>
                <td><p style="font-size: 14px"><b>Registro:</b></p></td>
                <td>
                    <html:text  styleClass="textbox" styleId="registro_nc" property="registro_nc" name="grupito" style="padding-left: 48px; width:100px; color: gray; font-size: 14px"/>
                    <html:img styleId="registro_nc_image" height="20px" width="20px" src="images/empty.png" style="margin-bottom: -4px; margin-left:5px"/>  
 
                   <span style= "margin-left: -180px; font-size: 14px" >UL04/</span> 
                    <p id="registro_nc_error" style="font-size: 12px; color: #B22222">
                </td>
            </tr>
            <tr>
                <td><p style="font-size: 14px"><b>Situación:</b></p></td>
                <td>
                    <html:textarea styleClass="textbox" styleId="situacion_nc" property="situacion_nc" name="grupito" style="height: 100px; width:300px; color: gray; font-size: 14px"/>
                    <html:img styleId="situacion_nc_image" height="20px" width="20px" src="images/empty.png" style="margin-bottom: 90px; margin-left:5px"/>
                    <p id="situacion_nc_counter"  style="margin-left: 290px; font-size: 10px; color: gray">4999</p>
                    <p id="situacion_nc_error" style="font-size: 12px; color: #B22222"></p>
                </td>                   
            </tr> 
            <tr>
                <td><p style="font-size: 14px"><b>Origen:</b></p></td>
                <td>
                    <html:select styleClass="textbox" style="font-size: 14px; height: 24px " property="origen_nc">
                        <html:option value="1">Queja</html:option>
                    </html:select>
                    <bean:write name="queja" property="registro"/>
                    <html:hidden property="codigo_origen_nc" name="grupito"/>
                </td>
                
            </tr>
                            <tr>
                    <td>
                        <p style="font-size: 14px"><b>Código:</b></p>
                    </td>
                    <td>
                        <html:text styleClass="textbox" styleId="codigo_nc1" property="codigo_nc1" name="grupito" style="color: gray; font-size: 14px"/>
                        <html:img styleId="codigo_nc1_image" height="20px" width="20px" src="images/empty.png" style="margin-bottom: -4px; margin-left:5px"/>
                        <p id="codigo_nc1_error" style="font-size: 12px; color: #B22222"></p>
                    </td>
            
                </tr>
        </table>
        <p style="font-size: 14px; color:gray" align="center"><b>Norma ISO 9001: </b></p>
        <fieldset style="margin-left:20px; margin-right: 20px">    
            <table>
             <tr>
                        <td><p style="font-size: 14px"><b>Clausula:</b></p></td>
                        <td>
                            <html:text styleClass="boton3" styleId="clausula_nc1" property="clausula_nc1" name="grupito" style="color: gray; font-size: 14px"/>
                            <html:img styleId="clausula_nc1_image" height="20px" width="20px" src="images/empty.png" style="margin-bottom: -4px; margin-left:5px"/>
                            <p id="clausula_nc1_error" style="font-size: 12px; color: #B22222"></p>
                        </td>
                        <p id="codigo_nc1_error" style="font-size: 12px; color: #B22222"></p>
                    </tr>  
                    
            </table> 

            <div id="desplegable3"> 
                <table>
 
                    <tr>
                        <td><p style="font-size: 14px"><b>Requisito:</b></p></td>
                        <td>
                            <html:textarea styleId="requisito_nc1" property="requisito_nc1" name="grupito" style="height: 100px; width:250px; color: gray; font-size: 14px"/>
                            <html:img styleId="requisito_nc1_image" height="20px" width="20px" src="images/empty.png" style="margin-bottom: 90px; margin-left:5px"/>
                            <p id="requisito_nc1_counter"  style="margin-left: 220px; font-size: 10px; color: gray">4999</p>
                            <p id="requisito_nc1_error" style="font-size: 12px; color: #B22222"></p>
                        </td>
                    </tr>
                    <tr>
                        <td><p style="font-size: 14px"><b>Declaración:</b></p></td>
                        <td>
                            <html:textarea  styleId="declaracion_nc1" property="declaracion_nc1" name="grupito" style="height: 100px; width:250px; color: gray; font-size: 14px"/>
                            <html:img styleId="declaracion_nc1_image" height="20px" width="20px" src="images/empty.png" style="margin-bottom: 90px; margin-left:5px"/>
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
                        <td><p style="font-size: 14px"><b>Clausula:</b></p></td>
                        <td>
                            <html:text styleClass="boton4" styleId="clausula_nc2" property="clausula_nc2" name="grupito" style="color: gray; font-size: 14px"/>
                            <html:img styleId="clausula_nc2_image" height="20px" width="20px" src="images/empty.png" style="margin-bottom: -4px; margin-left:5px"/>
                            <p id="clausula_nc2_error" style="font-size: 12px; color: #B22222"></p>
                        </td>
                    </tr>   
            </table>
            <div id="desplegable4"> 
                <table>
                   
                    <tr>
                        <td><p style="font-size: 14px"><b>Requisito:</b></p></td>
                        <td>
                            <html:textarea styleId="requisito_nc2" property="requisito_nc2" name="grupito" style="height: 100px; width:250px; color: gray; font-size: 14px"/>
                            <html:img styleId="requisito_nc2_image" height="20px" width="20px" src="images/empty.png" style="margin-bottom: 90px; margin-left:5px"/>
                            <p id="requisito_nc2_counter"  style="margin-left: 220px; font-size: 10px; color: gray">4999</p>
                            <p id="requisito_nc2_error" style="font-size: 12px; color: #B22222"></p>
                        </td>
                    </tr>
                    <tr>
                        <td><p style="font-size: 14px"><b>Declaración:</b></p></td>
                        <td>
                            <html:textarea  styleId="declaracion_nc2" property="declaracion_nc2" name="grupito" style="height: 100px; width:250px; color: gray; font-size: 14px"/>
                            <html:img styleId="declaracion_nc2_image" height="20px" width="20px" src="images/empty.png" style="margin-bottom: 90px; margin-left:5px"/>
                            <p id="declaracion_nc2_counter"  style="margin-left: 220px; font-size: 10px; color: gray">4999</p>
                            <p id="declaracion_nc2_error" style="font-size: 12px; color: #B22222"></p>
                        </td>
                    </tr>   
                </table> 
            </div>
        </fieldset>
    </fieldset>
        
        
        
        
        <html:hidden styleId="error_style"  property="error" name="grupito"/>
        <html:submit styleId="submit" value="Aceptar"/>
    </html:form>
    
</div>
            
            
<div id="desplegable2">    
    <table>
    <tr>
        <td align = "right">
            <p style="font-size: 12px; margin-top: -10px">
                <b>Registro:</b>
                    <html:link action="linkNc" paramId="NoConformidad" paramName="nc"
                            paramProperty="registro_nc" >
                            <bean:write name="nc" property="registro_nc"/>         
                    </html:link>
                
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
                    <bean:write name="nc" property="codigo_origen_nc"/>
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


<head>
    <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
    <link rel="stylesheet" type="text/css" href="CSS/Style.css" />
    <script type="text/javascript" src="JS/Validacion-Asociar_Queja.js"></script>
    <script type="text/javascript" src="JS/jquery-1.2.6.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function() {
            $("#button").click(function() {
                $("#desplegable1").hide();
                $("#desplegable2").hide();
                $("#desplegable").fadeIn("slow");
                
            });
            
            $("#button1").click(function() {
                $("#desplegable").hide();
                $("#desplegable2").hide();
                $("#desplegable1").fadeIn("slow");
            });
            $("#button2").click(function() {
                $("#desplegable").hide();
                $("#desplegable1").hide();
                $("#desplegable2").fadeIn("slow");
            });
            $("#button5").click(function() {
                $("#desplegable6").hide();
                $("#desplegable5").fadeIn("slow");
            });
            $("#button6").click(function() {
                $("#desplegable5").hide();
                $("#desplegable6").fadeIn("slow");
            });
            $(".textbox").focus(function() {
                $("#desplegable3").slideUp("slow");
                $("#desplegable4").slideUp("slow");
            });
            $(".boton3").click(function() {

                $("#desplegable4").slideUp("slow");                
                $("#desplegable3").slideDown("slow");
                
            });
            $(".boton4").click(function() {
                $("#desplegable3").slideUp("slow");                
                $("#desplegable4").slideDown("slow");
            });
            $("#desplegable5").css({display: 'none'});
            $("#desplegable6").css({display: 'none'});
            $("#desplegable1").css({display: 'none'});
            $("#desplegable2").css({display: 'none'});
            $("#desplegable3").css({display: 'none'});
            $("#desplegable4").css({display: 'none'});
        });

    </script>
</head>