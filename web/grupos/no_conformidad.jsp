<%@page contentType="text/html" %>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>

<html:link action="tab_grupos"><p><b>Atras</b></p></html:link>
<center><p id="registro_nc_error" style="font-size: 14px; color: #B22222"><b><bean:write name="noConformidad" property="error" filter="false"/></b></p></center>
<td style="vertical-align: middle">
    <p style="font-size: 16px; color:#127ba5">
        <bean:write name="noConformidad" property="grupo_nc" filter="false"/>/No conformidad 
    </p>
</td>



<html:form styleId="no_conformidad" action="/CrearNoConformidad">         
<p>No Conformidad: </p>
    <fieldset>
        <table style="margin-left: 10px">
            <tr>
                <td><p style="font-size: 14px"><b>Registro:</b></p></td>
                <td>
                    <html:text  styleClass="textbox" styleId="registro_nc" property="registro_nc" name="noConformidad" style="padding-left: 48px; width:100px; color: gray; font-size: 14px"/>
                    <html:img styleId="registro_nc_image" height="20px" width="20px" src="images/empty.png" style="margin-bottom: -4px; margin-left:5px"/>  
 
                   <span style= "margin-left: -180px; font-size: 14px" >UL04/</span> 
                    <p id="registro_nc_error" style="font-size: 12px; color: #B22222">
                </td>
            </tr>
            <tr>
                <td><p style="font-size: 14px"><b>Situaci�n:</b></p></td>
                <td>
                    <html:textarea styleClass="textbox" styleId="situacion_nc" property="situacion_nc" name="noConformidad" style="height: 100px; width:300px; color: gray; font-size: 14px"/>
                    <html:img styleId="situacion_nc_image" height="20px" width="20px" src="images/empty.png" style="margin-bottom: 90px; margin-left:5px"/>
                    <p id="situacion_nc_counter"  style="margin-left: 290px; font-size: 10px; color: gray">4999</p>
                    <p id="situacion_nc_error" style="font-size: 12px; color: #B22222"></p>
                </td>                   
            </tr> 
            <tr>
                <td><p style="font-size: 14px"><b>Origen:</b></p></td>
                <td>
                    <html:select styleClass="textbox" style="font-size: 14px; height: 24px " property="origen_nc" name ="noConformidad">
                        <html:option value="2">Auditoria</html:option>
                        <html:option value="3">Revision del SGC</html:option>
                        <html:option value="4">Oportunidad de Mejora</html:option>
                        <html:option value="5">Trabajo No Conforme</html:option>
                        <html:option value="6">Otro</html:option>
                    </html:select>
                    
                </td>
                
            </tr>
                            <tr>
                    <td>
                        <p style="font-size: 14px"><b>C�digo:</b></p>
                    </td>
                    <td>
                        <html:text styleClass="textbox" styleId="codigo_nc1" property="codigo_nc1" name="noConformidad" style="color: gray; font-size: 14px"/>
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
                            <html:text styleClass="boton1" styleId="clausula_nc1" property="clausula_nc1" name="noConformidad" style="color: gray; font-size: 14px"/>
                            <html:img styleId="clausula_nc1_image" height="20px" width="20px" src="images/empty.png" style="margin-bottom: -4px; margin-left:5px"/>
                            <p id="clausula_nc1_error" style="font-size: 12px; color: #B22222"></p>
                        </td>
                        <p id="codigo_nc1_error" style="font-size: 12px; color: #B22222"></p>
                    </tr>  
                    
            </table> 

            <div id="desplegable1"> 
                <table>
 
                    <tr>
                        <td><p style="font-size: 14px"><b>Requisito:</b></p></td>
                        <td>
                            <html:textarea styleId="requisito_nc1" property="requisito_nc1" name="noConformidad" style="height: 100px; width:250px; color: gray; font-size: 14px"/>
                            <html:img styleId="requisito_nc1_image" height="20px" width="20px" src="images/empty.png" style="margin-bottom: 90px; margin-left:5px"/>
                            <p id="requisito_nc1_counter"  style="margin-left: 220px; font-size: 10px; color: gray">4999</p>
                            <p id="requisito_nc1_error" style="font-size: 12px; color: #B22222"></p>
                        </td>
                    </tr>
                    <tr>
                        <td><p style="font-size: 14px"><b>Declaraci�n:</b></p></td>
                        <td>
                            <html:textarea  styleId="declaracion_nc1" property="declaracion_nc1" name="noConformidad" style="height: 100px; width:250px; color: gray; font-size: 14px"/>
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
                            <html:text styleClass="boton2" styleId="clausula_nc2" property="clausula_nc2" name="noConformidad" style="color: gray; font-size: 14px"/>
                            <html:img styleId="clausula_nc2_image" height="20px" width="20px" src="images/empty.png" style="margin-bottom: -4px; margin-left:5px"/>
                            <p id="clausula_nc2_error" style="font-size: 12px; color: #B22222"></p>
                        </td>
                    </tr>   
            </table>
            <div id="desplegable2"> 
                <table>
                   
                    <tr>
                        <td><p style="font-size: 14px"><b>Requisito:</b></p></td>
                        <td>
                            <html:textarea styleId="requisito_nc2" property="requisito_nc2" name="noConformidad" style="height: 100px; width:250px; color: gray; font-size: 14px"/>
                            <html:img styleId="requisito_nc2_image" height="20px" width="20px" src="images/empty.png" style="margin-bottom: 90px; margin-left:5px"/>
                            <p id="requisito_nc2_counter"  style="margin-left: 220px; font-size: 10px; color: gray">4999</p>
                            <p id="requisito_nc2_error" style="font-size: 12px; color: #B22222"></p>
                        </td>
                    </tr>
                    <tr>
                        <td><p style="font-size: 14px"><b>Declaraci�n:</b></p></td>
                        <td>
                            <html:textarea  styleId="declaracion_nc2" property="declaracion_nc2" name="noConformidad" style="height: 100px; width:250px; color: gray; font-size: 14px"/>
                            <html:img styleId="declaracion_nc2_image" height="20px" width="20px" src="images/empty.png" style="margin-bottom: 90px; margin-left:5px"/>
                            <p id="declaracion_nc2_counter"  style="margin-left: 220px; font-size: 10px; color: gray">4999</p>
                            <p id="declaracion_nc2_error" style="font-size: 12px; color: #B22222"></p>
                        </td>
                    </tr>   
                </table> 
            </div>
        </fieldset>
    </fieldset>
    <html:submit styleId="submit" value="Aceptar" />
    <html:hidden property="grupo_nc" name="noConformidad"/>
</html:form>


<head>
    <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
    <script type="text/javascript" src="JS/Validacion-No_conformidades.js"></script>
    <link rel="stylesheet" type="text/css" href="CSS/Style.css" />
    <script type="text/javascript" src="JS/jquery-1.2.6.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function() {
            $(".boton1").focus(function() {
                $("#desplegable1").slideDown("slow");
                $("#desplegable2").slideUp("slow");
            });
            $(".textbox").focus(function() {
                $("#desplegable1").slideUp("slow");
                $("#desplegable2").slideUp("slow");
            });
            $(".boton2").focus(function() {
                $("#desplegable2").slideDown("slow");
                $("#desplegable1").slideUp("slow");
            });
            $("#desplegable1").css({display: 'none'});
            $("#desplegable2").css({display: 'none'});
        });

    </script>

</head>
