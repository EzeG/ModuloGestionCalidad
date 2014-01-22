<%@page contentType="text/html" %>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>

<%String error = (String) request.getAttribute("error"); %>

<body>
    <p><%=error%></p>
    <div id="login">
       <div id="titulo">
            <p>Introduzca USBID y Contraseña.</p>
       </div>
        <html:form action="/iniciar2">

            <table >
                <tbody id="etiqueta">
                    <tr>
                        <td>
                            <p>USBID:</p>
                            <html:text styleId="usbid" property="usbid" value=""/>

                        </td>
                    </tr>
                    <tr>
                        <td>
                            <p>Contraseña:</p>
                            <html:password styleId="password" property="password" value=""/>
                            
                        </td>
                    </tr>
                    <tr>
                        <td><html:submit  styleId="loginbt" value="Iniciar Sesión" /></td>
                    </tr>
                </tbody>
            </table>
             
        </html:form>
        <br/>
        <center><html:link action="quejatesinlogin"><p>Quéjate</p></html:link></center>
        
    </div>
</body>


<head>
    <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
    <link rel="stylesheet" type="text/css" href="CSS/Style.css" />
</head>



	

 
        
        

