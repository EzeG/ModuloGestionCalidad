<%@page contentType="text/html" %>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>

<div id="menu_grupos">
    <table>
        <tr>
            <td style="vertical-align: middle; width: 135px">
                <button class = "button" id="button" align="center">
                    <html:img  src="images/quejas.png"  width="69px" height="69px" align="center"/>
                </button>
            </td>
            
            <td style="vertical-align: middle; width: 135px">
                <button class = "button" id="button1" align="center">
                    <html:img  src="images/no_leidas.png"  width="69px" height="69px" align="center"/>
                </button>
            </td>
            
            <td style="vertical-align: middle; width: 135px" align="center">
                <button class="button" id="button2">
                    <html:img  src="images/leidas.png"  width="69px" height="69px" align="center"/>
                </button>
            </td>
            
            
           
        </tr>
    </table>
</div>
                
           
<div id="desplegable">
    <html:form action="/Marcar_Queja"> 
        <table>
            <tr>
                <td>
                    Marcar como: 
                </td>
                <td>
                    <select  name="accion">
                        <option value="Leida">Leida</option>
                        <option value="NoLeida">NoLeida</option>
                    </select>
                </td>
                <td>
                    <html:submit styleId="agregar" value="Aceptar"/>
                </td>
            </tr>
        </table>
    <div id="quejas">
    <table>
        <logic:iterate id="infoQueja" name="listQuejas">           
            <tr id="<bean:write name="infoQueja" property="leido"/>">
                <td style="width: 10px">
                    <input type="checkbox" name="registro_queja" value="<bean:write name="infoQueja" property="registro"/>">
                </td>
                <td style="width: 580px">
                    
                    <html:link action="/LinkQueja" paramId="verQueja" paramName="infoQueja" paramProperty="registro" > 
                        <p style="color: #1c6ea0; font-size: 12px; margin-top: 3px">
                            <bean:write name="infoQueja" property="registro"/>
                        </p>
                    </html:link>
                </td>
                
                <td style="width: 580px">
                        <p style="color: #1c6ea0; font-size: 12px; margin-top: 3px">
                            <bean:write name="infoQueja" property="contacto"/>
                        </p>
                </td>
                <td style="width: 580px">
                        <p style="color: #1c6ea0; font-size: 12px; margin-top: 3px">
                            <bean:write name="infoQueja" property="fecha"/>
                        </p>
                </td>
            </tr>  
        </logic:iterate>
     </table>
    </div>
    
</html:form>
</div>


<div id="desplegable1">
    <html:form action="/Marcar_Queja"> 
        <table>
            <tr>
                <td>
                    Marcar como: 
                </td>
                <td>
                    <select  name="accion">
                        <option value="Leida">Leida</option>
                        <option value="NoLeida">NoLeida</option>
                    </select>
                </td>
                <td>
                    <html:submit styleId="agregar" value="Aceptar"/>
                </td>
            </tr>
        </table>
    <div id="quejas">
    <table>
        <logic:iterate id="infoQueja" name="QuejasNoLeidas">           
            <tr id="<bean:write name="infoQueja" property="leido"/>">
                <td style="width: 10px">
                    <input type="checkbox" name="registro_queja" value="<bean:write name="infoQueja" property="registro"/>">
                </td>
                <td style="width: 580px">
                    
                    <html:link action="/LinkQueja" paramId="verQueja" paramName="infoQueja" paramProperty="registro" > 
                        <p style="color: #1c6ea0; font-size: 12px; margin-top: 3px">
                            <bean:write name="infoQueja" property="registro"/><br/>
                        </p>
                    </html:link>
                </td>
                
                <td style="width: 580px">
                        <p style="color: #1c6ea0; font-size: 12px; margin-top: 3px">
                            <bean:write name="infoQueja" property="contacto"/><br/>
                        </p>
                </td>
                <td style="width: 580px">
                        <p style="color: #1c6ea0; font-size: 12px; margin-top: 3px">
                            <bean:write name="infoQueja" property="fecha"/><br/>
                        </p>
                </td>
            </tr>  
        </logic:iterate>
     </table>
        </div>
    </html:form>
</div>

<div id="desplegable2">
    <html:form action="/Marcar_Queja"> 
        <table>
            <tr>
                <td>
                    Marcar como: 
                </td>
                <td>
                    <select  name="accion">
                        <option value="Leida">Leida</option>
                        <option value="NoLeida">NoLeida</option>
                    </select>
                </td>
                <td>
                    <html:submit styleId="agregar" value="Aceptar"/>
                </td>
            </tr>
        </table>
    <div id="quejas">
    <table>
        <logic:iterate id="infoQueja" name="QuejasLeidas">           
            <tr id="<bean:write name="infoQueja" property="leido"/>">
                <td style="width: 10px">
                    <input type="checkbox" name="registro_queja" value="<bean:write name="infoQueja" property="registro"/>">
                </td>
                <td style="width: 580px">
                    <html:link action="/LinkQueja" paramId="verQueja" paramName="infoQueja" paramProperty="registro" > 
                        <p style="color: #1c6ea0; font-size: 12px; margin-top: 3px">
                            <bean:write name="infoQueja" property="registro"/><br/>
                        </p>
                    </html:link>
                </td>
                
                <td style="width: 580px">
                        <p style="color: #1c6ea0; font-size: 12px; margin-top: 3px">
                            <bean:write name="infoQueja" property="contacto"/><br/>
                        </p>
                </td>
                <td style="width: 580px">
                        <p style="color: #1c6ea0; font-size: 12px; margin-top: 3px">
                            <bean:write name="infoQueja" property="fecha"/><br/>
                        </p>
                </td>
            </tr>  
        </logic:iterate>
     </table>
    </div>
    </html:form>
</div>


<head>
    <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
    <link rel="stylesheet" type="text/css" href="CSS/Style.css" />
    <script type="text/javascript" src="JS/jquery-1.2.6.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function() {
            $("#button").click(function() {
                $("#desplegable1").hide();
                $("#desplegable2").hide();
                $("#desplegable").fadeIn("slow").delay(1000);
                
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

            $("#desplegable1").css({display: 'none'});
            $("#desplegable2").css({display: 'none'});
        });

    </script> 
</head>