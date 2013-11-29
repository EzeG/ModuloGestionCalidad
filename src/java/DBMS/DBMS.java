/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package DBMS;

import clases.Usuario;
import clases.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;


/**
 *
 * @author edgar
 */
public class DBMS {
    
    static private Connection conexion;
    static private DBMS instance = null;
    
    protected DBMS(){
    }
    
    static public DBMS getInstance() {
        if (null == DBMS.instance) {
            DBMS.instance = new DBMS();
        }
        conectar();
        return DBMS.instance;
    }
    
    public static boolean conectar() {
        try {
            Class.forName("org.postgresql.Driver");
//            La forma de esto debe ser la siguiente:
//                     conexion = DriverManager.getConnection(
//                    "jdbc:postgresql://localhost:5432/<database>",
//                    "<nombre de usuario psql>",
//                    "<clave de usuario psql>");
            conexion = DriverManager.getConnection(
                    "jdbc:postgresql://localhost:5432/prueba",
                    "postgres",
                    "postgres");
            return true;
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return false;
    }

    /*
     * Se sacan todos los usuarios de la tabla
     */
    public ArrayList<Usuario> consultarUsuarios() {
        PreparedStatement usConsulta = null;
        try {
            ArrayList<Usuario> usuarios = new ArrayList<Usuario>();
            usConsulta = conexion.prepareStatement("SELECT * FROM \"mod1\".USUARIO;");
            ResultSet rs = usConsulta.executeQuery();
            while (rs.next()) {
                Usuario us = new Usuario(rs.getString("NombreUsuario"), rs.getString("USBID"), rs.getString("Email"));
                usuarios.add(us);
            }
            return usuarios;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        
        return null;
        
    }

    public boolean agregarRelacionGU(Usuario u, String codigoG) {
        PreparedStatement confAgregar = null;
        try {
            boolean retorno = true;
            confAgregar = conexion.prepareStatement("INSERT INTO \"mod1\".Conforma VALUES (?,?);");
            confAgregar.setString(1, codigoG);
            confAgregar.setString(2, u.getUsbid());
            Integer i = confAgregar.executeUpdate();
            return(i>0);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        
        return false;
    }

    public boolean agregarGrupo(Grupo g) {
        PreparedStatement gruAgregar = null;
        try {
            boolean retorno = true;
            gruAgregar = conexion.prepareStatement("INSERT INTO \"mod1\".GRUPO VALUES (?);");
            gruAgregar.setString(1, g.getId_grupo());
            Integer i = gruAgregar.executeUpdate();
            if(i > 0) {
                ArrayList<Usuario> us = new ArrayList<Usuario>();
                us = g.getIntegrantes_grupo();
                for(int pos=0;pos < us.size();pos++) {
                    retorno = retorno && agregarRelacionGU(us.get(pos), g.getId_grupo());
                }
                return retorno;
            } else return false;

        } catch (SQLException e) {
            e.printStackTrace();
        }
        
        return false;
    }
    
    public boolean agregaNoConformidad(NoConformidad nc) {
        PreparedStatement ncAgregar = null;
        try {
            boolean retorno = true;
            ncAgregar = conexion.prepareStatement("INSERT INTO \"mod1\".NOCONFORMIDAD VALUES (?,?,?,?,?);");
            //ncAgregar.setString(1, nc.----;
            ncAgregar.setString(2, nc.getRegistro_nc());
            ncAgregar.setString(3, nc.getSituacion_nc());
            ncAgregar.setInt(4, nc.getOrigen_nc());
            ncAgregar.setString(5, nc.getDeclaracion_nc());
            Integer i = ncAgregar.executeUpdate();
            return i > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        
        return false;
    }

    public ArrayList<String> consultarGrupos() {
        PreparedStatement psConsultar = null;
        try {
            psConsultar = conexion.prepareStatement("SELECT * FROM \"mod1\".GRUPO;");
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return new ArrayList<String>();
    }
    
    
    public static void main(String argv[]){
        ArrayList<Usuario> test;
        int i;
        boolean asuha;
                
        DBMS base = DBMS.getInstance();
        
        
        
        test = base.consultarUsuarios();
                
        Grupo g = new Grupo("Grupo 1", "Los que saben", "No estamos conformes", test, "Causa!", "Accion!", "El Plan!");
        
        asuha = base.agregarGrupo(g);
        
        NoConformidad nc = new NoConformidad("registro", "situacion", 1, 2013, "documento", "clausula", "requisito", "declaracion", "codigo");
        
        asuha = base.agregaNoConformidad(nc);
        
        
        
        
         i=1;
        
    }
    
    
}
