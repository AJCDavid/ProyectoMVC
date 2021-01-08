/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controler;

import config.Conexion;
import java.util.List;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author user
 */
public class ControladorMax {
        Conexion con= new Conexion();
    JdbcTemplate jdbcTemplate = new JdbcTemplate(con.Conectar());
    ModelAndView mav = new ModelAndView();
    List datos;
    
    @RequestMapping("maximosalario.htm")
    public ModelAndView Listar(){
        String sql=" SELECT idDepartamento, MAX(salario) AS MAX_SAL, MIN(salario) AS MIN_SAL , COUNT(*) AS NUM_EMPLEADOS FROM tblempleado GROUP BY idDepartamento;";
        datos= this.jdbcTemplate.queryForList(sql);
        mav.addObject("lista",datos);
        mav.setViewName("maximosalario");
        return mav;
    }
}
