<%@page contentType="text/html" %>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>

<html:link action="nuevo_grupo"><p>Atras</p></html:link>

<html:form action="/CrearNoConformidad">
    <% String nombreG = (String) request.getAttribute("nombreG");%>
    <table style="margin-left: 10px">
        <tbody>
            <tr>
                <td colspan="4" style="vertical-align: middle">
                    <p style="font-size: 14px; color:#127ba5">
                        <bean:write name="grupito" property="nombre_grupo" filter="false"/>
                        / No Conformidad
                    </p>
                </td>
                <td></td>
                <td></td>
                <td></td>
                <td>
                    <p style="font-size: 12px">Registro:</p>
                    <html:text name = "nombre" property="registro_nc" value="" style="width:100px"/>
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <p style="font-size: 12px">Situacion: </p>
                    <html:textarea property="situacion_nc" value="" style="width:100px"/>
                </td>
                <td><html:radio  property="origen_nc" value="1"/><p>Queja</p></td>
                <td><html:radio property="origen_nc" value="2"/><p>Auditoria</p></td>
                <td><html:radio property="origen_nc" value="3"/><p>Revision del SGC</p></td>
            </tr>
            <tr>
            <tr>
                <td class="checkboxes"><html:radio property="origen_nc" value="4"/><p>Oportunidad de Mejora</p></td>
                <td class="checkboxes"><html:radio property="origen_nc" value="5"/><p>Trabajo No Conforme</p></td>
                <td class="checkboxes"><html:radio property="origen_nc" value="6"/><p>Otro</p></td>

            </tr>
            <tr>
                <td><html:radio property="documento_nc" value="ISO 9001"/><p>Norma ISO 9001</p></td>
                <td></td>
                <td><html:radio property="documento_nc" value="ISO/IEC 17025"/><p>Norma ISO/IEC 17025</p></td>
            </tr>
    </table>

    <table style="margin-left: 10px">
        <tbody>
            <tr>
                <td>
                    <p style="font-size: 12px">Clausula: </p>
                    <html:text property="clausula_nc" value=""/></td>
                <td></td>
            </tr>
            <tr>
                <td>
                    <p style="font-size: 12px">Requisito: </p>
                    <html:textarea property="requisito_nc" value=""/></td>
                <td></td>
            </tr>
            <tr>
                <td>
                    <p style="font-size: 12px">Declaracion: </p>
                    <html:textarea property="declaracion_nc" value=""/></td>
                <td></td>
            </tr>
            <tr>
                <td>
                    <p style="font-size: 12px">Codigo: </p>
                    <html:text property="codigo_nc" value=""/></td>
                <td></td>
            </tr>
            <tr>
                <td><html:submit value="Aceptar" /><html:hidden property="grupo_nc" value="<%= nombreG%>"/></td>
                <td></td>
            </tr>
        </tbody>
    </table>


</html:form>
