/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controler;

import Entidad.Cliente;
import config.Conexion;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
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
public class Controlador {
    Conexion con= new Conexion();
    JdbcTemplate jdbcTemplate = new JdbcTemplate(con.Conectar());
    ModelAndView mav = new ModelAndView();
    int idCliente;
    List datos;
    
    @RequestMapping("index.htm")
    public ModelAndView Listar(){
        String sql="select * from tblcliente";
        datos= this.jdbcTemplate.queryForList(sql);
        mav.addObject("lista",datos);
        mav.setViewName("index");
        return mav;
    }
    
    @RequestMapping(value="Agregar.htm",method = RequestMethod.GET)
    public ModelAndView Agregar(){
      mav.addObject(new Cliente());
      mav.setViewName("Agregar");
      return mav;    
    }
    
     @RequestMapping(value="Agregar.htm",method = RequestMethod.POST)
    public ModelAndView Agregar(Cliente p){
      String sql ="insert into tblcliente(Nombre, Cedula, Telefono, Correo) values(?,?,?,?)";
      this.jdbcTemplate.update(sql,p.getNombre(),p.getCedula(),p.getTelefono(),p.getCorreo());
      return new ModelAndView("redirect:/index.htm");    
    }
    
    @RequestMapping(value="Editar.htm",method = RequestMethod.GET)
        public ModelAndView Editar (HttpServletRequest request){
          idCliente=Integer.parseInt(request.getParameter("idCliente"));
          String sql="select * from tblcliente where idCliente=" +idCliente;
          datos=this.jdbcTemplate.queryForList(sql);
          mav.addObject("lista",datos);
          mav.setViewName("Editar");
          return mav;
    }
       
     
     @RequestMapping(value="Editar.htm",method = RequestMethod.POST)
       public ModelAndView Editar (Cliente p){
       String sql="update tblcliente set Nombre=?, Cedula=?, Telefono=?, Correo=? where idCliente=?"; 
       this.jdbcTemplate.update(sql,p.getNombre(),p.getCedula(),p.getTelefono(),p.getCorreo(),idCliente);
       return new ModelAndView("redirect:/index.htm");
       }
      
     @RequestMapping(value="Eliminar.htm")
       public ModelAndView Eliminar(HttpServletRequest request){
         idCliente= Integer.parseInt(request.getParameter("idCliente"));
         String sql="delete from tblcliente where idCliente="+idCliente;
         this.jdbcTemplate.update(sql);
         return new ModelAndView("redirect:/index.htm");
       }
       
}
