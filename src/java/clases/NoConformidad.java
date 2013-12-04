package clases;

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
public class NoConformidad extends org.apache.struts.action.ActionForm {
    
    private String registro_nc;
    private String situacion_nc;
    private int origen_nc;
    private int documento_nc;
    private String clausula_nc;
    private String requisito_nc;
    private String declaracion_nc;
    private String codigo_nc;

    public String getRegistro_nc() {
        return registro_nc;
    }

    public void setRegistro_nc(String registro_nc) {
        this.registro_nc = registro_nc;
    }

    public String getSituacion_nc() {
        return situacion_nc;
    }

    public void setSituacion_nc(String situacion_nc) {
        this.situacion_nc = situacion_nc;
    }

    public int getOrigen_nc() {
        return origen_nc;
    }

    public void setOrigen_nc(int origen_nc) {
        this.origen_nc = origen_nc;
    }

    public int getDocumento_nc() {
        return documento_nc;
    }

    public void setDocumento_nc(int documento_nc) {
        this.documento_nc = documento_nc;
    }

    public String getClausula_nc() {
        return clausula_nc;
    }

    public void setClausula_nc(String clausula_nc) {
        this.clausula_nc = clausula_nc;
    }

    public String getRequisito_nc() {
        return requisito_nc;
    }

    public void setRequisito_nc(String requisito_nc) {
        this.requisito_nc = requisito_nc;
    }

    public String getDeclaracion_nc() {
        return declaracion_nc;
    }

    public void setDeclaracion_nc(String declaracion_nc) {
        this.declaracion_nc = declaracion_nc;
    }

    public String getCodigo_nc() {
        return codigo_nc;
    }

    public void setCodigo_nc(String codigo_nc) {
        this.codigo_nc = codigo_nc;
    }
    
    public NoConformidad(){
        
    }

    /**
     *
     * @param registro
     * @param situacion
     * @param origen
     * @param fecha
     * @param documento
     * @param clausula
     * @param requisito
     * @param declaracion
     * @param codigo
     */
    public NoConformidad(String registro, String situacion, int origen, int documento, String clausula, String requisito, String declaracion, String codigo) {
        super();
        // TODO Auto-generated constructor stub
         this.registro_nc = registro;
         this.situacion_nc = situacion;
         this.origen_nc = origen;
         this.documento_nc = documento;
         this.clausula_nc = clausula;
         this.requisito_nc = requisito;
         this.declaracion_nc = declaracion;
         this.codigo_nc = codigo;
        
        
        
    }

    /**
     * This is the action called from the Struts framework.
     *
     * @param mapping The ActionMapping used to select this instance.
     * @param request The HTTP Request we are processing.
     * @return
     */
    public ActionErrors validate(ActionMapping mapping, HttpServletRequest request) {
        ActionErrors errors = new ActionErrors();
       
        return errors;
    }
}
