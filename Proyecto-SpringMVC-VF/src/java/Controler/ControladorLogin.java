/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controler;




import config.Conexion;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;

/**
 *
 * @author user
 */
@Controller
public class ControladorLogin {
    Conexion con= new Conexion();
    JdbcTemplate jdbcTemplate = new JdbcTemplate(con.Conectar());
    
    public boolean autenticacion(String Nombre, String Contrasenia){
       PreparedStatement pst =null;
       ResultSet rs=null;
       
       try{
            String consulta="Select * from tblempleado where Nombre=? and Contrasenia=?";
            pst= this.con.Conectar().getConnection().prepareStatement(consulta);
            pst.setString(1, Nombre);
            pst.setString(2, Contrasenia);
            rs= pst.executeQuery();
            
             if(rs.next()){
                 
                   return true;
       }
       }catch(Exception e){
           System.err.println("Error"+ e);
       }finally{
             try{
                if(con.Conectar().getConnection()!= null) con.Conectar().getConnection().close();
                if(pst != null) pst.close();
                if(rs!= null) rs.close();;
             }catch(Exception e){
                          System.err.println("Error"+ e);  
             }
       }
      return false; 
    }
    
 /*   
    public static void main(String[] args){
        ControladorLogin co = new ControladorLogin();
        System.out.println(co.autenticacion("David Jaen ", "David23"));
    }*/
   
}

