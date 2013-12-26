<%@page contentType="text/html" %>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>

<tiles:insert page="../cod_plantilla.jsp" flush="true">
    <tiles:put name="titulo" value="No Conformidad" />
    <tiles:put name="cuerpo" value="/grupos/datos_nc.jsp" />
</tiles:insert>
