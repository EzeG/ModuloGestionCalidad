<%@page contentType="text/html" %>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>

<tiles:insert definition="plantilla">
    <tiles:put name="titulo" value="Administrar Publicacion" />
    <tiles:put name="cuerpo" value="/cartelera/adminCartelera.jsp" />
</tiles:insert>