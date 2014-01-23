<%-- 
    Document   : panel_izq
    Created on : 23/01/2014, 08:48:35 AM
    Author     : edgar
--%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>

<div id="panel_izq">
    <ul>
        <li><html:link action="agenda"><p>Agenda</p></html:link></li>
        <li><html:link action="cartelera"><p>Cartelera</p></html:link></li>
        <li><html:link action="Quejas"><p>Quejas</p></html:link></li>
        <li><html:link action="procesos"><p>Procesos</p></html:link></li>
        <li><html:link action="estadisticas"><p>Estadisticas</p></html:link></li>
        <li><html:link action="tab_grupos"><p>Grupos</p></html:link></li>
        <li><html:link action="Quejate"><p>Quéjate</p></html:link></li>
        <li id="cerrar"><html:link action="login"><p>Cerrar Sesión</p></html:link></li>

    </ul>
</div>