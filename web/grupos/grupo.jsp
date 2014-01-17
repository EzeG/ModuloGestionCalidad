<%@page contentType="text/html" %>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>

<div>
    <bean:write name="grupitos" property="error" filter="false"/>
</div>

<div id="menu_grupos">
    <table>
        <tr>
            <td style="vertical-align: middle; width: 135px">
                <button class = "button" id="button">
                    <html:img  src="images/grupos.png"  width="86px" height="63px" align="center"/>
                </button>
            </td>
            
            <td style="vertical-align: middle; width: 135px">
                <button class = "button" id="button1">
                    <html:img  src="images/mas-grupos.png"  width="86px" height="63px" align="center"/>
                </button>
            </td>
            
            <td style="vertical-align: middle; width: 135px">
                <button class="button" id="button2">
                    <html:img  src="images/grupos-inactivos.png"  width="86px" height="63px" align="center"/>
                </button>
            </td>
            
            
            <td>
                <html:link action="nuevo_grupo">
                    <button class = "button" >
                        <html:img  src="images/crear-grupos.png"  width="112px" height="63px" align="center"/>
                    </button>
                </html:link>
            </td>
        </tr>
    </table>
</div>

<div id="desplegable"> 
    <div style="vertical-align: middle; width: 560px; margin-bottom: -4px; margin-top: 10px">
        <p style="color:#336699; font-size: 14px; font-weight: bolder; size: 80px">Grupos de los cuales está encargado:</p>
    </div>
    <div id="noconformidades">  
        <table>
            <logic:iterate id="infoGrupo" name="listGruposEncargado">
                <tr id="lista">
                    <td>
                       <IMG  src="images/grupos-mini.png"  WIDTH=29 HEIGHT=21/>

                    </td>
                    <td style="width: 580px" >
                        <html:link action="/linkGrupos" paramId="verGrupo"
                                   paramName="infoGrupo" paramProperty="nombre_grupo"> 
                            <p style="color: #1c6ea0; font-size: 14px; margin-top: 3px">
                                <bean:write name="infoGrupo" property="nombre_grupo"/><br/>
                            </p>
                        </html:link>
                    </td>

                    <td style="width: 115px">
                        <html:form action="/agregarNC">
                            <html:hidden name="infoGrupo" property="nombre_grupo"/>
                            <html:submit styleId= "agregarp" value="+ No Conformidad"/>
                        </html:form>
                    </td>
                    <td style="width: 115px">
                        <html:form action="/agregarPersonas">
                            <html:hidden name="infoGrupo" property="nombre_grupo"/>
                            <html:submit styleId= "agregarp" value="+ Persona" style=""/>
                        </html:form>
                    </td>
                </tr>
            </logic:iterate>
        </table>
    </div>
    

    <div style="vertical-align: middle; width: 560px; margin-bottom: -4px; margin-top: 10px">
        <p style="color:#336699; font-size: 14px; font-weight: bolder; size: 80px">Grupos de los cuales es miembro:</p>
    </div>
    <div id="noconformidades">  
        <table>   
    <logic:iterate id="infoGrupo" name="listGrupos">
                <tr id="lista">
                    <td>
                       <IMG  src="images/grupos-mini.png"  WIDTH=29 HEIGHT=21/>

                    </td>
                    <td style="width: 580px">
                        <html:link action="/linkGrupos" paramId="verGrupo"
                                   paramName="infoGrupo" paramProperty="nombre_grupo"> 
                            <p style="color: #1c6ea0; font-size: 14px;">
                                <bean:write name="infoGrupo" property="nombre_grupo"/><br/>
                            </p>
                        </html:link>
                    </td>

                    <td style="width: 115px">
                        <html:form action="/agregarNC">
                            <html:hidden name="infoGrupo" property="nombre_grupo"/>
                            <html:submit styleId= "agregarp" value="+ No Conformidad"/>
                        </html:form>
                    </td>
                </tr>
    </logic:iterate>
    </table>
    </div>

    
    
    
    
</div>
<div id="desplegable1">
    <div style="vertical-align: middle; width: 560px; margin-bottom: -4px; margin-top: 10px">
        <p style="color:#336699; font-size: 14px; font-weight: bolder; size: 80px">Otros Grupos:</p>
    </div>

    <div id="grupos-lista">  
        <table>
            <logic:iterate id="infoGrupo" name="listGruposSinMi">
                <tr id="lista">
                    <td>
                       <IMG  src="images/grupos-mini.png"  WIDTH=29 HEIGHT=21/>

                    </td>
                    <td style="width: 580px">
                        <html:link action="/linkGrupos" paramId="verGrupo"
                                   paramName="infoGrupo" paramProperty="nombre_grupo"> 
                            <p style="color: #1c6ea0; font-size: 14px; margin-top: 3px">
                                <bean:write name="infoGrupo" property="nombre_grupo"/><br/>
                            </p>
                        </html:link>
                    </td>

                    <td style="width: 115px">
                        <html:form action="/agregarNC">
                            <html:hidden name="infoGrupo" property="nombre_grupo"/>
                            <html:submit styleId= "agregarp" value="+ No Conformidad"/>
                        </html:form>
                    </td>
                </tr>
            </logic:iterate>
        </table>
    </div>
</div>

<div id="desplegable2">     
    <div style="vertical-align: middle; width: 560px; margin-bottom: -4px; margin-top: 10px">
        <p style="color:#336699; font-size: 14px; font-weight: bolder; size: 80px">Grupos Inactivos:</p>
    </div>
    <div id="grupos-lista">  
        <table>
            <logic:iterate id="infoGrupo" name="listInactivos">
                <td>
                       <IMG  src="images/grupos-inactivos.png"  WIDTH=29 HEIGHT=21/>

                    </td>
                <tr id="lista">
                    <td style="width: 580px">
                        <html:link action="/linkGrupos" paramId="verGrupo"
                                   paramName="infoGrupo" paramProperty="nombre_grupo"> 
                            <p style="color: #1c6ea0; font-size: 14px;">
                                <bean:write name="infoGrupo" property="nombre_grupo"/><br/>
                            </p>
                        </html:link>
                    </td>

                    <td style="width: 115px">
                        <html:form action="/agregarNC">
                            <html:hidden name="infoGrupo" property="nombre_grupo"/>
                            <html:submit styleId= "agregarp" value="+ No Conformidad"/>
                        </html:form>
                    </td>
                </tr>
            </logic:iterate>
        </table>
    </div>
</div>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
    <link rel="stylesheet" type="text/css" href="CSS/Style.css" />
    <script type="text/javascript" src="JS/jquery-1.2.6.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function() {
            $("#button").click(function() {
                $("#desplegable1").hide();
                $("#desplegable2").hide();
                $("#desplegable").fadeIn("slow").delay(1000);
                
            });
            
            $("#button1").click(function() {
                $("#desplegable").hide();
                $("#desplegable2").hide();
                $("#desplegable1").fadeIn("slow");
            });
            $("#button2").click(function() {
                $("#desplegable").hide();
                $("#desplegable1").hide();
                $("#desplegable2").fadeIn("slow");
            });

            $("#desplegable1").css({display: 'none'});
            $("#desplegable2").css({display: 'none'});
        });

    </script>     
</head>