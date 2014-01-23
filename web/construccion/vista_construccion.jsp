<%@page contentType="text/html" %>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>

<tiles:insert definition="plantilla">
    <tiles:put name="titulo" value="Pagina en Construccion." />
    <tiles:put name="cuerpo" value="/construccion/construccion.jsp" />
</tiles:insert>
