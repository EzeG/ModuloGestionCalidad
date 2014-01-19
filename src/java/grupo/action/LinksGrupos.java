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
import domain.Queja;

/**
 *
 * @author edgar
 */
public class LinksGrupos extends org.apache.struts.action.Action {

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
        ArrayList<Usuario> users;
        ArrayList<NoConformidad> ncs;
        String nombreGroup = (String) request.getParameter("verGrupo");    
        ncs = DBMS.getInstance().consultarTrabaja(nombreGroup); 
        ArrayList<NoConformidad> ncs_activas = new ArrayList<NoConformidad>(0);
        ArrayList<NoConformidad> ncs_terminadas = new ArrayList<NoConformidad>(0);
        users = DBMS.getInstance().consultarUsuariosGU(nombreGroup);    
        Grupo group = new Grupo(nombreGroup, users);
        if (ncs.isEmpty()){
           return mapping.findForward(FAILURE); 
        }else{
            for(int i=0; i < ncs.size();i++){
                if(ncs.get(i).getEstado().equals("activa")){
                    ncs_activas.add(ncs.get(i));
                }else{
                    ncs_terminadas.add(ncs.get(i));
                }
            }
            request.setAttribute("nombreGrupo", group.getNombre_grupo());
            request.setAttribute("usuariosGrupo", group.getIntegrantes_grupo());
            request.setAttribute("noConformidad", ncs_activas);
            request.setAttribute("noConformidad2", ncs_terminadas);
            return mapping.findForward(SUCCESS);
        }
    }
}
