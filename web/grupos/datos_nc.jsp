<%@page contentType="text/html" %>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>

<table>
    <tr>
        <td>
            <p style="margin-top: -10px; color:#336699; font-size: 1.154em; font-weight: bolder; size: 80px">
                No Conformidad
            </p>
        </td>
        <td>
            <p style="font-size: 12px; margin-top: -10px">
                <b>Registro:</b>
                <bean:write name="nc" property="registro_nc"/>
            </p>
        </td>
    </tr>
</table>
<div id="noconformidades">
    <table>
        <tr>
            <td>
                <p style="font-size: 12px">
                    <b>Situacion:</b>
                    <bean:write name="nc" property="situacion_nc"/>
                </p>
            </td>
            <td>
                <p style="font-size: 12px">
                    <b>Origen:</b>
                    <%= request.getAttribute("origen") %>
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
                <p style="font-size: 12px">
                    <b>Documento:</b>
                    <bean:write name="nc" property="documento_nc"/>
                </p>
            </td>
            <td>
                <p style="font-size: 12px">
                    <b>Clausula:</b>
                    <bean:write name="nc" property="clausula_nc"/>
                </p>
            </td>
        </tr>
        <tr>
            <td>
                <p style="font-size: 12px">
                    <b>Requisito:</b>
                </p>
                <bean:write name="nc" property="requisito_nc"/>
            </td>
            <td>
                <p style="font-size: 12px">
                    <b>Declaracion de la No Conformidad:</b>
                </p>
                <bean:write name="nc" property="declaracion_nc"/>
            </td>
        </tr>
        <tr>
            <td>
                <p style="font-size: 12px">
                    <b>Codigo:</b>
                </p>
                <bean:write name="nc" property="codigo_nc"/>
            </td>
        </tr>
    </table>
</div>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
    <link rel="stylesheet" type="text/css" href="CSS/Style.css" />
</head>