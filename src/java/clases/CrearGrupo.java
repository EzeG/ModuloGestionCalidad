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
import javax.servlet.http.HttpSession;
import org.apache.struts.action.ActionRedirect;

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
        ArrayList<Usuario> users;
        ArrayList<Usuario> cache = new ArrayList<Usuario>();
        boolean agrego;
        NoConformidad nc;

        String[] nombres = group.getString_grupo().split(",");

        for (int i = 0; i < nombres.length; i++) {
            nombres[i] = nombres[i].trim();
            users = DBMS.getInstance().consultarUsuarios(nombres[i]);
            if (!users.isEmpty()) {
                cache.addAll(users);
                int a = 0;
            }
            users.clear();
        }

        if (!cache.isEmpty()) {
            group.setIntegrantes_grupo(cache);
            agrego = DBMS.getInstance().agregarGrupo(group);
            if (agrego) {
                
                /* Se asocia la no conformidad con el grupo */
                boolean asocio = DBMS.getInstance().asociarNoConformidad(group.getNombre_grupo(), group.getNoConformidad());
                if(asocio){
                    return mapping.findForward(SUCCESS);
                } else {
                    return mapping.findForward(FAILURE);
                }
                
            } else {
                return mapping.findForward(FAILURE);
            }
        } else {
            return mapping.findForward(FAILURE);
        }

    }
}
