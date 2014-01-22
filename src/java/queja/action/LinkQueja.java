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
        if (!queja.getRegistro_nc().equals("")){
            nc=DBMS.getInstance().buscarNc(queja.getRegistro_nc());
        }
        nc.setCodigo_origen_nc("queja");
        request.setAttribute("nc", nc);
        request.setAttribute("grupos", grupos);
        Grupo grupo = new Grupo();
        grupo.setNombre_grupo("Nombre del Grupo");
        grupo.setString_grupo("Encargado del Grupo");
        grupo.setRegistro_nc("12345");
        grupo.setSituacion_nc("Describa la no conformidad");
        grupo.setClausula_nc1("Clausula");
        grupo.setRequisito_nc1("Requisito");
        grupo.setDeclaracion_nc1("Declaración");
        grupo.setCodigo_nc1("Código");
        grupo.setClausula_nc2("Clausula");
        grupo.setRequisito_nc2("Requisito");
        grupo.setDeclaracion_nc2("Declaración");
        grupo.setCodigo_nc2("Código");
        grupo.setError("");
        grupo.setCodigo_origen_nc(queja.getRegistro());
        request.setAttribute("grupito", grupo);
        
        return mapping.findForward(SUCCESS);
    }
}
