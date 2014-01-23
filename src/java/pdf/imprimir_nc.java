/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pdf;

import DBMS.DBMS;
import domain.Accion;
import domain.NoConformidad;
import domain.Usuario;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import java.sql.Connection;
import java.sql.DriverManager;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import net.sf.jasperreports.engine.JRExporter;
import net.sf.jasperreports.engine.JRExporterParameter;
import net.sf.jasperreports.engine.JasperExportManager;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.engine.JasperReport;
import net.sf.jasperreports.engine.data.JRBeanCollectionDataSource;
import net.sf.jasperreports.engine.export.JRPdfExporter;
import net.sf.jasperreports.engine.util.JRLoader;
import net.sf.jasperreports.view.JasperDesignViewer;
import net.sf.jasperreports.view.JasperViewer;
import static org.postgresql.jdbc2.EscapedFunctions.LOG;

/**
 *
 * @author edgar
 */
public class imprimir_nc extends org.apache.struts.action.Action {

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

        Class.forName("org.postgresql.Driver");
        Connection conexion = DriverManager.getConnection("jdbc:postgresql://localhost:5432/prueba", "postgres", "postgres");

        JasperReport reporte;
        reporte = (JasperReport) JRLoader.loadObjectFromFile("/home/edgar/NetBeansProjects/ModuloGestionCalidad/quejatemplate.jasper");

        Map<String, Object> parametros = new HashMap<String, Object>();
        parametros.put("registronc", request.getParameter("registro"));

        JasperPrint reporteQueja = JasperFillManager.fillReport(reporte, parametros, conexion);

        JRExporter exporter = new JRPdfExporter();
        /*  exporter.setParameter(JRExporterParameter.JASPER_PRINT, jasperPrint);
         exporter.setParameter(JRExporterParameter.OUTPUT_FILE, new java.io.File("/home/edgar/NetBeansProjects/ModuloGestionCalidad/quejagenerada.pdf"));
         exporter.exportReport();*/
        String nombreArchivo = "NoConformidad.pdf";
        JasperViewer.viewReport(reporteQueja);
        JasperExportManager.exportReportToPdfFile(reporteQueja, nombreArchivo);

        NoConformidad nc = new NoConformidad();
        String nombreNc = (String) request.getParameter("registro");
        String origen = "";
        ArrayList<Accion> acciones_preventivas = new ArrayList<Accion>();
        ArrayList<Accion> acciones_correctivas = new ArrayList<Accion>();
        ArrayList<Accion> acciones_terminadas = new ArrayList<Accion>();
        nc = DBMS.getInstance().buscarNc(nombreNc);

        /* Origen segun el numero */
        if (nc.getOrigen_nc() == 1) {
            origen = "Queja";
        } else if (nc.getOrigen_nc() == 2) {
            origen = "Auditoria";
        } else if (nc.getOrigen_nc() == 3) {
            origen = "Revision del SGC";
        } else if (nc.getOrigen_nc() == 4) {
            origen = "Oportunidad de Mejora";
        } else if (nc.getOrigen_nc() == 5) {
            origen = "Trabajo No Conforme";
        } else if (nc.getOrigen_nc() == 6) {
            origen = "Otro";
        }
        nc.setCodigo_origen_nc(origen);
        request.setAttribute("nc", nc);
        Accion accion = new Accion();
        accion.setAccion("Accion");
        accion.setProceso("Proceso");
        accion.setResponsable("Responsable");
        accion.setRecursos("Recursos");
        request.setAttribute("accion", accion);
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

        if (DBMS.getInstance().verificarMiembroEncargado(usbid, NombreG)) {
            request.setAttribute("visible", "visible");
        } else {
            request.setAttribute("visible", "hidden");
        }

        return mapping.findForward(SUCCESS);
    }
}
