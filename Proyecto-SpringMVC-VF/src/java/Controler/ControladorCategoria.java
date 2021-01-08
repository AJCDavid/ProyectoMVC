/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controler;


import Entidad.Categoria;
import config.Conexion;
import java.util.List;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author user
 */
public class ControladorCategoria {
    Conexion con= new Conexion();
    JdbcTemplate jdbcTemplate = new JdbcTemplate(con.Conectar());
    ModelAndView mav = new ModelAndView();
    int idCliente;
    List datos;
    
    @RequestMapping("indexCategoria.htm")
    public ModelAndView Listar(){
        String sql="select * from tblcategoria";
        datos= this.jdbcTemplate.queryForList(sql);
        mav.addObject("lista",datos);
        mav.setViewName("indexCategoria");
        return mav;
    }
    
    @RequestMapping(value="AgregarCategoria.htm",method = RequestMethod.GET)
    public ModelAndView AgregarCategoria(){
      mav.addObject(new Categoria());
      mav.setViewName("AgregarCategoria");
      return mav;    
    }
    
     @RequestMapping(value="AgregarCategoria.htm",method = RequestMethod.POST)
    public ModelAndView Agregar(Categoria c){
      String sql ="insert into tblcategoria(Nombre) values(?)";
      this.jdbcTemplate.update(sql,c.getNombre());
      return new ModelAndView("redirect:/indexCategoria.htm");    
    }
}
