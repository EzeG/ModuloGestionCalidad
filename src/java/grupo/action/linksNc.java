package grupo.action;

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
import domain.*;
import DBMS.*;
import java.util.ArrayList;

/**
 *
 * @author edgar
 */
public class linksNc extends org.apache.struts.action.Action {

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
        NoConformidad nc = new NoConformidad();
        String nombreNc = (String) request.getParameter("NoConformidad");
        String origen = "";
        ArrayList<Accion> acciones_preventivas;
        ArrayList<Accion> acciones_correctivas;
        nc = DBMS.getInstance().buscarNc(nombreNc);
        
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
        String NombreG = DBMS.getInstance().buscarGrupoPNC(nc.getRegistro_nc());
        Usuario usuario;
        usuario = (Usuario) request.getSession().getAttribute("usuario");
        String usbid = usuario.getUsbid();
            
         if(DBMS.getInstance().verificarMiembroEncargado(usbid, NombreG)) {
             request.setAttribute("visible", "visible");
         }else{
             request.setAttribute("visible", "hidden");
         }    
       
        
        
        return mapping.findForward(SUCCESS);
    }
}
