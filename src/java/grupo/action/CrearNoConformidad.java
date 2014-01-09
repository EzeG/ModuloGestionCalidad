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
      
        Grupo group = new Grupo();
        group.setNombre_grupo(nc.getGrupo_nc());
        NC = DBMS.getInstance().consultarNC("UL04/"+nc.getRegistro_nc());
        

        if(NC.isEmpty()){
            nc.setRegistro_nc("UL04/"+nc.getRegistro_nc());
            if (DBMS.getInstance().agregaNoConformidad(nc)) {
                boolean asocio = DBMS.getInstance().asociarNoConformidad(nc.getGrupo_nc(),nc.getRegistro_nc());
                if (asocio) {
                    return mapping.findForward(SUCCESS);
                } else {
                    group.setError("Ocurrio un error asociando la no conformidad.");
                    request.setAttribute("grupito", group);
                    request.setAttribute("nombreG", nc.getGrupo_nc());
                    request.setAttribute("registro_nc", nc.getRegistro_nc());
                    request.setAttribute("situacion_nc", nc.getSituacion_nc());
                    
                    request.setAttribute("clausula_nc1", nc.getClausula_nc1());
                    request.setAttribute("requisito_nc1", nc.getRequisito_nc1());
                    request.setAttribute("declaracion_nc1", nc.getDeclaracion_nc1());
                    request.setAttribute("codigo_nc1", nc.getCodigo_nc1());
                    
                    request.setAttribute("clausula_nc2", nc.getClausula_nc2());
                    request.setAttribute("requisito_nc2", nc.getRequisito_nc2());
                    request.setAttribute("declaracion_nc2", nc.getDeclaracion_nc2());
                    request.setAttribute("codigo_nc2", nc.getCodigo_nc2());
                    return mapping.findForward(FAILURE);
                }
            } else {
                group.setError("Error al crear no conformidad.");
                request.setAttribute("grupito", group);
                request.setAttribute("nombreG", nc.getGrupo_nc());
                request.setAttribute("registro_nc", nc.getRegistro_nc());
                request.setAttribute("situacion_nc", nc.getSituacion_nc());
                
                request.setAttribute("clausula_nc1", nc.getClausula_nc1());
                request.setAttribute("requisito_nc1", nc.getRequisito_nc1());
                request.setAttribute("declaracion_nc1", nc.getDeclaracion_nc1());
                request.setAttribute("codigo_nc1", nc.getCodigo_nc1());

                request.setAttribute("clausula_nc2", nc.getClausula_nc2());
                request.setAttribute("requisito_nc2", nc.getRequisito_nc2());
                request.setAttribute("declaracion_nc2", nc.getDeclaracion_nc2());
                request.setAttribute("codigo_nc2", nc.getCodigo_nc2());
                return mapping.findForward(FAILURE);
            }
        }else{
                group.setError("Ya existe otra no conformidad con este Registro."); 
                request.setAttribute("grupito", group);
                request.setAttribute("nombreG", nc.getGrupo_nc());
                request.setAttribute("registro_nc", nc.getRegistro_nc());
                request.setAttribute("situacion_nc", nc.getSituacion_nc());
                
                request.setAttribute("clausula_nc1", nc.getClausula_nc1());
                request.setAttribute("requisito_nc1", nc.getRequisito_nc1());
                request.setAttribute("declaracion_nc1", nc.getDeclaracion_nc1());
                request.setAttribute("codigo_nc1", nc.getCodigo_nc1());

                request.setAttribute("clausula_nc2", nc.getClausula_nc2());
                request.setAttribute("requisito_nc2", nc.getRequisito_nc2());
                request.setAttribute("declaracion_nc2", nc.getDeclaracion_nc2());
                request.setAttribute("codigo_nc2", nc.getCodigo_nc2());
                return mapping.findForward(FAILURE);
        }
        
        
    }
}
