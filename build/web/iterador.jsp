<%-- 
    Document   : iteratetetete
    Created on : 30/11/2013, 10:18:53 PM
    Author     : edgar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Iteracion</h1>
        <logic:iterate id="informacion" name="Lista" property="listPersonas">
            <bean:write name="informacion" property="name"/>
            <html:text property="info" />
        </logic:iterate>
    </body>
</html>