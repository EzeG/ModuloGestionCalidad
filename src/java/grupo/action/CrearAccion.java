package grupo.action;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import domain.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import java.util.ArrayList;
import DBMS.DBMS;
import java.util.Date;
import java.util.Properties;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

/**
 *
 * @author edgar
 */
public class CrearAccion extends org.apache.struts.action.Action {

    /* forward name="success" path="" */
    private static final String SUCCESS = "success";
    private static final String FAILURE = "failure";

    /**
     * This is the action called from the Struts framework.
     *
     * @param mapping The ActionMapping used to select this instance.
     * @param form The optional ActionForm bean for this request.
     * @param request The HTTP Request we are processing.
     * @param response The HTTP Response we are processing.
     * @throws java.lang.Exception
     * @return
     */
    @Override
    public ActionForward execute(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {

        Accion accion = (Accion) form;
        Date fechaI = accion.getFechainicio();
        Accion accionTemp = new Accion();
        if(DBMS.getInstance().agregarAccion(accion)){
             NoConformidad nc = new NoConformidad();
        String nombreNc = accion.getRegistro_nc();
        String origen = "";
        ArrayList<Accion> acciones_preventivas = new ArrayList<Accion>();
        ArrayList<Accion> acciones_correctivas = new ArrayList<Accion>();
        ArrayList<Accion> acciones_terminadas = new ArrayList<Accion>();
        nc = DBMS.getInstance().buscarNc(nombreNc);
        ArrayList<Usuario> listUsuarios = new ArrayList<Usuario>();
        String registroGrupo;
        registroGrupo = DBMS.getInstance().buscarGrupoPNC(nombreNc);
        if (registroGrupo != null) {
            listUsuarios = DBMS.getInstance().consultarUsuariosGU(registroGrupo);
        }
        request.setAttribute("integrantes", listUsuarios);
        /* Origen segun el numero */
        if(nc.getOrigen_nc() == 1){
            origen = "Queja";
        } else if(nc.getOrigen_nc() == 2){
            origen = "Auditoria";
        } else if(nc.getOrigen_nc() == 3){
            origen = "Revision del SGC";
        } else if(nc.getOrigen_nc() == 4){
            origen = "Oportunidad de Mejora";
        } else if(nc.getOrigen_nc() == 5){
            origen = "Trabajo No Conforme";
        } else if(nc.getOrigen_nc() == 6){
            origen = "Otro";
        }  
        if(nc.getRequisito_nc1().equals("--------"))
            nc.setCodigo_nc1("--------");
        if(nc.getRequisito_nc2().equals("--------"))
            nc.setCodigo_nc2("--------");
        nc.setCodigo_origen_nc(origen);
        nc.setError("");
        request.setAttribute("nc", nc);
        accionTemp.setAccion("Accion");
        accionTemp.setProceso("Proceso");
        accionTemp.setResponsable("Responsable");
        accionTemp.setRecursos("Recursos");
        request.setAttribute("accion", accionTemp);
        acciones_preventivas = DBMS.getInstance().consultarAccionesPreventivas(nc.getRegistro_nc());
        acciones_correctivas = DBMS.getInstance().consultarAccionesCorrectivas(nc.getRegistro_nc());
        acciones_terminadas = DBMS.getInstance().consultarAccionesTerminadas(nc.getRegistro_nc());
        request.setAttribute("AccionPreventiva", acciones_preventivas);
        request.setAttribute("AccionCorrectiva", acciones_correctivas);
        request.setAttribute("AccionTerminada", acciones_terminadas);
        String NombreG = DBMS.getInstance().buscarGrupoPNC(nc.getRegistro_nc());
        Usuario usuario;
        usuario = (Usuario) request.getSession().getAttribute("usuario");
        String usbid = usuario.getUsbid();
            
         if(DBMS.getInstance().verificarMiembroEncargado(usbid, NombreG)) {
             request.setAttribute("visible", "visible");
         }else{
             request.setAttribute("visible", "hidden");
         }    
            //request.setAttribute("visible", "visible");
             final String username = "ulab-calidad@usb.ve";
		final String password = "coordcalidad";
                String to = DBMS.getInstance().getEmail(accion.getResponsable());
                Usuario us = DBMS.getInstance().buscarUsuario(accion.getResponsable());
		Properties props = new Properties();
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.starttls.enable", "true");
		props.put("mail.smtp.host", "smtp.gmail.com");
		props.put("mail.smtp.port", "587");
 
		Session session = Session.getInstance(props,
		  new javax.mail.Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(username, password);
			}
		  });
 
		try {
 
			Message message = new MimeMessage(session);
			message.setFrom(new InternetAddress(username));
			message.setRecipients(Message.RecipientType.TO,
				InternetAddress.parse(to));
			message.setSubject("SIGULAB-Nueva acción");
			message.setText(""+us.getNombre()+", "
				+ "\nEres el encargado de una nueva acción para la resolución de la no conformidad "+accion.getRegistro_nc()
                                + "\nDescripción: "+accion.getAccion()
                                + "\nTipo: "+accion.getTipo()
                                +"\n\nPara más información ingrese al módulo de gestión de calidad SIGULAB");
 
			Transport.send(message);
 
		} catch (MessagingException e) {
			throw new RuntimeException(e);
		}
            return mapping.findForward(SUCCESS);
            
        }else{



                       
            
        NoConformidad nc = new NoConformidad();
        String nombreNc = accion.getRegistro_nc();
        String origen = "";
        ArrayList<Accion> acciones_preventivas = new ArrayList<Accion>();
        ArrayList<Accion> acciones_correctivas = new ArrayList<Accion>();
        ArrayList<Accion> acciones_terminadas = new ArrayList<Accion>();
        nc = DBMS.getInstance().buscarNc(nombreNc);
        ArrayList<Usuario> listUsuarios = new ArrayList<Usuario>();
        String registroGrupo;
        request.setAttribute("registro_nc", nombreNc);
        registroGrupo = DBMS.getInstance().buscarGrupoPNC(nombreNc);
        if (registroGrupo != null) {
            listUsuarios = DBMS.getInstance().consultarUsuariosGU(registroGrupo);
        }

        request.setAttribute("accion", accion);
        request.setAttribute("integrantes", listUsuarios);
        nc.setError("Ya existe la acción que intentó agregar");
        
        /* Origen segun el numero */
        if(nc.getOrigen_nc() == 1){
            origen = "Queja";
        } else if(nc.getOrigen_nc() == 2){
            origen = "Auditoria";
        } else if(nc.getOrigen_nc() == 3){
            origen = "Revision del SGC";
        } else if(nc.getOrigen_nc() == 4){
            origen = "Oportunidad de Mejora";
        } else if(nc.getOrigen_nc() == 5){
            origen = "Trabajo No Conforme";
        } else if(nc.getOrigen_nc() == 6){
            origen = "Otro";
        }  
        if(nc.getRequisito_nc1().equals("--------"))
            nc.setCodigo_nc1("--------");
        if(nc.getRequisito_nc2().equals("--------"))
            nc.setCodigo_nc2("--------");
        nc.setCodigo_origen_nc(origen);
        request.setAttribute("nc", nc);
        accionTemp.setAccion("Accion");
        accionTemp.setProceso("Proceso");
        accionTemp.setResponsable("Responsable");
        accionTemp.setRecursos("Recursos");
        request.setAttribute("accion", accionTemp);
        acciones_preventivas = DBMS.getInstance().consultarAccionesPreventivas(nc.getRegistro_nc());
        acciones_correctivas = DBMS.getInstance().consultarAccionesCorrectivas(nc.getRegistro_nc());
        acciones_terminadas = DBMS.getInstance().consultarAccionesTerminadas(nc.getRegistro_nc());
        request.setAttribute("AccionPreventiva", acciones_preventivas);
        request.setAttribute("AccionCorrectiva", acciones_correctivas);
        request.setAttribute("AccionTerminada", acciones_terminadas);
        String NombreG = DBMS.getInstance().buscarGrupoPNC(nc.getRegistro_nc());
        Usuario usuario;
        usuario = (Usuario) request.getSession().getAttribute("usuario");
        String usbid = usuario.getUsbid();
            
         if(DBMS.getInstance().verificarMiembroEncargado(usbid, NombreG)) {
             request.setAttribute("visible", "visible");
         }else{
             request.setAttribute("visible", "hidden");
         }    
       
        
        
            return mapping.findForward(FAILURE);
        }    
    }
 
}