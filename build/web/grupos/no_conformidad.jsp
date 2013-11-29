<%@page contentType="text/html" %>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>

<html:link action="nuevo_grupo"><p>Atras</p></html:link>


<html:form action="/CrearNoConformidad">

    <table style="margin-left: 10px">
        <tbody>
            <tr>
                <td colspan="3"><html:text property="registro_nc" value="Registro" style="width:100px"/></td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td colspan="3"><html:text property="situacion_nc" value="Situacion" style="width:100px"/></td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td><html:checkbox property="origen_nc" value="1"/><p>Queja</p></td>
                <td><html:checkbox property="origen_nc" value="2"/><p>Auditoria</p></td>
                <td><html:checkbox property="origen_nc" value="3"/><p>Revision del SGC</p></td>
            </tr>
            <tr>
                <td class="checkboxes"><html:checkbox property="origen_nc" value="4"/><p>Oportunidad de Mejora</p></td>
                <td class="checkboxes"><html:checkbox property="origen_nc" value="5"/><p>Trabajo No Conforme</p></td>
                <td class="checkboxes"><html:checkbox property="origen_nc" value="6"/><p>Otro</p></td>
            </tr>
            <tr>
                <td colspan="3"><html:hidden property="fecha_nc"/></td>
                <td></td>
                <td></td>
            </tr>
    </table>
                
    <table style="margin-left: 10px">
        <tbody>
            <tr>
                <td><html:checkbox property="documento_nc" value="ISO 9001"/><p>Norma ISO 9001</p></td>
                <td><html:checkbox property="documento_nc" value="ISO/IEC 17025"/><p>Norma ISO/IEC 17025</p></td>
            </tr>
            <tr>
                <td><html:text property="clausula_nc" value="clausula1" /></td>
                <td><html:text property="clausula_nc" value="clausula2" /></td>
            </tr>
            <tr>
                <td><html:textarea property="requisito_nc" value="Requisito" /></td>
                <td><html:textarea property="requisito_nc" value="Requisito" /></td>
            </tr>
            <tr>
                <td><html:textarea property="declaracion_nc" value="Declaracion de la No Conformidad"/></td>
                <td><html:textarea property="declaracion_nc" value="Declaracion de la No Conformidad"/></td>
            </tr>
            <tr>
                <td><html:text property="codigo_nc" value="Codigo NC"/></td>
                <td><html:text property="codigo_nc" value="Codigo NC"/></td>
            </tr>
            <tr>
                <td><html:submit value="Aceptar" /></td>
                <td></td>
            </tr>
        </tbody>
    </table>


</html:form>