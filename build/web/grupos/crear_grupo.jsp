<%@page contentType="text/html" %>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>

<%
    String nc;
    try{
        nc = (String) request.getAttribute("nc");
    } catch(Exception e){
        nc = "";
    }
%>


<html:link action="tab_grupos"><p>Atras</p></html:link>

<html:form action="/CrearGrupo">

    <table style="margin-left: 10px">
        <tbody>
            <tr>
                <td>
                    <html:text property="nombre_grupo" value="Nombre" style="width:500px"/>
                </td>
            </tr>
            <tr>
                <td>
                    <html:link action="no_conformidad"><p>No conformidad</p></html:link>
                </td>
            </tr>
            <tr>
                <td>
                    <html:text property="string_grupo" value="Integrantes" style="width:511px"/>
                </td>
            </tr>
            <tr>
                <td>
                    <html:submit value="Crear Grupo" />
                </td>
            </tr>
            <tr>
                <td>
                    <html:hidden property="noConformidad" value="<%= nc %>" />
                    <%
                        if(nc != null){
                    %>
                    <p >No Conformidad asociada:</p><%= nc%> 
                   <%
                        }
                    %>
                </td>
            </tr>
        </tbody>
    </table>

</html:form>
