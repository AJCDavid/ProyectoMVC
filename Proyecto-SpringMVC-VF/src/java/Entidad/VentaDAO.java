/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Entidad;

import config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import org.springframework.jdbc.core.JdbcTemplate;

/**
 *
 * @author user
 */
public class VentaDAO {
    Conexion con= new Conexion();
    JdbcTemplate jdbcTemplate = new JdbcTemplate(con.Conectar());
    PreparedStatement ps;
    ResultSet rs;
    int r;
    
    public String GenerarSerie(){
        String numeroserie="";
        try{
           String sql="select max(numeroSerie) from tblventa";
          ps= this.con.Conectar().getConnection().prepareStatement(sql);
          rs= ps.executeQuery();
          while(rs.next()){
              numeroserie=rs.getString(1);
          }
        }catch(Exception e){
         
        }
        return numeroserie;
    }
    
    public String IdVenta(){
        String idVenta="";
           try{
           String sql="select max(idVenta) from tblventa";
          ps= this.con.Conectar().getConnection().prepareStatement(sql);
          rs= ps.executeQuery();
          while(rs.next()){
              idVenta=rs.getString(1);
          }
        }catch(Exception e){
         
        }
        return idVenta;
    }
    
    public int guardarVenta (Venta ve){
        try{
            String sqlv="insert into tblventa(idCliente,idEmpleado,numeroSerie,FechaVenta,Monto) values(?,?,?,?,?)";
            ps= this.con.Conectar().getConnection().prepareStatement(sqlv);
            ps.setInt(1, ve.getIdcliente());
            ps.setInt(2, ve.getIdempleado());
            ps.setString(3, ve.getNumeroSerie());
            ps.setString(4, ve.getFecha());
            ps.setDouble(5, ve.getMonto());
            ps.executeUpdate();
        }catch(Exception e){
            
        }
        return r;
    }
    
    public int guardarDetalleventas(Venta venta){
        try{
           String sqldv="insert into tbldetalleventa (idVenta, idPlato,Cantidad,PrecioVenta) values(?,?,?,?)";
            ps= this.con.Conectar().getConnection().prepareStatement(sqldv);
            ps.setInt(1, venta.getId());
            ps.setInt(2, venta.getIdplato());
            ps.setInt(3, venta.getCantidad());
            ps.setDouble(4, venta.getPrecio());
            ps.executeUpdate();
        }catch(Exception e){
            
        }
        return r;
    }
}
