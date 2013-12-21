<%@page contentType="text/html" %>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>

<logic:iterate name="listMsg" id="listMsgid">
    <html:form action="/nueva_publicacion"  >
        <b><font size="5"><html:link action="nueva_publicacion" paramName="listMsgid" paramProperty="titulo_publicacion" paramId="titulo_publicacion"><bean:write name="listMsgid" property="titulo_publicacion" ignore="true" /></html:link></font><br /><br /></b>
        <html:hidden name="listMsgid" property="titulo_publicacion" />
        <blockquote>
        <font size="2"><bean:write name="listMsgid" property="contenido_publicacion" ignore="true" /></font><br /><br />
        </blockquote>
        <div style="margin: -12px 0 0 0px">
            <html:submit styleId="leer" value="leer mas" /><br /><br />
        </div>
    </html:form>
</logic:iterate>
        
        

