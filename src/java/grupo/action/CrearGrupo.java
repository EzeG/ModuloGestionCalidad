package grupo.action;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import domain.Grupo;
import domain.NoConformidad;
import domain.Usuario;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import java.util.ArrayList;
import DBMS.DBMS;

/**
 *
 * @author edgar
 */
public class CrearGrupo extends org.apache.struts.action.Action {

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

        Grupo group = (Grupo) form;
        NoConformidad nc= new NoConformidad("UL04/"+group.getRegistro_nc(), group.getSituacion_nc(), group.getOrigen_nc(), 
                                           group.getClausula_nc1(), group.getRequisito_nc1(), group.getDeclaracion_nc1(), group.getCodigo_nc1(),
                                            group.getClausula_nc2(), group.getRequisito_nc2(), group.getDeclaracion_nc2(), group.getCodigo_nc1(), group.getCodigo_origen_nc());
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
                                group.setError("");
                                return mapping.findForward(SUCCESS);                    
                            } else {
                                group.setError("Ocurrio un error asociando la no conformidad.");
                                request.setAttribute("grupito", group);
                                return mapping.findForward(FAILURE);
                            }
                        }
                    } else {
                        group.setError("El grupo ya existe.");
                        request.setAttribute("grupito", group);
                        return mapping.findForward(FAILURE);
                    }
                } else {
                    group.setError("Debe ingresar al menos un usuario en el grupo.");
                    request.setAttribute("grupito", group);
                    return mapping.findForward(FAILURE);
                }

           }else{
                group.setError("Persona no registrada.");
                request.setAttribute("grupito", group);
                return mapping.findForward(FAILURE);
            }
        } else {
            group.setError("Ya existe una no conformidad con este registro.");
            request.setAttribute("grupito", group);
            return mapping.findForward(FAILURE);
        }
        return null;
    }
 
}