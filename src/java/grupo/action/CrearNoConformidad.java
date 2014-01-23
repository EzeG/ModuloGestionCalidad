package grupo.action;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import domain.Grupo;
import domain.NoConformidad;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import DBMS.DBMS;
import java.util.ArrayList;

;

/**
 *
 * @author edgar
 */
public class CrearNoConformidad extends org.apache.struts.action.Action {

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

        NoConformidad nc;
        NoConformidad nc1;
        ArrayList<NoConformidad> NC = new ArrayList<NoConformidad>();
        nc = (NoConformidad) form;
        NoConformidad noConformidad = new NoConformidad();
        nc.setCodigo_nc2(nc.getCodigo_nc1());
        NC = DBMS.getInstance().consultarNC("UL04/"+nc.getRegistro_nc());
        

        if(NC.isEmpty()){
            nc.setRegistro_nc("UL04/"+nc.getRegistro_nc());
            if (DBMS.getInstance().agregaNoConformidad(nc)) {
                boolean asocio = DBMS.getInstance().asociarNoConformidad(nc.getGrupo_nc(),nc.getRegistro_nc());
                if (asocio) {
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
                } else {
                    nc.setError("Ocurrio un error asociando la no conformidad.");
                    request.setAttribute("noConformidad", nc);
                    return mapping.findForward(FAILURE);
                }
            } else {
                nc.setError("Error al crear no conformidad.");
                request.setAttribute("noConformidad", nc);
                return mapping.findForward(FAILURE);
            }
        }else{
                nc.setError("Ya existe otra no conformidad con este Registro.");
                request.setAttribute("noConformidad", nc);
                return mapping.findForward(FAILURE);
        }
        
        
    }
}
