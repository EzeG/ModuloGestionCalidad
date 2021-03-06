/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package grupo.action;

import DBMS.DBMS;
import domain.Accion;
import domain.Usuario;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

/**
 *
 * @author ani
 */
public class LinkAccion extends org.apache.struts.action.Action {

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
        Accion accionForm = (Accion) form;
        Accion informacion;
        Usuario usuario;
        usuario = (Usuario) request.getSession().getAttribute("usuario");
        String usbid = usuario.getUsbid();
        informacion = DBMS.getInstance().consultarAccionCorrectiva(accionForm.getRegistro_nc(), accionForm.getAccion());

         if(DBMS.getInstance().verificarMiembroEncargadoAccion(usbid, accionForm.getRegistro_nc(), accionForm.getAccion())) {
            if(informacion.getEstado().equals("terminada")) {
                request.setAttribute("visible", "hidden");
            }
            else {
                request.setAttribute("visible", "visible");
            }     
         }else{
             request.setAttribute("visible", "hidden");
         }   
        if(informacion != null) {
            request.setAttribute("Accionn", informacion);
        }
        return mapping.findForward(SUCCESS);
    }
}
