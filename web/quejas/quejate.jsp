<%@page contentType="text/html" %>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>
<%
String registro="registro";
String empresa="empresa";
String telefono="telefono";
String fax="fax";
String celular="celular";
String direccion="direccion";
String contacto="contacto";
String email="email";
String contrato="contrato";
String exposicion="exposicion";
String acciones="acciones";
%>
<div>
    <html:form action="/Crear_Queja">
        <fieldset>  
            <table style="margin-left: 10px">
                <tr>
                    <td><p style="font-size: 14px"><b>Registro:</b></p></td>
                    <td>
                    <html:text styleId="registro" property="registro" value="<%=registro%>" style="width:100px; color:gray; font-size: 14px" />
                    <p id="registro_error" style="font-size: 12px; color: #B22222"></p>
                    </td>
                </tr>
                <tr>
                    <td><p style="font-size: 14px"><b>Empresa:</b></p></td>
                    <td>
                    <html:text styleId="empresa" property="empresa" value="<%=empresa%>" style="width:300px; color:gray; font-size: 14px" />
                    <p id="registro_error" style="font-size: 12px; color: #B22222"></p>
                    </td>
                </tr>
                <tr>
                    <td><p style="font-size: 14px"><b>Telefono:</b></p></td>
                    <td>
                        <html:select style="font-size: 14px; height: 24px " property="codigo_telefono">
                        <html:option value=""> </html:option>  
                        <html:option value="0212">0212</html:option>
                        <html:option value="0234">0234</html:option>
                        <html:option value="0235">0235</html:option>
                        <html:option value="0238">0238</html:option>
                        <html:option value="0239">0239</html:option>
                        <html:option value="0240">0240</html:option>
                        <html:option value="0241">0241</html:option>
                        <html:option value="0242">0242</html:option>
                        <html:option value="0243">0243</html:option>
                        <html:option value="0244">0244</html:option>
                        <html:option value="0245">0245</html:option>
                        <html:option value="0246">0246</html:option>
                        <html:option value="0247">0247</html:option>
                        <html:option value="0248">0248</html:option>
                        <html:option value="0249">0249</html:option>  
                        <html:option value="0251">0251</html:option>
                        <html:option value="0252">0252</html:option>
                        <html:option value="0253">0253</html:option>
                        <html:option value="0254">0254</html:option>
                        <html:option value="0255">0255</html:option>
                        <html:option value="0256">0256</html:option>
                        <html:option value="0257">0257</html:option>
                        <html:option value="0258">0258</html:option> 
                        <html:option value="0259">0259</html:option>
                        <html:option value="0261">0261</html:option>
                        <html:option value="0262">0262</html:option>
                        <html:option value="0263">0263</html:option>
                        <html:option value="0264">0264</html:option>
                        <html:option value="0265">0265</html:option>
                        <html:option value="0266">0266</html:option>
                        <html:option value="0267">0267</html:option>
                        <html:option value="0268">0268</html:option> 
                        <html:option value="0269">0269</html:option> 
                        <html:option value="0271">0271</html:option> 
                        <html:option value="0272">0272</html:option>
                        <html:option value="0273">0273</html:option>
                        <html:option value="0274">0274</html:option>
                        <html:option value="0275">0275</html:option>
                        <html:option value="0276">0276</html:option>
                        <html:option value="0277">0277</html:option>
                        <html:option value="0278">0278</html:option>
                        <html:option value="0279">0279</html:option>    
                        <html:option value="0281">0281</html:option>
                        <html:option value="0282">0282</html:option>
                        <html:option value="0283">0283</html:option>
                        <html:option value="0284">0284</html:option>
                        <html:option value="0285">0285</html:option>
                        <html:option value="0286">0286</html:option>
                        <html:option value="0287">0287</html:option>
                        <html:option value="0288">0288</html:option>
                        <html:option value="0289">0289</html:option>
                        <html:option value="0291">0291</html:option>
                        <html:option value="0292">0292</html:option>
                        <html:option value="0293">0293</html:option>
                        <html:option value="0294">0294</html:option>
                        <html:option value="0295">0295</html:option>
                        </html:select> 
                        <html:text styleId="telefono" property="telefono" value="<%=telefono%>" style="width:100px; color:gray; font-size: 14px" />
                        <p id="telefono_error" style="font-size: 12px; color: #B22222"></p>
                    </td>
                </tr>
                <tr>
                    <td><p style="font-size: 14px"><b>Telefono:</b></p></td>
                    <td>
                        <html:select style="font-size: 14px; height: 24px " property="codigo_fax">
                        <html:option value=""> </html:option>  
                        <html:option value="0212">0212</html:option>
                        <html:option value="0234">0234</html:option>
                        <html:option value="0235">0235</html:option>
                        <html:option value="0238">0238</html:option>
                        <html:option value="0239">0239</html:option>
                        <html:option value="0240">0240</html:option>
                        <html:option value="0241">0241</html:option>
                        <html:option value="0242">0242</html:option>
                        <html:option value="0243">0243</html:option>
                        <html:option value="0244">0244</html:option>
                        <html:option value="0245">0245</html:option>
                        <html:option value="0246">0246</html:option>
                        <html:option value="0247">0247</html:option>
                        <html:option value="0248">0248</html:option>
                        <html:option value="0249">0249</html:option>  
                        <html:option value="0251">0251</html:option>
                        <html:option value="0252">0252</html:option>
                        <html:option value="0253">0253</html:option>
                        <html:option value="0254">0254</html:option>
                        <html:option value="0255">0255</html:option>
                        <html:option value="0256">0256</html:option>
                        <html:option value="0257">0257</html:option>
                        <html:option value="0258">0258</html:option> 
                        <html:option value="0259">0259</html:option>
                        <html:option value="0261">0261</html:option>
                        <html:option value="0262">0262</html:option>
                        <html:option value="0263">0263</html:option>
                        <html:option value="0264">0264</html:option>
                        <html:option value="0265">0265</html:option>
                        <html:option value="0266">0266</html:option>
                        <html:option value="0267">0267</html:option>
                        <html:option value="0268">0268</html:option> 
                        <html:option value="0269">0269</html:option> 
                        <html:option value="0271">0271</html:option> 
                        <html:option value="0272">0272</html:option>
                        <html:option value="0273">0273</html:option>
                        <html:option value="0274">0274</html:option>
                        <html:option value="0275">0275</html:option>
                        <html:option value="0276">0276</html:option>
                        <html:option value="0277">0277</html:option>
                        <html:option value="0278">0278</html:option>
                        <html:option value="0279">0279</html:option>    
                        <html:option value="0281">0281</html:option>
                        <html:option value="0282">0282</html:option>
                        <html:option value="0283">0283</html:option>
                        <html:option value="0284">0284</html:option>
                        <html:option value="0285">0285</html:option>
                        <html:option value="0286">0286</html:option>
                        <html:option value="0287">0287</html:option>
                        <html:option value="0288">0288</html:option>
                        <html:option value="0289">0289</html:option>
                        <html:option value="0291">0291</html:option>
                        <html:option value="0292">0292</html:option>
                        <html:option value="0293">0293</html:option>
                        <html:option value="0294">0294</html:option>
                        <html:option value="0295">0295</html:option>
                        </html:select> 
                        <html:text styleId="fax" property="fax" value="<%=fax%>" style="width:100px; color:gray; font-size: 14px" />
                        <p id="fax_error" style="font-size: 12px; color: #B22222"></p>
                    </td>
                </tr>
                <tr>
                    <td><p style="font-size: 14px"><b>Telefono:</b></p></td>
                    <td>
                        <html:select style="font-size: 14px; height: 24px " property="codigo_celular">
                        <html:option value=""> </html:option>  
                        <html:option value="0412">0412</html:option>
                        <html:option value="0424">0424</html:option>
                        <html:option value="0416">0416</html:option>
                        <html:option value="0426">0426</html:option>
                        </html:select> 
                        <html:text styleId="celular" property="celular" value="<%=celular%>" style="width:100px; color:gray; font-size: 14px" />
                        <p id="celular_error" style="font-size: 12px; color: #B22222"></p>
                    </td>
                </tr>
                <tr>
                    <td><p style="font-size: 14px"><b>Dirección:</b></p></td>
                    <td>
                        <html:textarea styleId="direccion" property="direccion" value="<%=direccion%>" style="height: 50px; width:300px; color: gray; font-size: 14px"/>
                        <p id="direccion_counter"  style="margin-left: 290px; font-size: 10px; color: gray">499</p>
                        <p id="direccion_error" style="font-size: 12px; color: #B22222"></p>
                    </td>
                </tr>
                <tr>
                    <td><p style="font-size: 14px"><b>Contacto:</b></p></td>
                    <td>
                    <html:text styleId="contacto" property="contacto" value="<%=contacto%>" style="width:300px; color:gray; font-size: 14px" />
                    <p id="contacto_error" style="font-size: 12px; color: #B22222"></p>
                    </td>
                </tr>
                <tr>
                    <td><p style="font-size: 14px"><b>Vínculo:</b></p></td>
                    <td>
                        <html:select style="font-size: 14px; height: 24px " property="vinculo">
                        <html:option value=""> </html:option>  
                        <html:option value="Docente">Docente</html:option>
                        <html:option value="Empleado">Empleado</html:option>
                        <html:option value="Estudiante">Estudiante</html:option>
                        <html:option value="Egresado">Egresado</html:option>
                        <html:option value="Cliente Externo">Cliente Externo</html:option>
                        </html:select> 
                        
                    </td>
                </tr>
                <tr>
                    <td><p style="font-size: 14px"><b>Email:</b></p></td>
                    <td>
                    <html:text styleId="email" property="email" value="<%=email%>" style="width:300px; color:gray; font-size: 14px" />
                    <p id="email_error" style="font-size: 12px; color: #B22222"></p>
                    </td>
                </tr>
                <tr>
                    <td><p style="font-size: 14px"><b>Nº Contrato:</b></p></td>
                    <td>
                    <html:text styleId="contrato" property="contrato" value="<%=contrato%>" style="width:100px; color:gray; font-size: 14px" />
                    <p id="contrato_error" style="font-size: 12px; color: #B22222"></p>
                    </td>
                </tr>
                <tr>
                    <td><p style="font-size: 14px"><b>Exposición:</b></p></td>
                    <td>
                        <html:textarea styleId="exposicion" property="exposicion" value="<%=exposicion%>" style="height: 100px; width:300px; color: gray; font-size: 14px"/>
                        <p id="exposicion_counter"  style="margin-left: 290px; font-size: 10px; color: gray">199</p>
                        <p id="exposicion_error" style="font-size: 12px; color: #B22222"></p>
                    </td>
                </tr>
                <tr>
                    <td><p style="font-size: 14px"><b>Acciones Sugeridas:</b></p></td>
                    <td>
                        <html:textarea styleId="acciones" property="acciones" value="<%=acciones%>" style="height: 100px; width:300px; color: gray; font-size: 14px"/>
                        <p id="acciones_counter"  style="margin-left: 290px; font-size: 10px; color: gray">199</p>
                        <p id="acciones_error" style="font-size: 12px; color: #B22222"></p>
                    </td>
                </tr>
            </table>
        </fieldset>
        <html:submit styleId="submit" value="Aceptar"/>
    </html:form>
    
</div>


<head>
    <link rel="stylesheet" type="text/css" href="CSS/Style.css" /> 
    <script type="text/javascript" src="JS/sesion.js"></script>
    <script type="text/javascript" src="JS/jquery-1.2.6.min.js"></script>

</head>