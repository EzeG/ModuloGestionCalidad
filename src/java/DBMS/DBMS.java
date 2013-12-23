/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DBMS;

import domain.Grupo;
import domain.Publicacion;
import domain.NoConformidad;
import domain.Usuario;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;
import java.sql.Timestamp;

/**
 *
 * @author edgar
 */
public class DBMS {

    static private Connection conexion;
    static private DBMS instance = null;

    protected DBMS() {
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
                    "jdbc:postgresql://localhost:5432/CALIDAD",
                    "postgres",
                    "123");
            return true;
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return false;
    }

    /*
        
     */
    public ArrayList<Usuario> consultarUsuarios(String user) {
        PreparedStatement usConsulta;
        try {
            ArrayList<Usuario> usuarios = new ArrayList<Usuario>();
            usConsulta = conexion.prepareStatement("SELECT * FROM mod1.USUARIO WHERE NombreUsuario = \'" + user + "\';");
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
    
    public ArrayList<NoConformidad> consultarNC(String NC) {
        PreparedStatement ncConsulta;
        try {
            ArrayList<NoConformidad> noConformidades = new ArrayList<NoConformidad>();
            ncConsulta = conexion.prepareStatement("SELECT * FROM mod1.NOCONFORMIDAD WHERE Registro = \'" + NC + "\';");
            ResultSet rs = ncConsulta.executeQuery();
            while (rs.next()) {
                NoConformidad nc = new NoConformidad(rs.getString("registro"), rs.getString("situacion"), rs.getInt("procedencia"),rs.getInt("documento"), rs.getString("clausula"), rs.getString("requisito"),rs.getString("declaracion"), rs.getString("codigo"));
                noConformidades.add(nc);
            }
            return noConformidades;
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return null;

    }

    public Usuario buscarUsuario(String id) {
        PreparedStatement usConsulta;
        try {
            usConsulta = conexion.prepareStatement("SELECT * FROM mod1.USUARIO WHERE USBID = \'" + id + "\';");
            ResultSet rs = usConsulta.executeQuery();
            if (rs.next()) {
                Usuario us = new Usuario(rs.getString("NombreUsuario"), rs.getString("USBID"), rs.getString("Email"));
                return us;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return null;

    }

    /*
        Busca Usuarios que no estan en el grupo 'grupo'
    */
    public ArrayList<Usuario> usuariosSinGrupo(String grupo) {
        PreparedStatement usConsulta;
        try {
            ArrayList<Usuario> usuarios = new ArrayList<Usuario>();
            String query = "SELECT * FROM \"mod1\".USUARIO WHERE USBID NOT IN(SELECT USBID FROM \"mod1\".Conforma WHERE registroGrupo = \'" + grupo + "\');";
            usConsulta = conexion.prepareStatement(query);
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

    /*
     Devuelve todos los usuarios de un grupo.
     */
    public ArrayList<Usuario> consultarUsuariosGU(String grupo) {
        PreparedStatement usConsulta;
        try {
            ArrayList<Usuario> usuarios = new ArrayList<Usuario>();
            usConsulta = conexion.prepareStatement("SELECT USBID FROM mod1.Conforma WHERE registroGrupo = \'" + grupo + "\';");
            ResultSet rs = usConsulta.executeQuery();
            while (rs.next()) {
                Usuario us = buscarUsuario(rs.getString("USBID"));
                usuarios.add(us);
            }
            return usuarios;
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return null;

    }

    public ArrayList<Publicacion> consultarPublicacion() {
        PreparedStatement usConsulta = null;        
        try {
            ArrayList<Publicacion> pub = new ArrayList<Publicacion>();
            usConsulta = conexion.prepareStatement("SELECT * FROM \"mod1\".PUBLICACION;");
            ResultSet rs = usConsulta.executeQuery();
            while (rs.next()) {
                Publicacion us = new Publicacion();
                us.setTitulo_publicacion(rs.getString("titulo"));
                us.setContenido_publicacion(rs.getString("contenido"));
                pub.add(us);
            }
            return pub;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        
        return null;   
    }
    
    public ArrayList<Publicacion> consultarPublicacion(String Publicacion) {
        PreparedStatement usConsulta = null;        
        try {
            ArrayList<Publicacion> pub = new ArrayList<Publicacion>();
            usConsulta = conexion.prepareStatement("SELECT * FROM mod1.PUBLICACION WHERE Titulo = \'" + Publicacion + "\';");
            ResultSet rs = usConsulta.executeQuery();
            while (rs.next()) {
                Publicacion us = new Publicacion();
                us.setTitulo_publicacion(rs.getString("titulo"));
                us.setContenido_publicacion(rs.getString("contenido"));
                pub.add(us);
            }
            return pub;
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
            return (i > 0);
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return false;
    }

    /*
     * @param g
     * @return 
     */
    public boolean agregarGrupo(Grupo g) {
        PreparedStatement gruAgregar;
        boolean retorno = true;

        try {
            gruAgregar = conexion.prepareStatement("INSERT INTO \"mod1\".GRUPO VALUES (?);");
            gruAgregar.setString(1, g.getNombre_grupo());
            Integer i = gruAgregar.executeUpdate();
            if (i > 0) {
                for (int j = 0; j < g.getIntegrantes_grupo().size(); j++) {
                    retorno = retorno && agregarRelacionGU(g.getIntegrantes_grupo().get(j), g.getNombre_grupo());
                }
                return retorno;
            } else {
                return false;
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return false;
    }

    public boolean agregaNoConformidad(NoConformidad nc) {
        PreparedStatement ncAgregar;
        Date ref = new Date();
        Timestamp fecha = new Timestamp(ref.getTime());
        String buff;

        try {
            ncAgregar = conexion.prepareStatement("INSERT INTO \"mod1\".noconformidad VALUES (?,?,?,?,?,?,?,?,?);");
            ncAgregar.setTimestamp(1, fecha);
            ncAgregar.setString(2, nc.getRegistro_nc());
            ncAgregar.setString(3, nc.getSituacion_nc());
            ncAgregar.setInt(4, nc.getOrigen_nc());
            ncAgregar.setInt(5, nc.getDocumento_nc());
            ncAgregar.setString(6, nc.getClausula_nc());
            ncAgregar.setString(7, nc.getRequisito_nc());
            ncAgregar.setString(8, nc.getDeclaracion_nc());
            ncAgregar.setString(9, nc.getCodigo_nc());
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
    
    public boolean asociarNoConformidad(String regGrupo, String Nc) {
        PreparedStatement ncAsociar;
        try {
            ncAsociar = conexion.prepareStatement("INSERT INTO \"mod1\".Trabaja VALUES (?,?);");
            ncAsociar.setString(1, regGrupo);
            ncAsociar.setString(2, Nc);
            int i = ncAsociar.executeUpdate();
            return i > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    public NoConformidad buscarNoConformidad(String regGrupo) {
        PreparedStatement ncBuscar;
        NoConformidad nc = new NoConformidad();

        try {
            ncBuscar = conexion.prepareStatement("SELECT * FROM mod1.trabaja, mod1.noconformidad WHERE mod1.trabaja.registro=noconformidad.registro AND mod1.trabaja.registrogrupo = \'" + regGrupo + "\'");
            ResultSet rs = ncBuscar.executeQuery();
            if (rs.next()) {
                nc.setRegistro_nc(rs.getString("registro"));
                nc.setSituacion_nc(rs.getString("situacion"));
                nc.setOrigen_nc(rs.getInt("procedencia"));
                nc.setDocumento_nc(rs.getInt("documento"));
                nc.setClausula_nc(rs.getString("clausula"));
                nc.setRegistro_nc(rs.getString("requisito"));
                nc.setDeclaracion_nc(rs.getString("declaracion"));
                nc.setCodigo_nc(rs.getString("codigo"));
            }
            return nc;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

   public ArrayList<NoConformidad> consultarTrabaja(String grupo) {
        PreparedStatement consultaT;
        ArrayList<NoConformidad> ncs = new ArrayList<NoConformidad>();
        try {
            
            consultaT = conexion.prepareStatement("SELECT * FROM mod1.TRABAJA WHERE RegistroGrupo = \'" + grupo + "\';");
            ResultSet rs = consultaT.executeQuery();
            while (rs.next()) {
                ArrayList<NoConformidad> nc = consultarNC(rs.getString("Registro"));
                ncs.add(nc.get(0));
            }
            return ncs;
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return ncs;

    }

    public boolean eliminarNoConformidad(String regNC) {
        PreparedStatement ncEliminar;
        try {
            ncEliminar = conexion.prepareStatement("DELETE FROM \"mod1\".noconformidad " + "WHERE registro ='" + regNC + "';");
            int i = ncEliminar.executeUpdate();
            return i > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }


    public ArrayList<Grupo> consultarGrupos() {
        PreparedStatement psConsultar;
        ArrayList<Grupo> grupos = new ArrayList<Grupo>(0);

        try {
            psConsultar = conexion.prepareStatement("SELECT * FROM \"mod1\".GRUPO;");
            ResultSet rs = psConsultar.executeQuery();
            while (rs.next()) {
                Grupo g = new Grupo();
                g.setNombre_grupo(rs.getString("registroGrupo"));
                grupos.add(g);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return grupos;
    }

    public boolean eliminarGrupo(Grupo g) {

        try {

            String sqlquery = "DELETE FROM \"mod1\".Trabaja "
                    + "WHERE registroGrupo ='" + g.getNombre_grupo() + "';";
            Statement stmt = conexion.createStatement();
            Integer i = 1;
            i = stmt.executeUpdate(sqlquery);
            if (true) {
                sqlquery = "DELETE FROM \"mod1\".Conforma "
                        + "WHERE registroGrupo ='" + g.getNombre_grupo() + "';";
                stmt = conexion.createStatement();
                Integer j = 1;
                j = stmt.executeUpdate(sqlquery);
                if (j > 0) {
                    sqlquery = "DELETE FROM \"mod1\".GRUPO "
                            + "WHERE registroGrupo ='" + g.getNombre_grupo() + "';";
                    stmt = conexion.createStatement();
                    Integer k = 1;
                    k = stmt.executeUpdate(sqlquery);
                    return (k > 0);
                }
            } else {
                return false;
            }
        } catch (SQLException ex) {
            ex.printStackTrace();

        }
        return false;
    }
    /*
     public boolean modificarGrupo(NoConformidad nc) {
     PreparedStatement psModificar = null;
     try {
     psModificar = conexion.prepareStatement("UPDATE \"mod1\".GRUPO SET email= ?, nombre= ?, privilegio= ? "
     + "WHERE nombreusuario =? ");
     psModificar.setString(1, u.getEmail());
     psModificar.setString(2, u.getNombre());
     psModificar.setInt(3, u.getPrivilegio());
     psModificar.setString(4, u.getNombreusuario());
            
     Integer i = psModificar.executeUpdate();
     return i > 0;
     } catch (SQLException ex) {
     ex.printStackTrace();
     }
     return false;
     }*/

    public static void main(String argv[]) {
        ArrayList<Usuario> test;
        ArrayList<Grupo> test1;
        int i;
        boolean asuha;
        NoConformidad nc = new NoConformidad("Registrodfga4523", "Situacion", 1, 1, "Clausula", "Registro", "Declaracion", "Codigo");

        Publicacion pub = new Publicacion();

        pub.setTitulo_publicacion("TITULO");
        pub.setContenido_publicacion("ASUHAUSHAIUGSIAGSIAGHS");

        asuha = DBMS.getInstance().agregaNoConformidad(nc);

        asuha = DBMS.getInstance().eliminarNoConformidad(nc.getRegistro_nc());

        i = 1;

    }

}