/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package queja.action;

import DBMS.DBMS;
import domain.Grupo;
import domain.NoConformidad;
import domain.Queja;
import domain.Usuario;
import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

/**
 *
 * @author Gabriel
 */
public class CrearNoConformidad extends org.apache.struts.action.Action {

    /* forward name="success" path="" */
    private static final String SUCCESS = "success";
    private static final String FAILURE = "failure";

    /**
     * This is the action called from the Struts framework.
     *
     * @param mapping The ActionMapping used to select this instance.
     * @param form The optional ActionForm bean for this request.
     * @param request The HTTP Request we are processing.
     * @param response The HTTP Response we are processing.
     * @throws java.lang.Exception
     * @return
     */
    @Override
    public ActionForward execute(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        
        Grupo group= (Grupo) form;
        NoConformidad nc= new NoConformidad("UL04/"+group.getRegistro_nc(), group.getSituacion_nc(), group.getOrigen_nc(), 
                                           group.getClausula_nc1(), group.getRequisito_nc1(), group.getDeclaracion_nc1(), group.getCodigo_nc1(),
                                            group.getClausula_nc2(), group.getRequisito_nc2(), group.getDeclaracion_nc2(), group.getCodigo_nc1(), group.getCodigo_origen_nc());
        Queja queja = DBMS.getInstance().consultarQueja(group.getCodigo_origen_nc()); 
        ArrayList<Grupo> grupos = DBMS.getInstance().consultarGruposActivos();
        
        if(group.getExiste().equals("si"))
        {
            //se quiere agregar un grupo ya existente debe usarse el atributos nombre_grupo_aux
            if (DBMS.getInstance().agregaNoConformidad(nc)){
                boolean asocio = DBMS.getInstance().asociarNoConformidad(group.getNombre_grupo_aux(), "UL04/"+group.getRegistro_nc());
                if (asocio){
                    nc = DBMS.getInstance().buscarNc(nc.getRegistro_nc());
                    DBMS.getInstance().asociarQueja(queja.getRegistro(),nc.getRegistro_nc());
                    queja = DBMS.getInstance().consultarQueja(queja.getRegistro());
                    request.setAttribute("queja", queja);
                    nc.setCodigo_origen_nc("queja");
                    request.setAttribute("nc", nc);
                    request.setAttribute("grupos", grupos);
                    Grupo grupo = new Grupo();
                   grupo.setNombre_grupo("Nombre del Grupo");
                    grupo.setString_grupo("Encargado del Grupo");
                    grupo.setRegistro_nc("12345");
                   grupo.setSituacion_nc("Describa la no conformidad");
                  grupo.setClausula_nc1("Clausula");
                  grupo.setRequisito_nc1("Requisito");
              grupo.setDeclaracion_nc1("Declaración");
                grupo.setCodigo_nc1("Código");
                 grupo.setClausula_nc2("Clausula");
                    grupo.setRequisito_nc2("Requisito");
                     grupo.setDeclaracion_nc2("Declaración");
                    grupo.setCodigo_nc2("Código");
                      grupo.setError("");
                      grupo.setCodigo_origen_nc(queja.getRegistro());
                     request.setAttribute("grupito", grupo);
                    return mapping.findForward(SUCCESS);                    
                } else {

                    group.setError("Ocurrio un error asociando la no conformidad.");
                    nc= new NoConformidad();
                    request.setAttribute("queja", queja);
                    nc.setCodigo_origen_nc("queja");
                    request.setAttribute("nc", nc);
                    request.setAttribute("grupos", grupos);
                    request.setAttribute("grupito", group);
                    return mapping.findForward(FAILURE);
                }
            } else{
                    group.setError("Ya existe una nc con este registro.");
                    nc= new NoConformidad();
                    request.setAttribute("queja", queja);
                    nc.setCodigo_origen_nc("queja");
                    request.setAttribute("nc", nc);
                    request.setAttribute("grupos", grupos);
                    request.setAttribute("grupito", group);
                    return mapping.findForward(FAILURE);
            }
        }else{
            ArrayList<Usuario> users;
            ArrayList<NoConformidad> NC = new ArrayList<NoConformidad>();
            ArrayList<Usuario> cache = new ArrayList<Usuario>();
            boolean agrego;
            String nombre = group.getString_grupo();
            nombre = nombre.trim();
            users = DBMS.getInstance().consultarUsuarios(nombre);
            if (!users.isEmpty()) {
               cache.addAll(users);
            }
            users.clear();


            NC = DBMS.getInstance().consultarNC("UL04/"+group.getRegistro_nc());
            if (NC.isEmpty()){
                if (cache.size() > 0){
                    if (!cache.isEmpty()) {
                        group.setIntegrantes_grupo(cache);
                        agrego = DBMS.getInstance().agregarGrupo(group);

                        if (agrego) {
                            if (DBMS.getInstance().agregaNoConformidad(nc)){
                                boolean asocio = DBMS.getInstance().asociarNoConformidad(group.getNombre_grupo(), "UL04/"+group.getRegistro_nc());
                                if (asocio){
                                    nc = DBMS.getInstance().buscarNc(nc.getRegistro_nc());
                                    DBMS.getInstance().asociarQueja(queja.getRegistro(),nc.getRegistro_nc());
                                    queja = DBMS.getInstance().consultarQueja(queja.getRegistro());
                                    request.setAttribute("queja", queja);
                                    nc.setCodigo_origen_nc("queja");
                                    request.setAttribute("nc", nc);
                                    request.setAttribute("grupos", grupos);
                                    Grupo grupo = new Grupo();
                                    grupo.setNombre_grupo("Nombre del Grupo");
                                    grupo.setString_grupo("Encargado del Grupo");
                                    grupo.setRegistro_nc("12345");
                                    grupo.setSituacion_nc("Describa la no conformidad");
                                    grupo.setClausula_nc1("Clausula");
                                    grupo.setRequisito_nc1("Requisito");
                                    grupo.setDeclaracion_nc1("Declaración");
                                    grupo.setCodigo_nc1("Código");
                                    grupo.setClausula_nc2("Clausula");
                                    grupo.setRequisito_nc2("Requisito");
                                    grupo.setDeclaracion_nc2("Declaración");
                                    grupo.setCodigo_nc2("Código");
                                    grupo.setError("");
                                    grupo.setCodigo_origen_nc(queja.getRegistro());
                                    request.setAttribute("grupito", grupo);
                                    
                                    return mapping.findForward(SUCCESS);                    
                                } else {

                                    group.setError("Ocurrio un error asociando la no conformidad.");
                                    nc= new NoConformidad();
                                    request.setAttribute("queja", queja);
                                    
                                    nc.setCodigo_origen_nc("queja");
                                    request.setAttribute("nc", nc);
                                    request.setAttribute("grupos", grupos);
                                    request.setAttribute("origen", "queja");
                                    request.setAttribute("grupito", group);
                                    return mapping.findForward(FAILURE);
                                }
                            }
                        } else {
                            group.setError("El grupo ya existe.");
                            nc= new NoConformidad();
                            
                            nc.setCodigo_origen_nc("queja");
                            request.setAttribute("queja", queja);
                            request.setAttribute("nc", nc);
                            request.setAttribute("grupos", grupos);
                            request.setAttribute("origen", "queja");
                            request.setAttribute("grupito", group);
                            return mapping.findForward(FAILURE);
                        }
                    } else {
                        group.setError("Debe ingresar al menos un usuario en el grupo.");
                        nc= new NoConformidad();
                        
                                    nc.setCodigo_origen_nc("queja");
                        request.setAttribute("queja", queja);
                        request.setAttribute("nc", nc);
                        request.setAttribute("grupos", grupos);
                        request.setAttribute("origen", "queja");
                        request.setAttribute("grupito", group);
                        return mapping.findForward(FAILURE);
                    }

               }else{
                    group.setError("Persona no registrada.");
                    nc= new NoConformidad();
                    
                                    nc.setCodigo_origen_nc("queja");
                    request.setAttribute("queja", queja);
                    request.setAttribute("nc", nc);
                    request.setAttribute("grupos", grupos);
                    request.setAttribute("origen", "queja");
                    request.setAttribute("grupito", group);
                    return mapping.findForward(FAILURE);
                }
            } else {
                group.setError("Ya existe una no conformidad con este registro.");
                nc= new NoConformidad();
                
                                    nc.setCodigo_origen_nc("queja");
                request.setAttribute("queja", queja);
                request.setAttribute("nc", nc);
                request.setAttribute("grupos", grupos);
                request.setAttribute("origen", "queja");
                request.setAttribute("grupito", group);
                return mapping.findForward(FAILURE);
            }
            
        }
        return null;

    }

}
