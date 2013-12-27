package domain;

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
public class Accion extends org.apache.struts.action.ActionForm {
    
    private String registro_nc;
    private String accion;      //nombre de la accion
    private String tipo;           //correctiva o preventiva
    private int prioridad;
    private String proceso;
    private String responsable;
    private String recursos;


    public String getRegistro_nc() {
        return registro_nc;
    }

    public void setRegistro_nc(String codigo_nc) {
        this.registro_nc = codigo_nc;
    }

    public String getAccion() {
        return accion;
    }

    public void setAccion(String accion) {
        this.accion = accion;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public int getPrioridad() {
        return prioridad;
    }

    public void setPrioridad(int prioridad) {
        this.prioridad = prioridad;
    }

    public String getProceso() {
        return proceso;
    }

    public void setProceso(String proceso) {
        this.proceso = proceso;
    }

    public String getResponsable() {
        return responsable;
    }

    public void setResponsable(String responsable) {
        this.responsable = responsable;
    }

    public String getRecursos() {
        return recursos;
    }

    public void setRecursos(String recursos) {
        this.recursos = recursos;
    }


    public Accion(){
        super();
    }
    
    
    public Accion(String registro_nc, String accion, String tipo, int prioridad, String proceso, String responsable, String recursos) {
        super();
        this.registro_nc = registro_nc;
        this.accion = accion;
        this.tipo = tipo;
        this.prioridad = prioridad;
        this.proceso = proceso;
        this.responsable = responsable;
        this.recursos = recursos;
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
