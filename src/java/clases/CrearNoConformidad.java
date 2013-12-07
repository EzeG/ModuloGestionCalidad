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

import DBMS.DBMS;
import java.util.ArrayList;

;

/**
 *
 * @author edgar
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

        NoConformidad nc;
        nc = (NoConformidad) form;
        Grupo group = new Grupo();

        boolean agrego = DBMS.getInstance().agregaNoConformidad(nc);
        if (agrego) {
            boolean asocio = DBMS.getInstance().asociarNoConformidad(nc.getGrupo_nc(), nc.getRegistro_nc());
            if (asocio) {
                group.setError("Se agrego el grupo");
                request.setAttribute("grupito", group);
                return mapping.findForward(SUCCESS);
            } else {
                group.setError("Ocurrio un error asociando la no conformidad.");
                request.setAttribute("grupito", group);
                return mapping.findForward(FAILURE);
            }
        } else {
            group.setError("La No Conformidad ya existe.");
            request.setAttribute("grupito", group);
            return mapping.findForward(FAILURE);
        }
    }
}
