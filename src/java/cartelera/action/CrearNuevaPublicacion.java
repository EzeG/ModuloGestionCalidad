package cartelera.action;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import domain.Publicacion;
import DBMS.DBMS;
import java.util.ArrayList;
import java.util.List;
import java.io.Writer;
import java.io.PrintWriter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

/**
 *
 * @author edgar
 */
public class CrearNuevaPublicacion extends org.apache.struts.action.Action {

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
      Publicacion p = (Publicacion) form;
      ArrayList<Publicacion> pub = DBMS.getInstance().consultarPublicacion(p.getTitulo_publicacion());
      
      if(pub.isEmpty()){
      if(DBMS.getInstance().agregarPublicacion(p)){
          return mapping.findForward(SUCCESS);
      }else{
          p.setError("Error al agregar su publicacion.");
          request.setAttribute("public",p);
          return mapping.findForward(FAILURE);
      }      
      }else{
          //este es el caso donde intenta agregar una publicacion con el titulo de una ya existente
          //hay q devolver el mensaje a nueva publicacion
          p.setError("Ya existe otra publicacion con este titulo");
          request.setAttribute("public",p);
          request.setAttribute("Titulo", p.getTitulo_publicacion());
        request.setAttribute("Contenido", p.getContenido_publicacion());
          return mapping.findForward(FAILURE);
      }
    }
}