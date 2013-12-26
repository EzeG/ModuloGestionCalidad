<%@page contentType="text/html" %>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>


           <font color="#336699"><h1><bean:write property="titulo_publicacion" name="listo" scope="session" /></h1>
           </font>
           <bean:write property="contenido_publicacion" name="listo" scope="session"/>
