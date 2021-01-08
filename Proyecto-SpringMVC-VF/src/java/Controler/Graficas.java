/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controler;

import com.mysql.cj.xdevapi.Result;
import config.Conexion;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.jfree.chart.ChartFactory;
import org.jfree.chart.ChartUtilities;
import org.jfree.chart.JFreeChart;
import org.jfree.chart.plot.PiePlot3D;
import org.jfree.chart.plot.PlotOrientation;
import org.jfree.data.category.DefaultCategoryDataset;
import org.jfree.data.general.DefaultPieDataset;
import org.springframework.jdbc.core.JdbcTemplate;

/**
 *
 * @author user
 */
public class Graficas extends HttpServlet {
 Conexion con= new Conexion();
    JdbcTemplate jdbcTemplate = new JdbcTemplate(con.Conectar());
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
         throws ServletException, IOException {
       
        response.setContentType("image/PNG");
        OutputStream out =response.getOutputStream();
        try{
            ResultSet rs= null;
            PreparedStatement ps = null;
            int total=0;
           try{
            String consulta="SELECT SUM(V.Monto) AS Total ,MONTHNAME(V.fechaVenta) AS Mes FROM tblventa V GROUP BY Mes;";
            ps= this.con.Conectar().getConnection().prepareStatement(consulta);
            rs= ps.executeQuery();
            DefaultCategoryDataset data = new DefaultCategoryDataset();
            while(rs.next()){
                data.setValue(rs.getInt(1), rs.getString(1), rs.getString(2));
            }
            JFreeChart cha = ChartFactory.createBarChart3D("Monto Acumulado en ventas Mensualmente", "MES", "Monto en ventas", data, PlotOrientation.VERTICAL, true, true, true);
            int alto = 550;
            int ancho=650;
       
            ChartUtilities.writeChartAsPNG(out, cha, alto, ancho);
            ps.close();
            rs.close();
        }catch(Exception ex){
            
        }
      } finally{
            out.close();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
