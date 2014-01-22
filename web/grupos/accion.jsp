<%@page import = "domain.Accion" %>
<%@page contentType="text/html" %>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>

<% 
    String visible = (String) request.getAttribute("visible");
    String vis = "visibility : "+visible;%>
    <html:hidden property="" styleId="encargado" value="<%=visible%>"/>
<body>
    
    <table>
        
        <tr>
            <p style="margin-top: -10px; color:#336699; font-size: 14px; font-weight: bolder; size: 80px">
                ACCIÓN
            </p>
        </tr>
        <tr>
            <td>
                <p style="font-size: 12px; margin-top: -10px">
                    <b>Descripción</b>
                </p>
            </td>
            
            <td>
                <p style="font-size: 12px; margin-top: -10px">
                    <b>Registro</b>
                </p>
            </td>
        </tr>
        <tr>
            <td>
                <bean:write name="Accionn" property="accion"/>
            </td>
            <td>
                <bean:write name="Accionn" property="registro_nc"/>
            </td>
        </tr>
        <tr>
            <td
                <p style="font-size: 12px; margin-top: -10px">
                    <b>Proceso/Responsable</b>
                </p>
            </td>
            <td>
                <p style="font-size: 12px; margin-top: -10px">
                    <b>Prioridad</b>
                </p>
            </td>
        </tr>
        <tr>
            <td>
                <bean:write name="Accionn" property="proceso"/>/<bean:write name="Accionn" property="responsable"/>
            </td>
            <td>
                <bean:write name="Accionn" property="prioridad"/>
            </td>
        </tr>
        <tr>
            <td>
                <p style="font-size: 12px; margin-top: -10px">
                    <b>Recursos</b>
                </p>
            </td>
            <td>
                <p style="font-size: 12px; margin-top: -10px">
                    <b>Fecha Inicio</b>
                </p>
            </td>
            <td>
                <p style="font-size: 12px; margin-top: -10px">
                    <b>Fecha Culminación</b>
                </p>
            </td>
        </tr>
        <tr>
            <td>
                <bean:write name="Accionn" property="recursos"/>
            </td>
            <td>
                <bean:write name="Accionn" format = "dd-MM-yyyy" property="fechainicio"/>
            </td>
            <td>
                <bean:write name="Accionn" format = "dd-MM-yyyy" property="fechafinal"/>
            </td>
        </tr>
    </table>
<html:form action="terminaraccion" >
    <html:hidden property="accion" name="Accionn" />
    <html:hidden property="registro_nc" name="Accionn" />
    <div id="desplegable1">
        <input type="button" value="Terminar Acción" id="agregarp" class="button1"/>
    </div>
    <div id="desplegable2">
        <p style="font-size: 14px "><b>¿Está seguro que desea terminar esta acción?</b></p>
    <html:submit style="" styleId="agregarp" value="Aceptar" />
     <input type="button" value="Cancelar" id="agregarp" class="button2"/> 
    </div>
</html:form>   
</body>



<head>
    <link rel="stylesheet" type="text/css" href="CSS/Style.css" /> 
    <script type="text/javascript" src="JS/sesion.js"></script>
    <script type="text/javascript" src="JS/jquery-1.2.6.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function() {
            $(".button1").focus(function() {
                $("#desplegable1").hide();
                $("#desplegable2").fadeIn("slow");
            });
            $(".button2").focus(function() {
                $("#desplegable2").hide();
                $("#desplegable1").fadeIn("slow");
            });
            $("#desplegable2").css({display: 'none'});
        });

    </script>
    
</head>