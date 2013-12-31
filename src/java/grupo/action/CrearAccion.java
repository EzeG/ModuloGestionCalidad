package grupo.action;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import domain.*;
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
public class CrearAccion extends org.apache.struts.action.Action {

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

        Accion accion = (Accion) form;

        if(DBMS.getInstance().agregarAccion(accion)){
            NoConformidad nc;
            String origen = "";
            ArrayList<Accion> acciones_preventivas;
            ArrayList<Accion> acciones_correctivas;
            nc = DBMS.getInstance().buscarNc(accion.getRegistro_nc());

            /* Origen segun el numero */
            if(nc.getOrigen_nc() == 1){
                origen = "Queja";
            } else if(nc.getOrigen_nc() == 2){
                origen = "Auditoria";
            } else if(nc.getOrigen_nc() == 3){
                origen = "Revision del SGC";
            } else if(nc.getOrigen_nc() == 4){
                origen = "Oportunidad de Mejora";
            } else if(nc.getOrigen_nc() == 5){
                origen = "Trabajo No Conforme";
            } else if(nc.getOrigen_nc() == 6){
                origen = "Otro";
            }  
            request.setAttribute("nc", nc);
            request.setAttribute("origen", origen);
            acciones_preventivas = DBMS.getInstance().consultarAccionesPreventivas(nc.getRegistro_nc());
            acciones_correctivas = DBMS.getInstance().consultarAccionesCorrectivas(nc.getRegistro_nc());
            request.setAttribute("AccionPreventiva", acciones_preventivas);
            request.setAttribute("AccionCorrectiva", acciones_correctivas);
            request.setAttribute("visible", "visible");
            return mapping.findForward(SUCCESS);
            
        }else{
            String registro_nc= accion.getRegistro_nc();
            request.setAttribute("registro_nc", registro_nc);
            request.setAttribute("accion",accion.getAccion());
            request.setAttribute("proceso", accion.getProceso());
            request.setAttribute("responsable", accion.getResponsable());
            request.setAttribute("recursos", accion.getRecursos());
            request.setAttribute("error", "ya hay otra accion con este titulo");
            return mapping.findForward(FAILURE);
        }    
    }
 
}