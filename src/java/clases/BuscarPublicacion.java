/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package clases;

import DBMS.DBMS;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

/**
 *
 * @author Ricardo
 */
public class BuscarPublicacion extends org.apache.struts.action.Action {

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
        Publicacion p = (Publicacion) form;
        List<Publicacion> listMsg = new ArrayList<Publicacion>();
        listMsg = DBMS.getInstance().consultarPublicacion();
        int i = 0;
        while (i < listMsg.size()) {
            if (p.getTitulo_publicacion().equals(listMsg.get(i).getTitulo_publicacion())) {
                p.setTitulo_publicacion(listMsg.get(i).getTitulo_publicacion());
                p.setContenido_publicacion(listMsg.get(i).getContenido_publicacion());
                HttpSession session = request.getSession(true);
                session.setAttribute("listo", p);
                return mapping.findForward(SUCCESS);
            }
            i++;
        }
        return mapping.findForward(FAILURE);
    }
}
