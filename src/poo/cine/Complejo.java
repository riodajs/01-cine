/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package poo.cine;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
/**
 *
 * @author riodajs
 */
public class Complejo {
    private String nombre;
    private List<Cine> cines;
    private int cantCines;
    
    // Constructor por defecto.
    public Complejo(){
        cines = new ArrayList<>();
    }
    
    public Complejo(String nombre){
        this.nombre = nombre;
    }
    
    
    public List<Cine> getCines() {
        return cines;
    }

    public void setCines(List<Cine> cines) {
        this.cines = cines;
        this.cantCines++;
    }
    
    public int getCantidadCines(){
        return cantCines;
    }
}
