/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package grupo.action;

import domain.Grupo;
import domain.NoConformidad;
import domain.Usuario;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import java.util.ArrayList;
import DBMS.*;

/**
 *
 * @author ani
 */
public class AgregarNC extends org.apache.struts.action.Action {

    /* forward name="success" path="" */
    private static final String SUCCESS = "success";

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
        Grupo grupo = (Grupo) form;
        ArrayList<Usuario> listGrupo;
        NoConformidad nc = new NoConformidad();
        
        request.setAttribute("grupito", grupo);
        request.setAttribute("nombreG", grupo.getNombre_grupo());
        request.setAttribute("registro_nc", "12345");
        request.setAttribute("situacion_nc", "Describa la inconformidad");
        request.setAttribute("clausula_nc1", "Clausula");
        request.setAttribute("requisito_nc1", "Requisito");
        request.setAttribute("declaracion_nc1", "Declaracion");
        request.setAttribute("codigo_nc1", "Codigo");
        request.setAttribute("clausula_nc2", "Clausula");
        request.setAttribute("requisito_nc2", "Requisito");
        request.setAttribute("declaracion_nc2", "Declaracion");
        request.setAttribute("codigo_nc2", "Codigo");
        return mapping.findForward(SUCCESS);
    }
}
