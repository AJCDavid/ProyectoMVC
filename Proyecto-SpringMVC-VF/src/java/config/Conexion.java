/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package config;

import java.sql.Connection;
import java.sql.DriverManager;
import org.springframework.jdbc.datasource.DriverManagerDataSource;

/**
 *
 * @author user
 */
public class Conexion {
    public DriverManagerDataSource Conectar(){
            DriverManagerDataSource dataSource = new DriverManagerDataSource();
            dataSource.setDriverClassName("com.mysql.jdbc.Driver");
            dataSource.setUrl("jdbc:mysql://localhost:3306/dbproyectrestaurante?serverTimezone=UTC");
            dataSource.setUsername("root");
            dataSource.setPassword("admin");
            return dataSource;
   }
      
}
