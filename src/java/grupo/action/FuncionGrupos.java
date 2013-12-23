/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package grupo.action;

import domain.Grupo;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import DBMS.*;
import java.util.ArrayList;

/**
 *
 * @author edgar
 */


public class FuncionGrupos extends org.apache.struts.action.Action {

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
        ArrayList<Grupo> grupos;
        String rango = "encargado";
        Grupo grupo = new Grupo();
        grupos = DBMS.getInstance().consultarGrupos();
        request.setAttribute("listGrupos", grupos);
        request.setAttribute("grupitos", grupo);
        if (rango== "coordinadora"){
            request.setAttribute("Agregar","+ No Conformidad");
            request.setAttribute("AgregarAction","/agregarNC");
        }else{
            request.setAttribute("Agregar","+ Persona");
            request.setAttribute("AgregarAction","/agregarPersonas");
        }
        return mapping.findForward(SUCCESS);
        
    }
}
