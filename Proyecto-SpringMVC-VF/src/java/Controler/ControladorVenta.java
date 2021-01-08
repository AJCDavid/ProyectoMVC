/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controler;

import Entidad.Cliente;
import Entidad.ClienteDAO;
import Entidad.GenerarSerie;
import Entidad.Plato;
import Entidad.PlatoDAO;
import Entidad.Venta;
import Entidad.VentaDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author user
 */
public class ControladorVenta extends HttpServlet {
Cliente c = new Cliente();
ClienteDAO cdao = new ClienteDAO();
Plato pl = new Plato();
PlatoDAO pldao = new PlatoDAO();
VentaDAO vdao = new VentaDAO();
int ide;//idempleado
int idc;//idliente
int idp;//idplato

Venta v = new Venta();
List<Venta>lista=new ArrayList<>();
int item;
int cod;
String descripcion;
double precio;
int cantidad;
double subtotal; 
double totalPagar;
String numeroserie;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String menu = request.getParameter("menu");
         String accion =request.getParameter("accion");
         if(menu.equals("RegistrarVenta")){
           switch(accion){
               case "BuscarCliente":
               String cedula=request.getParameter("cedula");
               c.setCedula(cedula);
               c=cdao.buscar(cedula);
               request.setAttribute("c", c);
               break;
               case "BuscarProducto":
                   int idplato= Integer.parseInt(request.getParameter("idplato"));
                   pl = pldao.buscar(idplato);
                   request.setAttribute("c", c);
                   request.setAttribute("plato", pl);
                   request.setAttribute("totalPagar", totalPagar);
                   request.setAttribute("lista", lista);
                   break;
               case "Agregar":
                   request.setAttribute("c", c);
                   totalPagar=0.0;
                   item = item +1;
                   cod=pl.getId();
                   descripcion=request.getParameter("Nombreplato");
                   precio= Double.parseDouble(request.getParameter("Precio"));
                   cantidad= Integer.parseInt(request.getParameter("cantidad"));
                   subtotal = precio* cantidad;
                   
                   v = new Venta();//inicializa nueva venta
                   v.setItem(item);
                   v.setIdplato(cod);
                   v.setPrecio(precio);
                   v.setDescripcion(descripcion);
                   v.setCantidad(cantidad);
                   v.setSubtotal(subtotal);
                   lista.add(v);
                   request.setAttribute("lista", lista);
                   for(int i=0; i<lista.size();i++){
                     totalPagar=totalPagar+lista.get(i).getSubtotal();
                   }
                   request.setAttribute("totalPagar", totalPagar);
                   request.setAttribute("lista", lista);
                   break;
               case "GenerarVenta":
                   for (int i=0; i<lista.size();i++){
                      int cantidad = lista.get(i).getCantidad();
                      int idPlato = lista.get(i).getIdplato();
                      pl=pldao.buscar(idPlato);
                      int stac= pl.getStock()-cantidad;
                      pldao.actualizarStock(idPlato, stac);
                   }
                   v.setIdcliente(c.getId());
                   v.setIdempleado(1);
                   v.setNumeroSerie(numeroserie);
                   v.setFecha("2020-12-03");
                   v.setMonto(totalPagar);
                   vdao.guardarVenta(v);
                   
                   //guardar detalle venta
                   int idv=Integer.parseInt(vdao.IdVenta());
                   for(int i=0; i<lista.size();i++){
                       v =new Venta();
                       v.setId(idv);
                       v.setIdplato(lista.get(i).getIdplato());
                       v.setCantidad(lista.get(i).getCantidad());
                       v.setPrecio(lista.get(i).getPrecio());
                       vdao.guardarDetalleventas(v);
                   }
                    v = new Venta();
                    
                   break;
               case "Cancelar":
                    v = new Venta();
                   break;
             
               default:
                   numeroserie= vdao.GenerarSerie();
                   if(numeroserie==null){
                       numeroserie="00001";
                       request.setAttribute("nserie", numeroserie);
                   }else{
                       int incrementar= Integer.parseInt(numeroserie);
                       GenerarSerie gs = new GenerarSerie();
                       numeroserie=gs.NumeroSerie(incrementar);
                       request.setAttribute("nserie", numeroserie);
                   }
                request.getRequestDispatcher("RegistrarVenta.htm").forward(request, response);

           }  
         request.getRequestDispatcher("RegistrarVenta.htm").forward(request, response);
        
         
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
