/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package domain;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.text.ParseException;
import java.util.Date;
import java.util.ArrayList;

/**
 *
 * @author Gabriel
 */
public class Queja extends org.apache.struts.action.ActionForm {
    private String registro;
    private String empresa;
    private String codigo_telefono;
    private String telefono;
    private String codigo_fax;
    private String fax;
    private String codigo_celular;
    private String celular;
    private String direccion;
    private String contacto;
    private String vinculo;
    private String email;
    private String contrato;
    private String exposicion;
    private String acciones;
    private boolean leido;
    private String registro_nc;
    private String fecha;
    private String error;

    public String getCodigo_telefono() {
        return codigo_telefono;
    }

    public void setCodigo_telefono(String codigo_telefono) {
        this.codigo_telefono = codigo_telefono;
    }

    public String getCodigo_fax() {
        return codigo_fax;
    }

    public void setCodigo_fax(String codigo_fax) {
        this.codigo_fax = codigo_fax;
    }

    public String getCodigo_celular() {
        return codigo_celular;
    }

    public void setCodigo_celular(String codigo_celular) {
        this.codigo_celular = codigo_celular;
    }

    
    public String getRegistro() {
        return registro;
    }

    public void setRegistro(String registro) {
        this.registro = registro;
    }

    public String getEmpresa() {
        return empresa;
    }

    public void setEmpresa(String empresa) {
        this.empresa = empresa;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public String getFax() {
        return fax;
    }

    public void setFax(String fax) {
        this.fax = fax;
    }

    public String getCelular() {
        return celular;
    }

    public void setCelular(String celular) {
        this.celular = celular;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public String getContacto() {
        return contacto;
    }

    public void setContacto(String contacto) {
        this.contacto = contacto;
    }

    public String getVinculo() {
        return vinculo;
    }

    public void setVinculo(String vinculo) {
        this.vinculo = vinculo;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getContrato() {
        return contrato;
    }

    public void setContrato(String contrato) {
        this.contrato = contrato;
    }

    public String getExposicion() {
        return exposicion;
    }

    public void setExposicion(String exposicion) {
        this.exposicion = exposicion;
    }

    public String getAcciones() {
        return acciones;
    }

    public void setAcciones(String acciones) {
        this.acciones = acciones;
    }

    public boolean isLeido() {
        return leido;
    }

    public void setLeido(boolean leido) {
        this.leido = leido;
    }

    public String getRegistro_nc() {
        return registro_nc;
    }

    public void setRegistro_nc(String registro_nc) {
        this.registro_nc = registro_nc;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

  
    public void setError(String err) {
        this.error = err;
    }
    
    public String getError() {
        return this.error;
    }
    
    
    public Queja() {
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
    public ActionErrors validate(ActionMapping mapping, HttpServletRequest request) {
        ActionErrors errors = new ActionErrors();
        return errors;
    }
}
