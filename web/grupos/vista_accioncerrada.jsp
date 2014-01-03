<%-- 
    Document   : vista_accioncerrada
    Created on : Jan 2, 2014, 2:42:30 PM
    Author     : ani
--%>

<%@page contentType="text/html" %>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>

<tiles:insert page="../cod_plantilla.jsp" flush="true">
    <tiles:put name="titulo" value="Accion" />
    <tiles:put name="cuerpo" value="/grupos/accioncerrada.jsp" />
</tiles:insert>
