package clases;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import javax.servlet.http.HttpServletRequest;

import clases.Usuario;
import java.util.ArrayList;
import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;

/**
 *
 * @author edgar
 */
public class Grupo extends org.apache.struts.action.ActionForm {

    private String nombre_grupo;
    private String string_grupo;
    private ArrayList<Usuario> integrantes_grupo;
    private String causas_grupo;
    private String acciones_grupo;
    private String plan_grupo;

    public String getNombre_grupo() {
        return nombre_grupo;
    }

    public void setNombre_grupo(String tema_grupo) {
        this.nombre_grupo = tema_grupo;
    }

    public String getString_grupo() {
        return string_grupo;
    }

    public void setString_grupo(String StringGrupo) {
        this.string_grupo = StringGrupo;
    }

    public ArrayList<Usuario> getIntegrantes_grupo() {
        return integrantes_grupo;
    }

    public void setIntegrantes_grupo(ArrayList<Usuario> integrantes_grupo) {
        this.integrantes_grupo = integrantes_grupo;
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
    public Grupo() {
        super();
    }

    public Grupo(String nombre, ArrayList<Usuario> integrantes, String causas, String acciones, String plan) {
        super();
        // TODO Auto-generated constructor stub
        this.nombre_grupo = nombre;
        this.integrantes_grupo = integrantes;
        this.causas_grupo = causas;
        this.acciones_grupo = acciones;
        this.plan_grupo = plan;
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
