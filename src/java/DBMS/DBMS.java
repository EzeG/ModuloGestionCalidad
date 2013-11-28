/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package DBMS;

import clases.*;
import java.sql.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
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
        try {
            ArrayList<Usuario> usuarios = new List<Usuario>();
            usConsulta = conexion.prepareStatement("SELECT * FROM \"mod1\".USUARIO;");
            ResultSet rs = usConsulta.executeQuery();
            while (rs.next()) {
                Usuario us = new Usuario(rs.getString("NombreUsuario"), rs.getString("USBID"), rs.getString("Email"));
                usuarios.add(us);
            }
            return usuarios
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public boolean agregarRelacionGU(Usuario u, String codigoG) {
        try {
            boolean retorno = True;
            confAgregar = conexion.prepareStatement("INSERT INTO \"mod1\".Conforma VALUES (?,?);");
            confAgregar.setString(1, u.getId());
            confAgregar.setString(2, codigoG);
            Integer i = confAgregar.executeUpdate();
            return(i>0);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public boolean agregarGrupo(Grupo g) {
        try {
            boolean retorno = True;
            gruAgregar = conexion.prepareStatement("INSERT INTO \"mod1\".GRUPO VALUES (?);");
            gruAgregar.setString(1, g.getCodigoGrupo());
            Integer i = gruAgregar.executeUpdate();
            if(i > 0) {
                ArrayList<Usuarios> us = new List<Usuarios>();
                us = g.getIntegrantes();
                for(int pos=0;i < us.length();pos++) {
                    retorno = retorno && agregarRelacionGU(us[pos], g.getCodigoGrupo());
                }
                return retorno;
            } else return false;

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    
    public boolean agregaNoConformidad(NoConformidad nc) {
        try {
            boolean retorno = True;
            ncAgregar = conexion.prepareStatement("INSERT INTO \"mod1\".NOCONFORMIDAD VALUES (?,?,?,?,?);");
            //ncAgregar.setString(1, nc.----;
            ncAgregar.setString(2, nc.getRegistro());
            ncAgregar.setString(3, nc.getSituacion());
            ncAgregar.setInt(4, nc.getProcedencia());
            ncAgregar.setString(5, nc.getDescripcionP());
            Integer i = ncAgregar.executeUpdate();
            return i > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public ArrayList<String, String> consularGrupos() {
        try {
            psConsultar = conexion.prepareStatement("SELECT * FROM \"mod1\".GRUPO;");
        } catch (SQL) {
            e.printStackTrace();
        }
    }
    public static void main(String argv[]){
        DBMS.getInstance();
    }
    
    
}
