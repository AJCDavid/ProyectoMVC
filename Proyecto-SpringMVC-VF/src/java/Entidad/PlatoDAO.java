/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Entidad;

import com.mysql.cj.protocol.Resultset;
import config.Conexion;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import org.springframework.jdbc.core.JdbcTemplate;

/**
 *
 * @author user
 */
public class PlatoDAO {
    Conexion con= new Conexion();
    JdbcTemplate jdbcTemplate = new JdbcTemplate(con.Conectar());
    PreparedStatement ps;
    ResultSet rs;
    int r;
    
    public Plato buscar(int idplato){
        Plato pl =new Plato();
        String sql="Select * from tblplato where idPlato="+idplato;
        try{
           ps= this.con.Conectar().getConnection().prepareStatement(sql);
            rs=ps.executeQuery();
            while (rs.next()){
                pl.setId(rs.getInt(1));
                pl.setNombre(rs.getString(2));
                 pl.setCategoria(rs.getString(3));
                pl.setCosto(rs.getDouble(4));
                pl.setStock(rs.getInt(5));
                pl.setCalidad(rs.getString(6));
            }
        }catch(Exception e){
            
        }
        return pl;
    }
    
    
    public int actualizarStock(int id, int Stock){
     try{
            String sql="update tblplato set Stock=? where idPlato=?";
            ps= this.con.Conectar().getConnection().prepareStatement(sql);
            ps.setInt(1, Stock);
            ps.setInt(2, id);
            ps.executeUpdate();
        }catch(Exception e){
            
        }
        return r;
}
    
  
}
