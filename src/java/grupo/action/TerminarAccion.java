/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package grupo.action;
import DBMS.DBMS;
import domain.Accion;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

/**
 *
 * @author ani
 */
public class TerminarAccion extends org.apache.struts.action.Action {

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
        
        Accion acc = (Accion) form;
        boolean terminada;
        request.setAttribute("Accion", acc);
        terminada = DBMS.getInstance().terminarAccion(acc.getRegistro_nc(), acc.getAccion());
        if(terminada) request.setAttribute("mensaje", "La acción '"+acc.getAccion()+"' ha sido terminada.");
        else request.setAttribute("mensaje", "La acción '"+acc.getAccion()+"' no se ha podido terminar.");
        return mapping.findForward(SUCCESS);
    }
}
