/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Entidad;

import config.Conexion;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import org.springframework.jdbc.core.JdbcTemplate;

/**
 *
 * @author user
 */
public class ClienteDAO {
    Conexion con= new Conexion();
    JdbcTemplate jdbcTemplate = new JdbcTemplate(con.Conectar());
    PreparedStatement ps;
    ResultSet rs;
    int r;
    
    public Cliente buscar(String cedula){
        Cliente c=new Cliente();
        String sql="Select * from tblcliente where Cedula="+cedula;
        try{
           ps= this.con.Conectar().getConnection().prepareStatement(sql);
            rs=ps.executeQuery();
            while (rs.next()){
                c.setId(rs.getInt(1));
                c.setCedula(rs.getString(2));
                 c.setNombre(rs.getString(3));
                c.setTelefono(rs.getString(4));
                c.setCorreo(rs.getString(5));
            }
        }catch(Exception e){
            
        }
        return c;
    }
}
