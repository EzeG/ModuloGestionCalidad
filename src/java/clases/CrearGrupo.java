package clases;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
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
        NoConformidad nc= new NoConformidad(group.getRegistro_nc(), group.getSituacion_nc(), group.getOrigen_nc(), 
                                          group.getDocumento_nc(), group.getClausula_nc(), group.getRequisito_nc(), group.getDeclaracion_nc(), group.getCodigo_nc());
        ArrayList<Usuario> users;
        ArrayList<NoConformidad> NC = new ArrayList<NoConformidad>();
        ArrayList<Usuario> cache = new ArrayList<Usuario>();
        boolean agrego;
        boolean agrego_nc;
        String[] nombres = group.getString_grupo().split(",");

        for (int i = 0; i < nombres.length; i++) {
            nombres[i] = nombres[i].trim();
            users = DBMS.getInstance().consultarUsuarios(nombres[i]);
            NC = DBMS.getInstance().consultarNC(group.getRegistro_nc());
            if (!users.isEmpty()) {
                cache.addAll(users);
                int a = 0;
            }
            users.clear();
        }
        
        if (NC.isEmpty()){
        if (cache.size() == nombres.length){
        if (!cache.isEmpty()) {
            group.setIntegrantes_grupo(cache);
            agrego = DBMS.getInstance().agregarGrupo(group);
            
            if (agrego) {
                if (DBMS.getInstance().agregaNoConformidad(nc)){
                    boolean asocio = DBMS.getInstance().asociarNoConformidad(group.getNombre_grupo(), nc.getRegistro_nc());
                    if (asocio){
                        return mapping.findForward(SUCCESS);                    
                    } else {
                        group.setError("Ocurrio un error asociando la no conformidad.");
                        return mapping.findForward(FAILURE);
                    }
                }
                
                
                return mapping.findForward(SUCCESS);
          
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
            group.setError("Uno o mas integrantes del grupo no pertenecen a la base de datos del sistema.");
            request.setAttribute("grupito", group);
            return mapping.findForward(FAILURE);
        }
        } else {
            group.setError("Ya existe una no conformidad con este nombre.");
            request.setAttribute("grupito", group);
            return mapping.findForward(FAILURE);
        }
    }
 
}