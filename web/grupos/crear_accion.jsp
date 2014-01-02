<%@page import="domain.NoConformidad"%>
<%@page contentType="text/html" %>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>

<%
String registro_nc= (String) request.getAttribute("registro_nc");
String accion= (String) request.getAttribute("accion");
String proceso= (String) request.getAttribute("proceso");
String responsable= (String) request.getAttribute("responsable");
String recursos= (String) request.getAttribute("recursos");
String error= (String) request.getAttribute("error");%>
<html:link action="tab_grupos"><p>Atras</p></html:link>
<p align="center" id="registro_nc_error" style="font-size: 14px; color: #B22222"><b><%=error%></b></p>
<table>
    <tr>
        <td>
            <p style="margin-top: -10px; color:#336699; font-size: 14px; font-weight: bolder; size: 80px">
                No Conformidad
            </p>
        </td>
        <td>
            <p style="font-size: 12px; margin-top: -10px">
                <b>Registro:</b><%=registro_nc%>
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
                <html:hidden property="registro_nc" value="<%=registro_nc%>"/>
            <html:text styleId="accion" property="accion" value="<%=accion%>" style="width:300px; color:gray; font-size: 14px" />
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
                <html:text styleId="proceso" property="proceso" value="<%=proceso%>" style="width:300px; color:gray; font-size: 14px" />
                <p id="proceso_error" style="font-size: 12px; color: #B22222"></p>
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
                <html:textarea styleId="recursos" property="recursos" value="<%=recursos%>" style="height: 100px; width:300px; color: gray; font-size: 14px"/>
                <p id="recursos_counter"  style="margin-left: 290px; font-size: 10px; color: gray">199</p>
                <p id="recursos_error" style="font-size: 12px; color: #B22222"></p>
            </td>
        </tr>
    </table>
</fieldset>
<html:submit styleId="submit" value="Agregar"/>
</html:form>


<head>
    <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
        <script type="text/javascript" src="JS/Validacion-Accion.js"></script>
        <link rel="stylesheet" type="text/css" href="CSS/Style.css" />       
</head>