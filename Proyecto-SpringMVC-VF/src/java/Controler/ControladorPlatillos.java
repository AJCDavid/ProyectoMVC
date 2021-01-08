/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controler;

import Entidad.Plato;
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
public class ControladorPlatillos {
    Conexion con= new Conexion();
    JdbcTemplate jdbcTemplate = new JdbcTemplate(con.Conectar());
    ModelAndView mav = new ModelAndView();
    int idPlato;
    List datos;
    

    @RequestMapping("IndexPlatos.htm")
    public ModelAndView Listar(){
        String sql="select * from tblplato";
        datos= this.jdbcTemplate.queryForList(sql);
        mav.addObject("lista",datos);
        mav.setViewName("IndexPlatos");
        return mav;
    }
    
       @RequestMapping(value="AgregarPlatillos.htm",method = RequestMethod.GET)
      public ModelAndView AgregarPlatillos(){
      mav.addObject(new Plato());
      mav.setViewName("AgregarPlatillos");
      return mav;    
    }
    
     @RequestMapping(value="AgregarPlatillos.htm",method = RequestMethod.POST)
    public ModelAndView AgregarPlatillos(Plato p){
      String sql ="insert into tblplato(Nombre, Categoria, Costo, Stock,Calidad) values(?,?,?,?,?)";
      this.jdbcTemplate.update(sql,p.getNombre(),p.getCategoria(),p.getCosto(),p.getStock(),p.getCalidad());
      return new ModelAndView("redirect:/IndexPlatos.htm");    
    }
 
      @RequestMapping(value="EditarPlato.htm",method = RequestMethod.GET)
        public ModelAndView EditarPlato (HttpServletRequest request){
          idPlato=Integer.parseInt(request.getParameter("idPlato"));
          String sql="select * from tblplato where idPlato=" +idPlato;
          datos=this.jdbcTemplate.queryForList(sql);
          mav.addObject("lista",datos);
          mav.setViewName("EditarPlato");
          return mav;
    }
       
     @RequestMapping(value="EditarPlato.htm",method = RequestMethod.POST)
       public ModelAndView EditarPlato (Plato p){
       String sql="update tblplato set Nombre=?, Categoria=?, Costo=?, Stock=? where idplato=?"; 
       this.jdbcTemplate.update(sql,p.getNombre(),p.getCategoria(),p.getCosto(),p.getStock(),p.getCalidad(),idPlato);
       return new ModelAndView("redirect:/IndexPlatos.htm");
       }
       
      @RequestMapping(value="Eliminar.htm")
       public ModelAndView Eliminar(HttpServletRequest request){
         idPlato= Integer.parseInt(request.getParameter("idPlato"));
         String sql="delete from tblplato where idPlato="+idPlato;
         this.jdbcTemplate.update(sql);
         return new ModelAndView("redirect:/IndexPlatos.htm");
       }
}
