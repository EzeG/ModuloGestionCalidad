<%@page contentType="text/html" %>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>

<html:form action="/crear_grupo">

    <table style="margin-left: 10px">
        <tbody>
            <tr>
                <td><html:text property="tema_grupo" value="Nombre" style="width:500px"/></td>
            </tr>
            <tr>
                <td><html:textarea property="nc_grupo" value="Descripcion" style="width:495px"/></td>
            </tr>
            <tr>
                <td><html:select property="personas_grupo" value="Integrantes" multiple="true" style="width:511px"/></td>
            </tr>
            <tr>
                <td><html:textarea property="causas_grupo" value="Causas Probables" style="width:495px"/></td>
            </tr>
            <tr>
                <td><html:textarea property="acciones_grupo" value="Acciones" style="width:495px"/></td>
            </tr>
            <tr>
                <td><html:textarea property="plan_grupo" value="Plan de Trabajo" style="width:495px"/></td>
            </tr>
            <tr>
                <td><html:submit value="Crear Grupo" /></td>
            </tr>
        </tbody>
    </table>


</html:form>
