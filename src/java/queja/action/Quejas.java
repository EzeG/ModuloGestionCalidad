/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package queja.action;

import DBMS.DBMS;
import domain.Grupo;
import domain.Queja;
import java.util.ArrayList;
import java.util.Iterator;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

/**
 *
 * @author Gabriel
 */
public class Quejas extends org.apache.struts.action.Action {

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
        
        ArrayList<Queja> quejas = DBMS.getInstance().consultarQuejas();
        ArrayList<Queja> leidas = new ArrayList<Queja>(0);
        ArrayList<Queja> noleidas= new ArrayList<Queja>(0);

        for(int i=0; i < quejas.size(); i++){
            Queja queja=quejas.get(i);
            if (queja.isLeido())
                leidas.add(queja);
            else
                noleidas.add(queja);    
        }
        request.setAttribute("listQuejas", quejas);
        request.setAttribute("QuejasNoLeidas", noleidas);
        request.setAttribute("QuejasLeidas", leidas);
        return mapping.findForward(SUCCESS);
    }

  
}
