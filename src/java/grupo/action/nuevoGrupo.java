/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package grupo.action;

import domain.Grupo;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

/**
 *
 * @author edgar
 */
public class nuevoGrupo extends org.apache.struts.action.Action {

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
        request.setAttribute("grupito", grupo);

        return mapping.findForward(SUCCESS);
    }
}
