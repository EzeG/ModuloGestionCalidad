/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package queja.action;

import DBMS.DBMS;
import domain.Grupo;
import domain.NoConformidad;
import domain.Queja;
import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

/**
 *
 * @author Gabriel
 */
public class LinkQueja extends org.apache.struts.action.Action {

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
        
        String registro_queja = (String) request.getParameter("verQueja");
        Queja queja = DBMS.getInstance().consultarQueja(registro_queja);
       
        ArrayList<Grupo> grupos = DBMS.getInstance().consultarGruposActivos();
        NoConformidad nc= new NoConformidad();
        DBMS.getInstance().quejaLeida(registro_queja);
        request.setAttribute("queja", queja);
        request.setAttribute("nc", nc);
        request.setAttribute("grupos", grupos);
        request.setAttribute("origen", "queja");
        request.setAttribute("nombre_grupo","Nombre del Grupo");
        request.setAttribute("string_grupo", "Encargado del Grupo");
        request.setAttribute("registro_nc", "12345");
        request.setAttribute("codigo_queja", queja.getRegistro());
        request.setAttribute("situacion_nc", "Describa la no conformidad");
        request.setAttribute("clausula_nc1", "Clausula");
        request.setAttribute("requisito_nc1", "Requisito");
        request.setAttribute("declaracion_nc1", "Declaración");
        request.setAttribute("codigo_nc1", "Código");
        request.setAttribute("clausula_nc2", "Clausula");
        request.setAttribute("requisito_nc2", "Requisito");
        request.setAttribute("declaracion_nc2", "Declaración");
        request.setAttribute("codigo_nc2", "Codigo");
        
        request.setAttribute("error", "");
        
        return mapping.findForward(SUCCESS);
    }
}
