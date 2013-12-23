/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package grupo.action;

import domain.Grupo;
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
public class nuevoGrupo extends org.apache.struts.action.Action {

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
        Grupo grupo = new Grupo();
        request.setAttribute("grupito", grupo);
        request.setAttribute("nombre_grupo","Nombre del Grupo");
        request.setAttribute("string_grupo", "Integrante Uno, Integrante Dos, Integrante Tres...");
        request.setAttribute("registro_nc", "Registro");
        request.setAttribute("situacion_nc", "Describa la inconformidad");
        request.setAttribute("clausula_nc", "Clausula");
        request.setAttribute("requisito_nc", "Requisito");
        request.setAttribute("declaracion_nc", "Declaracion");
        request.setAttribute("codigo_nc", "Codigo");
        request.setAttribute("error", "");
        return mapping.findForward(SUCCESS);
    }
}
