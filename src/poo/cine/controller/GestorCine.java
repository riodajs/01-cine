/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package poo.cine.controller;

import java.util.List;
import org.hibernate.SessionFactory;
import poo.cine.Complejo;
import poo.cine.Cine;
import poo.cine.dao.CinesDao;
import poo.cine.dao.CinesDaoHibernateImpl;
import poo.cine.ui.frmAdmin;
/**
 *
 * @author riodajs
 */
public class GestorCine {
    
    private final Complejo complejo;
    
    private final CinesDao cinesDao;
    
    public GestorCine(SessionFactory sessionFactory) {
        // creamos el complejo
        complejo = new Complejo("cinesDEV");
        
        this.cinesDao = new CinesDaoHibernateImpl(sessionFactory);
    }
    
    public void run () {
        // creamos una instancia del formulario y lo mostramos
        List<Cine> cines = cinesDao.obtenerTodos();
        frmAdmin adminFrame = new frmAdmin(cines, this);
        adminFrame.setVisible(true);
    }
    
    public void guardarCine (Cine cine) {
        cinesDao.guardar(cine);
    }
}
