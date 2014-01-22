/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package grupo.action;

import domain.Grupo;
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
public class AgregarPersonas extends org.apache.struts.action.Action {

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
        
        listGrupo = DBMS.getInstance().usuariosSinGrupo(grupo.getNombre_grupo());
        
        for(int j =0; j<listGrupo.size(); j++){
            listGrupo.get(j).setGrupo(grupo.getNombre_grupo());
        }
        request.setAttribute("huerfanos", listGrupo);
        request.setAttribute("grupito", grupo);

        return mapping.findForward(SUCCESS);
    }
}
