<%@page contentType="text/html" %>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>

<p style="margin-top: -10px; color:#336699; font-size: 1.154em; font-weight: bolder; size: 80px">
    <bean:write name="Grupo" property="nombre_grupo" />
</p>
<div id="menu">
        <img src="images/menu_grupo.png" style="margin-top: -30px; margin-left: -30px"/>
        <div style="margin-top: -90px; margin-left:30px">
            <button class="button" id="button1">
                <html:img  src="images/miembros.png"  width="64px" height="63px" align="center"/>
            </button>
        </div>
        <div style= "margin-top: -75px; margin-left: 250px">
            <button class = "button" id="button">
                <html:img  src="images/nc_activas.png"  width="73px" height="63px" align="center"/>
            </button>
        </div>

        <div style= "margin-top: -75.5px; margin-left: 380px">
            <button class = "button" id="button2">
                <html:img  src="images/nc_terminadas.png"  width="73px" height="63px" align="center"/>
            </button>
        </div>
        
</div>
           
<br/>                

<div id="desplegable1">
    <p>Miembros del Grupo:</p>
    <div id="grupos-lista">
        <table border = "1">
            <tr bgcolor="#D3D3D3" style="font-size: 12px">
                <td align="center">
                    <b>Miembro:</b>
                </td>
                <td align="center">
                    <b>E-mail:</b>
                </td>
                <td align="center">
                    <b>USBID:</b>
                </td>
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
</div>
<div id="desplegable">
    <p>No Conformidades Activas:</p>
    <div id="grupos-lista">
        <table border = "1">
            <tr bgcolor="#D3D3D3" style="font-size: 12px">
                <td align="center">
                    <b>Registro</b>
                </td>
                <td align="center">
                    <b>Codigo</b>
                </td>
                <td align="center">
                    <b>Situación</b>
                </td>
            </tr>
            <logic:iterate id="ncG" name="noConformidad">
                <tr>
                    <td style="vertical-align: middle">
                        <html:link action="linkNc" paramId="NoConformidad" paramName="ncG"
                                   paramProperty="registro_nc" >
                            <bean:write name="ncG" property="registro_nc" />          
                        </html:link>
                    </td>
                    <td style="vertical-align: middle">
                        <bean:write name="ncG" property="codigo_nc1" />          
                    </td>
                    <td style="vertical-align: middle">
                        <bean:write name="ncG" property="situacion_nc" />
                    </td>
                </tr>
            </logic:iterate>
        </table>
    </div>
</div>
<div id="desplegable2">
    <p>No Conformidades Terminadas:</p>
    <div id="grupos-lista">
        <table border = "1">
            <tr bgcolor="#D3D3D3" style="font-size: 12px">
                <td align="center">
                    <b>Registro</b>
                </td>
                <td align="center">
                    <b>Codigo</b>
                </td>
                <td align="center">
                    <b>Situación</b>
                </td>
            </tr>
            <logic:iterate id="ncG1" name="noConformidad2">
                <tr>
                    <td style="vertical-align: middle">
                        <html:link action="linkNc" paramId="NoConformidad" paramName="ncG1"
                                   paramProperty="registro_nc" >
                            <bean:write name="ncG1" property="registro_nc" />          
                        </html:link>
                    </td>
                    <td style="vertical-align: middle">
                        <bean:write name="ncG1" property="codigo_nc1" />          
                    </td>
                    <td style="vertical-align: middle">
                        <bean:write name="ncG1" property="situacion_nc" />
                    </td>
                </tr>
            </logic:iterate>
        </table>
        
    </div>
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
            $("#desplegable").css({display: 'none'});
            $("#desplegable2").css({display: 'none'});
        });

    </script>    
</head>

