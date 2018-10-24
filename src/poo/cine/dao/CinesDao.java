
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package poo.cine.dao;
import java.util.List;
import poo.cine.Cine;
/**
 *
 * @author riodajs
 */
public interface CinesDao {
    public Cine buscarPorNombre(String nombre);
    public Cine buscarPorDireccion(String direccion);
    public List<Cine> obtenerTodos ();
    public void guardar(Cine cine);
}
