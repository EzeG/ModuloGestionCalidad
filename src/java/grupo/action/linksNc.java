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
        ArrayList<Accion> acciones_preventivas = new ArrayList<Accion>();
        ArrayList<Accion> acciones_correctivas = new ArrayList<Accion>();
        ArrayList<Accion> acciones_terminadas = new ArrayList<Accion>();
        nc = DBMS.getInstance().buscarNc(nombreNc);
        ArrayList<Usuario> listUsuarios = new ArrayList<Usuario>();
        String registroGrupo;
        request.setAttribute("registro_nc", nombreNc);
        registroGrupo = DBMS.getInstance().buscarGrupoPNC(nombreNc);
        if (registroGrupo != null) {
            listUsuarios = DBMS.getInstance().consultarUsuariosGU(registroGrupo);
        }
        request.setAttribute("accion","Accion");
        request.setAttribute("proceso", "Proceso");
        request.setAttribute("responsable", "Responsable");
        request.setAttribute("recursos", "Recursos");
        request.setAttribute("error", "");
        request.setAttribute("integrantes", listUsuarios);
        
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
        if(nc.getRequisito_nc1().equals("--------"))
            nc.setCodigo_nc1("--------");
        if(nc.getRequisito_nc2().equals("--------"))
            nc.setCodigo_nc2("--------");
        request.setAttribute("nc", nc);
        request.setAttribute("origen", origen);
        acciones_preventivas = DBMS.getInstance().consultarAccionesPreventivas(nc.getRegistro_nc());
        acciones_correctivas = DBMS.getInstance().consultarAccionesCorrectivas(nc.getRegistro_nc());
        acciones_terminadas = DBMS.getInstance().consultarAccionesTerminadas(nc.getRegistro_nc());
        request.setAttribute("AccionPreventiva", acciones_preventivas);
        request.setAttribute("AccionCorrectiva", acciones_correctivas);
        request.setAttribute("AccionTerminada", acciones_terminadas);
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
