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
public class NoConformidad extends org.apache.struts.action.ActionForm {

    private String fecha_nc;
    private String registro_nc;
    private String situacion_nc;
    private int origen_nc;
    private String codigo_origen_nc;
    
    private String clausula_nc1;
    private String requisito_nc1;
    private String declaracion_nc1;
    private String codigo_nc1;
    
    private String clausula_nc2;
    private String requisito_nc2;
    private String declaracion_nc2;
    private String codigo_nc2;
    
    private String grupo_nc;
    private String error;
    private String estado;

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }
    
    

    public String getCodigo_origen_nc() {
        return codigo_origen_nc;
    }

    public void setCodigo_origen_nc(String codigo_origen_nc) {
        this.codigo_origen_nc = codigo_origen_nc;
    }
    
    public String getFecha_nc() {
        return fecha_nc;
    }

    public void setFecha_nc(String fecha) {
        this.fecha_nc = fecha;
    }

    public String getError() {
        return error;
    }

    public void setError(String err) {
        this.error = err;
    }

    public String getGrupo_nc() {
        return grupo_nc;
    }

    public void setGrupo_nc(String grupo_nc) {
        this.grupo_nc = grupo_nc;
    }

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

    public String getClausula_nc1() {
        return clausula_nc1;
    }

    public void setClausula_nc1(String clausula_nc1) {
        this.clausula_nc1 = clausula_nc1;
    }

    public String getRequisito_nc1() {
        return requisito_nc1;
    }

    public void setRequisito_nc1(String requisito_nc1) {
        this.requisito_nc1 = requisito_nc1;
    }

    public String getDeclaracion_nc1() {
        return declaracion_nc1;
    }

    public void setDeclaracion_nc1(String declaracion_nc1) {
        this.declaracion_nc1 = declaracion_nc1;
    }

    public String getCodigo_nc1() {
        return codigo_nc1;
    }

    public void setCodigo_nc1(String codigo_nc1) {
        this.codigo_nc1 = codigo_nc1;
    }

    public String getClausula_nc2() {
        return clausula_nc2;
    }

    public void setClausula_nc2(String clausula_nc2) {
        this.clausula_nc2 = clausula_nc2;
    }

    public String getRequisito_nc2() {
        return requisito_nc2;
    }

    public void setRequisito_nc2(String requisito_nc2) {
        this.requisito_nc2 = requisito_nc2;
    }

    public String getDeclaracion_nc2() {
        return declaracion_nc2;
    }

    public void setDeclaracion_nc2(String declaracion_nc2) {
        this.declaracion_nc2 = declaracion_nc2;
    }

    public String getCodigo_nc2() {
        return codigo_nc2;
    }

    public void setCodigo_nc2(String codigo_nc2) {
        this.codigo_nc2 = codigo_nc2;
    }

    
    public NoConformidad() {

    }

    /**
     *
     * @param fecha
     * @param registro
     * @param situacion
     * @param origen
     * @param clausula1
     * @param requisito1
     * @param declaracion1
     * @param codigo1
     * @param clausula2
     * @param declaracion2
     * @param requisito2
     * @param codigo2

     */
     public NoConformidad(String registro, String situacion, int origen, String clausula1, String requisito1, String declaracion1, String codigo1,String clausula2, String requisito2, String declaracion2, String codigo2, String codigo_origen_nc) {
        super();
        // TODO Auto-generated constructor stub

        this.registro_nc = registro;
        this.situacion_nc = situacion;
        this.origen_nc = origen;

        this.clausula_nc1 = clausula1;
        this.requisito_nc1 = requisito1;
        this.declaracion_nc1 = declaracion1;
        this.codigo_nc1 = codigo1;
        
        this.clausula_nc2 = clausula2;
        this.requisito_nc2 = requisito2;
        this.declaracion_nc2 = declaracion2;
        this.codigo_nc2 = codigo2;
        this.codigo_origen_nc = codigo_origen_nc;
    }
    
    
    
    public NoConformidad(String fecha, String registro, String situacion, int origen, String clausula1, String requisito1, String declaracion1, String codigo1,String clausula2, String requisito2, String declaracion2, String codigo2) {
        super();
        // TODO Auto-generated constructor stub
        this.fecha_nc = fecha;
        this.registro_nc = registro;
        this.situacion_nc = situacion;
        this.origen_nc = origen;

        this.clausula_nc1 = clausula1;
        this.requisito_nc1 = requisito1;
        this.declaracion_nc1 = declaracion1;
        this.codigo_nc1 = codigo1;
        
        this.clausula_nc2 = clausula2;
        this.requisito_nc2 = requisito2;
        this.declaracion_nc2 = declaracion2;
        this.codigo_nc2 = codigo2;
    }
    
    /**
     *
     * @param fecha
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
