/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;

/**
 *
 * @author edgar
 */
public class crear_grupo extends org.apache.struts.action.ActionForm {
    
    private String tema_grupo;
    private String nc_grupo;
    private String personas_grupo;
    private String causas_grupo;
    private String acciones_grupo;
    private String plan_grupo;
    
    

    public String getTema_grupo() {
        return tema_grupo;
    }

    public void setTema_grupo(String tema_grupo) {
        this.tema_grupo = tema_grupo;
    }

    public String getNc_grupo() {
        return nc_grupo;
    }

    public void setNc_grupo(String nc_grupo) {
        this.nc_grupo = nc_grupo;
    }

    public String getPersonas_grupo() {
        return personas_grupo;
    }

    public void setPersonas_grupo(String personas_grupo) {
        this.personas_grupo = personas_grupo;
    }

    public String getCausas_grupo() {
        return causas_grupo;
    }

    public void setCausas_grupo(String causas_grupo) {
        this.causas_grupo = causas_grupo;
    }

    public String getAcciones_grupo() {
        return acciones_grupo;
    }

    public void setAcciones_grupo(String acciones_grupo) {
        this.acciones_grupo = acciones_grupo;
    }

    public String getPlan_grupo() {
        return plan_grupo;
    }

    public void setPlan_grupo(String plan_grupo) {
        this.plan_grupo = plan_grupo;
    }    

    /**
     *
     */
    public crear_grupo() {
        super();
        // TODO Auto-generated constructor stub
    }

    /**
     * This is the action called from the Struts framework.
     *
     * @param mapping The ActionMapping used to select this instance.
     * @param request The HTTP Request we are processing.
     * @return
     */
    @Override
    public ActionErrors validate(ActionMapping mapping, HttpServletRequest request) {
        ActionErrors errors = new ActionErrors();
        
        return errors;
    }
}
