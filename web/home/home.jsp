<%@page contentType="text/html" %>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>



<body>
    <div id="cartelera" >
         <logic:iterate name="listMsg" id="listMsgid">
            <html:form action="/nueva_publicacion"  >
                <b>
                    <font size="5">
                            <html:link action="nueva_publicacion" paramName="listMsgid" paramProperty="titulo_publicacion" paramId="titulo_publicacion">
                                <bean:write name="listMsgid" property="titulo_publicacion" ignore="true" />
                            </html:link>
                    </font>
                </b>

                    <html:hidden name="listMsgid" property="titulo_publicacion" />
                    <html:hidden name="listMsgid" property="contenido_publicacion" />
                    <blockquote>
                        <p align="justify" style="margin-left: 20px; margin-right: 20px; margin-top: 20px">
                            <font size="2">
                                <bean:write  name="listMsgid" property="resumen"/>
                            </font>
                        </p>
                        <br/>
                    </blockquote>
                    <div style="margin-top: -12px; margin-left: 10px">
                         <html:submit styleId="leer" value="leer más" /><br /><br />
                    </div>
            </html:form>
        </logic:iterate>
    </div>
</body>



	

 
        
        

