<%@page import="domain.NoConformidad"%>
<%@page contentType="text/html" %>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<body>
<div id="cartelera">
    <center>
        <b style = "color: #1c6ea0;">
                    <font size="5">
                    Acción
                    <br/>
                    </font>
                </b>

                <%= request.getAttribute("descripcion")%>
                <br/>
                <br/>

                <b style = "color: #1c6ea0;">
                    <font size="5">
                   Registro Asociado
                   </font>
                   <br/>
                </b>
                <%= request.getAttribute("registroNC")%>
                <br/>
                <br/>
               <b style = "color: #1c6ea0;">
                    <font size="5">
                   Responsable
                   </font>
                   <br/>
                </b>
                <%= request.getAttribute("responsable")%>
                <br/>
                <br/>
                <b style = "color: #1c6ea0;">
                    <font size="5">
                   Prioridad
                   </font>
                   <br/>
                </b>
                <%= request.getAttribute("prioridad")%>
                <br/>
                <br/>
                <b style = "color: #1c6ea0;">
                    <font size="5">
                   Proceso Asociado
                   </font>
                   <br/>
                </b>
                <%= request.getAttribute("proceso")%>
                <br/>
                <br/>
                <b style = "color: #1c6ea0;">
                    <font size="5">
                   Recursos
                   </font>
                   <br/>
                </b>
                <%= request.getAttribute("recursos")%>
                <br/>
                <br/>
    </center>      
</div> 
</body>