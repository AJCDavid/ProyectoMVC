/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controler;

import Entidad.Empleado;
import config.Conexion;
import java.util.List;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author user
 */
@Controller
public class ControladorRegistro {
    Conexion con= new Conexion();
    JdbcTemplate jdbcTemplate = new JdbcTemplate(con.Conectar());
    ModelAndView mav = new ModelAndView();
    List datos;

    
     @RequestMapping(value="Login.htm",method = RequestMethod.GET)
    public ModelAndView Login(){
      mav.setViewName("Login");
      return mav;    
    }
    
         @RequestMapping("IndexEmpleados.htm")
        public ModelAndView Listar(){
        String sql="SELECT idEmpleado, Nombre, Telefono, Direccion, Correo FROM tblEmpleado";
        datos= this.jdbcTemplate.queryForList(sql);
        mav.addObject("lista",datos);
        mav.setViewName("IndexEmpleados");
        return mav;
    }
    
    @RequestMapping(value="Registro.htm",method = RequestMethod.GET)
    public ModelAndView Registro(){
      mav.addObject(new Empleado());
      mav.setViewName("Registro");
      return mav;    
    }
    
     @RequestMapping(value="Registro.htm",method = RequestMethod.POST)
    public ModelAndView Registro(Empleado rg){
      String sql ="insert into tblempleado(Nombre,Telefono, Direccion, Correo, Contrasenia) values(?,?,?,?,?)";
      this.jdbcTemplate.update(sql,rg.getNombre(),rg.getTelefono(),rg.getDireccion(),rg.getCorreo(),rg.getPassword());
      return new ModelAndView("redirect:/Login.htm");    
    }
}

