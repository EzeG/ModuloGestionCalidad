/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package grupo.action;

import domain.*;
import DBMS.DBMS;
import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

/**
 *
 * @author edgar
 */
public class nuevaAccion extends org.apache.struts.action.Action {

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
        Accion ac= (Accion) form;
        String registro_nc= ac.getRegistro_nc();
        ArrayList<Usuario> listUsuarios = new ArrayList<Usuario>();
        String registroGrupo;
        request.setAttribute("registro_nc", registro_nc);
        registroGrupo = DBMS.getInstance().buscarGrupoPNC(registro_nc);
        if (registroGrupo != null) {
            listUsuarios = DBMS.getInstance().consultarUsuariosGU(registroGrupo);
        }
        request.setAttribute("accion","Accion");
        request.setAttribute("proceso", "Proceso");
        request.setAttribute("responsable", "Responsable");
        request.setAttribute("recursos", "Recursos");
        request.setAttribute("error", "");
        request.setAttribute("integrantes", listUsuarios);
        return mapping.findForward(SUCCESS);
    }
}
