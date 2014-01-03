/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package grupo.action;

import domain.*;

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
    
    public ActionForward execute(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        ArrayList<Grupo> grupos;
        ArrayList<Grupo> gruposin;
        Usuario usuario = (Usuario) request.getSession().getAttribute("usuario");
        int Cargo = usuario.getCargo();
        
        String rango = "encargado";
        Grupo grupo = new Grupo();
        if (Cargo== 0){
            grupos = DBMS.getInstance().consultarGruposActivos();
            gruposin = DBMS.getInstance().consultarGruposInActivos();
            request.setAttribute("listInactivos", gruposin);
            grupos = DBMS.getInstance().consultarGruposConEncargado(usuario);
            request.setAttribute("listGruposEncargado", grupos);
            grupos = DBMS.getInstance().consultarGruposConMiembro(usuario);
            request.setAttribute("listGrupos", grupos);
            grupos = DBMS.getInstance().consultarGruposSinMiembro(usuario);
            request.setAttribute("listGruposSinMi", grupos);
            request.setAttribute("grupitos", grupo);
            request.setAttribute("Agregar","+ No Conformidad");
            request.setAttribute("AgregarAction","/agregarNC");
            return mapping.findForward(SUCCESS);
        }else{
            grupos = DBMS.getInstance().consultarGruposConEncargado(usuario);
            request.setAttribute("longitud",Integer.toString(grupos.size()));
            request.setAttribute("listGrupos1", grupos);
            grupos = DBMS.getInstance().consultarGruposConMiembro(usuario);
            request.setAttribute("listGrupos2", grupos);
            request.setAttribute("grupitos", grupo);
            request.setAttribute("Agregar","+ Persona");
            request.setAttribute("AgregarAction","/agregarPersonas");
            return mapping.findForward(FAILURE);
        }
        
        
    }
}
