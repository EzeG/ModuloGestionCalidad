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
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.text.ParseException;
import java.util.Date;
import java.util.ArrayList;
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
    private ArrayList<String> responsables;
    private String recursos;
    private Date fechainicio;
    private Date fechafinal;
    private String fechainicioinput;
    private String fechafinalinput;
    private String estado = "activa";
    private String mensaje = "";
    private String terminar;


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

    public ArrayList<String> getResponsables() {
        return this.responsables;
    }
    
    public void setResponsables(ArrayList<String> respo) {
        this.responsables = respo;
        String[] parts;
        if (respo.size() > 0) {
            parts = respo.get(0).split("/");
            this.responsable = parts[1];
         }
    }
    
    public String getRecursos() {
        return recursos;
    }

    public void setRecursos(String recursos) {
        this.recursos = recursos;
    }
    
    public Date getFechainicio() {
        return fechainicio;
    }
    
    public void setFechainicio(Date inicio) {
        this.fechainicio = inicio;
    }
    
    public Date getFechafinal() {
        return fechafinal;
    }

    public void setFechafinal(Date culmina) {
        this.fechafinal = culmina;
    }
    
    public String getFechainicioinput() {
        return fechainicioinput;
    }
    
    public void setFechainicioinput(String inicio) {
        if (inicio == null) {  
            this.fechainicio = null;  
         } else {  
            try {
               DateFormat dateFormatter = new SimpleDateFormat("dd-MM-yyyy");
               this.fechainicio = dateFormatter.parse(inicio);  
            } catch (ParseException ex) {  
               this.fechainicio = null;  
            }  
         }  
        this.fechainicioinput = inicio;
    }
    
    public String getFechafinalinput() {
        return fechafinalinput;
    }

    public void setFechafinalinput(String culmina) {
        if (culmina == null) {  
            this.fechafinal = null;  
         } else {  
            try {
               DateFormat dateFormatter = new SimpleDateFormat("dd-MM-yyyy");
               this.fechafinal = dateFormatter.parse(culmina);  
            } catch (ParseException ex) {  
               this.fechafinal = null;  
            }  
         }  
        this.fechafinalinput = culmina;
    }
    
    public String getEstado() {
        return this.estado;
    }
    
    public void setEstado(String estad) {
        if(estad.equals("activa") || estad.equals("terminada")) this.estado = estad;
    }
    
    public void setMensaje(String men) {
        this.mensaje = men;
    }
    
    public String getMensaje() {
        return this.mensaje;
    }
    
    public void setTerminar(String men) {
        this.terminar = men;
    }
    
    public String getTerminar() {
        return this.terminar;
    }
    
    public Accion(){
        super();
    }
    
    
    public Accion(String registro_nc, String accion, String tipo, int prioridad, String proceso, String responsable, String recursos, Date inicio, Date culmina) {
        super();
        this.registro_nc = registro_nc;
        this.accion = accion;
        this.tipo = tipo;
        this.prioridad = prioridad;
        this.proceso = proceso;
        this.responsable = responsable;
        this.recursos = recursos;
        this.fechainicio = inicio;
        this.fechafinal = culmina;
        this.estado = "activa";
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
