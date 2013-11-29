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
import java.util.Date;
import java.sql.Timestamp;
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
            gruAgregar.setString(1, g.getNombre_grupo());
            Integer i = gruAgregar.executeUpdate();
            if(i > 0) {
                ArrayList<Usuario> us;
                us = g.getIntegrantes_grupo();
                for(int pos=0;pos < us.size();pos++) {
                    retorno = retorno && agregarRelacionGU(us.get(pos), g.getNombre_grupo());
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
        Date ref = new Date();
        Timestamp fecha = new Timestamp(ref.getTime());
        
        
        try {
            boolean retorno = true;
            ncAgregar = conexion.prepareStatement("INSERT INTO \"mod1\".NOCONFORMIDAD VALUES (?,?,?,?,?);");
            ncAgregar.setTimestamp(1, fecha);
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
    
        public boolean agregarPublicacion(Publicacion p) {
        PreparedStatement pubAgregar = null;
        
        try {
            pubAgregar = conexion.prepareStatement("INSERT INTO \"mod1\".PUBLICACION VALUES (?,?);");
            pubAgregar.setString(1, p.getTitulo_publicacion());
            pubAgregar.setString(2, p.getContenido_publicacion());
            Integer i = pubAgregar.executeUpdate();
            return i > 0;
            
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    public ArrayList<Grupo> consultarGrupos() {
        PreparedStatement psConsultar = null;
        ArrayList<Grupo> grupos = new ArrayList<Grupo>(0);
        
        try {
            psConsultar = conexion.prepareStatement("SELECT * FROM \"mod1\".GRUPO;");
            ResultSet rs = psConsultar.executeQuery();
            while (rs.next()) {
                Grupo g = new Grupo();
                g.setNombre_grupo(rs.getString("nombreGrupo"));
                grupos.add(g);
            }
            
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return grupos;
    }
    
    
    public static void main(String argv[]){
        ArrayList<Usuario> test;
        ArrayList<Grupo> test1;
        int i;
        boolean asuha;
                
        DBMS base = DBMS.getInstance();
        
        test1 = base.consultarGrupos();
        
        
        
         i=1;

    }
    
    
}
