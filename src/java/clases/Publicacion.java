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
public class Publicacion extends org.apache.struts.action.ActionForm {
    
    private String titulo_publicacion;
    private String contenido_publicacion;
    private String error;
    private String resumen;
        
        

    public String getTitulo_publicacion() {
        return titulo_publicacion;
    }

    public void setTitulo_publicacion(String titulo_publicacion) {
        this.titulo_publicacion = titulo_publicacion;
    }

    public String getContenido_publicacion() {
        return contenido_publicacion;
    }
    
    public String getResumen() {
        return resumen;
    }

    public void setContenido_publicacion(String contenido_publicacion) {
        
        this.contenido_publicacion = contenido_publicacion;
        String[] partida = contenido_publicacion.split("\\.");
        this.resumen = partida[0]+".";
    }   
    
    public String getError() {
        return error;
    }

    public void setError(String error) {
        this.error = error;
    }
    
    /**
     * 
     */
    public Publicacion() {
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
