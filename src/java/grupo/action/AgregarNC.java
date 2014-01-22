/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package grupo.action;

import domain.Grupo;
import domain.NoConformidad;
import domain.Usuario;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import java.util.ArrayList;
import DBMS.*;

/**
 *
 * @author ani
 */
public class AgregarNC extends org.apache.struts.action.Action {

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
        Grupo grupo = (Grupo) form;
        ArrayList<Usuario> listGrupo;
        NoConformidad nc = new NoConformidad();
        nc.setError("");
        nc.setRegistro_nc("12345");
        nc.setSituacion_nc("Describa la no conformidad");
        nc.setClausula_nc1("Clausula");
        nc.setRequisito_nc1("Requisito");
        nc.setDeclaracion_nc1("Declaración");
        nc.setCodigo_nc1("Código");
        nc.setClausula_nc2("Clausula");
        nc.setRequisito_nc2("Requisito");
        nc.setDeclaracion_nc2("Declaración");
        nc.setCodigo_nc2("Código");
        nc.setCodigo_origen_nc("Código");
        nc.setGrupo_nc(grupo.getNombre_grupo());
        request.setAttribute("noConformidad", nc);

        return mapping.findForward(SUCCESS);
    }
}
