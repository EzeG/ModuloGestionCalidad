<%@page import="domain.Accion"%>
<%@page contentType="text/html" %>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<head>
    <link rel="stylesheet" type="text/css" href="CSS/Style.css" /> 
    <script type="text/javascript" src="JS/sesion.js"></script>
</head>
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
                    <b>Responsable/Proceso Asociado</b>
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
                <bean:write name="Accionn" property="responsable"/>/<bean:write name="Accionn" property="proceso"/>
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
</body>