/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package queja.action;

import DBMS.DBMS;
import domain.*;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

/**
 *
 * @author Gabriel
 */
public class MarcarQueja extends org.apache.struts.action.Action {

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
        String queja[]=request.getParameterValues("registro_queja");
        String accion=request.getParameter("accion");
        
        if(queja != null){
            if (accion.equals("Leida")){
                for (int i=0; i<queja.length;i++){
                    if(queja[i]!=null){
                        DBMS.getInstance().quejaLeida(queja[i]);  
                    }
                }
            }else{
                for (int i=0; i<queja.length;i++){
                    if(queja[i]!=null){
                        DBMS.getInstance().quejaNoLeida(queja[i]);  
                    }
                }
            }
        }
        
        Usuario us = (Usuario) request.getSession().getAttribute("usuario");
        if(us.getCargo()==0){
            ArrayList<Queja> quejas = DBMS.getInstance().consultarQuejas();
            ArrayList<Queja> leidas = new ArrayList<Queja>(0);
            ArrayList<Queja> noleidas= new ArrayList<Queja>(0);
            Collections.reverse(quejas);
            for(int i=0; i < quejas.size(); i++){
                Queja queja1=quejas.get(i);
                if (queja1.isLeido())
                    leidas.add(queja1);
                else
                    noleidas.add(queja1);    
            }
            
            request.setAttribute("listQuejas", quejas);
            request.setAttribute("QuejasNoLeidas", noleidas);
            request.setAttribute("QuejasLeidas", leidas);
            return mapping.findForward(SUCCESS);
        }else{
            List<Publicacion> listMsg = new ArrayList<Publicacion>();
            listMsg = DBMS.getInstance().consultarPublicacion();
            Collections.reverse(listMsg);
            request.setAttribute("listMsg", listMsg);
            request.setAttribute("usuario", us);
            return mapping.findForward(FAILURE);
        }
        

    }
}
