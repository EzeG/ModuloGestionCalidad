<%@page contentType="text/html" %>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>

<tiles:insert page="../plantilla_login.jsp" flush="true" >
    <tiles:put name="titulo" value="Unidad de Laboratorios" />
    <tiles:put name="cuerpo" value="/home/login.jsp" />
</tiles:insert> 

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
    <link rel="stylesheet" type="text/css" href="CSS/Style.css" />
</head>

