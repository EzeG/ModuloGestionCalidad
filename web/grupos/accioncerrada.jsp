<%-- 
    Document   : accioncerrada
    Created on : Jan 2, 2014, 2:43:45 PM
    Author     : ani
--%>
<%@page import = "domain.Accion" %>
<%@page contentType="text/html" %>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <%String mensaje = (String)request.getAttribute("mensaje");%>
    <body>
        <h1 style="color:#336699" align="center" ><bean:write name="Accion" property="mensaje"/></h1>
        
    </body>
</html>
