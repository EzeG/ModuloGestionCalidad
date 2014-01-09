/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package grupo.action;
import DBMS.DBMS;
import domain.Accion;
import domain.Usuario;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import java.util.ArrayList;
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
 * @author ani
 */
public class TerminarAccion extends org.apache.struts.action.Action {

    /* forward name="success" path="" */
    private static final String SUCCESS = "success";

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
        
        Accion acc = (Accion) form;
        boolean terminada;
        
        terminada = DBMS.getInstance().terminarAccion(acc.getRegistro_nc(), acc.getAccion());
        if(terminada) {
            acc.setMensaje("La acción '"+acc.getAccion()+"' ha sido terminada.");
            ArrayList<Usuario> usuarios = DBMS.getInstance().consultarUsuariosCalidad();
            final String username = "ulab-calidad@usb.ve";
		final String password = "coordcalidad";
                String to;
                
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
            for (int i=0; i < usuarios.size();i++) {
                to = usuarios.get(i).getEmail();
                try {
 
			Message message = new MimeMessage(session);
			message.setFrom(new InternetAddress(username));
			message.setRecipients(Message.RecipientType.TO,
				InternetAddress.parse(to));
			message.setSubject("SIGULAB-Accion terminada");
			message.setText("Se ha terminada la acción "+acc.getAccion()+" asociada a la no conformidad "+acc.getRegistro_nc()+"\n\nPara más información ingrese al módulo de gestión de calidad SIGULAB");
 
			Transport.send(message);
 
		} catch (MessagingException e) {
			throw new RuntimeException(e);
		}
            }
        }
        else {
            acc.setMensaje("La acción '"+acc.getAccion()+"' no se ha podido terminar.");
        }
        request.setAttribute("Accion", acc);
        return mapping.findForward(SUCCESS);
    }
}
