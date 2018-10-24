/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package poo.cine.dao;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import poo.cine.Cine;

/**
 *
 * @author riodajs
 */
public class CinesDaoImpl implements CinesDao {
    private final List<Cine> cines; 
    public CinesDaoImpl(){
        cines = new ArrayList();
    }
    
    @Override
    public List<Cine> obtenerTodos(){
        return cines;
    }
    
    @Override
    public Cine buscarPorNombre(String nombre){
        System.out.println("Buscando cine por nombre: " + nombre);

        Iterator<Cine> iter = cines.iterator();
        Cine encontrada = null;
        
        while (iter.hasNext()) {
            Cine actual = iter.next();
            
            if (actual.getNombre().equalsIgnoreCase(nombre)) {
                encontrada = actual;
                break;
            }
        }
        
        return encontrada;
    }
    
    @Override
    public Cine buscarPorDireccion(String direccion){
        System.out.println("Buscando cine por dirección: " + direccion);

        Iterator<Cine> iter = cines.iterator();
        Cine encontrada = null;
        
        while (iter.hasNext()) {
            Cine actual = iter.next();
            
            if (actual.getNombre().equalsIgnoreCase(direccion)) {
                encontrada = actual;
                break;
            }
        }
        
        return encontrada;
    }
    
    @Override
    public void guardar(Cine cine){
        this.cines.add(cine);
        System.out.println("Película agregada: " + cine);
    
    }
}
