package domain;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import javax.servlet.http.HttpServletRequest;

import domain.Usuario;
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
    private String noConformidad;
    private String error;
    private String registro_nc;
    private String situacion_nc;
    private int origen_nc;

    
    private String clausula_nc1;
    private String requisito_nc1;
    private String declaracion_nc1;
    private String codigo_nc1;
    
    private String clausula_nc2;
    private String requisito_nc2;
    private String declaracion_nc2;
    private String codigo_nc2;
    
    private String grupo_nc;
    private String encargado;

    public String getEncargado() {
        return encargado;
    }

    public void setEncargado(String encargado) {
        this.encargado = encargado;
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

    public String getGrupo_nc() {
        return grupo_nc;
    }

    public void setGrupo_nc(String grupo_nc) {
        this.grupo_nc = grupo_nc;
    }
    
    public String getError() {
        return error;
    }

    public void setError(String error) {
        this.error = error;
    }
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

    public String getNoConformidad() {
        return noConformidad;
    }

    public void setNoConformidad(String nc) {
        this.noConformidad = nc;
    }

    /**
     *
     */
    public Grupo() {
        super();
    }

    public Grupo(String nombre, ArrayList<Usuario> integrantes, String nc) {
        super();
        // TODO Auto-generated constructor stub
        this.nombre_grupo = nombre;
        this.integrantes_grupo = integrantes;
        this.noConformidad = nc;
    }

    public Grupo(String nombre, ArrayList<Usuario> integrantes) {
        super();
        // TODO Auto-generated constructor stub
        this.nombre_grupo = nombre;
        this.integrantes_grupo = integrantes;
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
