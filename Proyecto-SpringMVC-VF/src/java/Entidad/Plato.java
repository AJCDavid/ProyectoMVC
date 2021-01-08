/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Entidad;

/**
 *
 * @author user
 */
public class Plato {
    int id;
    String nombre;
    String categoria;
    double costo;
    int stock;
    String calidad;

    public Plato() {
    }

    public Plato(int id, String nombre, String categoria, double costo, int stock, String calidad) {
        this.id = id;
        this.nombre = nombre;
        this.categoria = categoria;
        this.costo = costo;
        this.stock = stock;
        this.calidad = calidad;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getCategoria() {
        return categoria;
    }

    public void setCategoria(String categoria) {
        this.categoria = categoria;
    }

    public double getCosto() {
        return costo;
    }

    public void setCosto(double costo) {
        this.costo = costo;
    }

    public int getStock() {
        return stock;
    }

    public void setStock(int stock) {
        this.stock = stock;
    }

    public String getCalidad() {
        return calidad;
    }

    public void setCalidad(String calidad) {
        this.calidad = calidad;
    }

 
    
    
}
