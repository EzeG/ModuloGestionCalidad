<%@page contentType="text/html" %>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>


<p style="margin-top: -10px; color:#336699; font-size: 1.154em; font-weight: bolder; size: 80px">
                    <%= request.getAttribute("nombreGrupo")%>

</p>
<table style="margin-bottom: -5px;">
    <td style="vertical-align: middle">
        <b>Miembro:</b>           
    </td>
    <td style="vertical-align: middle">
        <p style="margin-left: 97px"><b>E-mail:</b><p>
    </td>
    <td style="vertical-align: middle">
        <p style="margin-left: 93px"><b>USBID::</b><p>
     </td>
</table>
<div id="miembros">
    <table style="">
        <tr>
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
<div style="vertical-align: middle; width: 560px; margin-bottom: -4px; margin-top: 10px">
    <center><p style="color:#336699; font-size: 14px; font-weight: bolder; size: 80px">No Conformidades</p></center>
</div>
        <center>           
            <button id="button" style="width: 580px; height: 60px;" >
                <b style="color:#336699; font-size: 14px; font-weight: bolder; size: 80px">
                    Activas
                </b>
            </button>
        </center>
            <br/>
<div id="desplegable1">
<div id="noconformidades">

    <table border = "1">
            <tr bgcolor="#D3D3D3" style="font-size: 12px">
                <td align="center">
                    <b>Registro</b>
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
                            <bean:write name="ncG" property="situacion_nc" />
                        </td>
                    </tr>
             </logic:iterate>
    </table>
</div>
            </div>
            <br/>
                    <center>           
            <button id="button2" style="width: 580px; height: 60px;" >
                <b style="color:#336699; font-size: 14px; font-weight: bolder; size: 80px">
                    Terminadas
                </b>
            </button>
        </center>
            <br/>
                    
                    
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
    <link rel="stylesheet" type="text/css" href="CSS/Style.css" />
    <script type="text/javascript" src="JS/jquery-1.2.6.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function() {
            $("#button").click(function() {
                $("#desplegable1").slideToggle("slow");
            });
            $("#button2").click(function() {
                $("#desplegable2").slideToggle("slow");
            });
            $("#desplegable1").css({display: 'none'});
            $("#desplegable2").css({display: 'none'});
        });

    </script>     
</head>

