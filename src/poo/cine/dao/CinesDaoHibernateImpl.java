/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package poo.cine.dao;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import java.util.List;
import poo.cine.Cine;

/**
 *
 * @author riodajs
 */
public class CinesDaoHibernateImpl implements CinesDao{
    
    private final SessionFactory sessionFactory;

    public CinesDaoHibernateImpl(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }
    
    @Override
    public List<Cine> obtenerTodos(){
        Session session = sessionFactory.openSession();
        List<Cine> retorno = session.createQuery("from Cine").list();
        session.close();
        
        return retorno;
    }

    @Override
    public Cine buscarPorNombre(String nombre) {
        Session session = sessionFactory.openSession();
        
        CriteriaBuilder builder = session.getCriteriaBuilder();
        CriteriaQuery<Cine> query = builder.createQuery(Cine.class);
        Root<Cine> root = query.from(Cine.class);
        query.select(root);
        query.where(builder.equal(root.get("nombre"), nombre));
        
        Cine cine = session.createQuery(query).uniqueResult();
        
        session.close();
        
        return cine;
    }
    
    @Override
    public Cine buscarPorDireccion(String direccion) {
        Session session = sessionFactory.openSession();
        
        CriteriaBuilder builder = session.getCriteriaBuilder();
        CriteriaQuery<Cine> query = builder.createQuery(Cine.class);
        Root<Cine> root = query.from(Cine.class);
        query.select(root);
        query.where(builder.equal(root.get("direccion"), direccion));
        
        Cine cine = session.createQuery(query).uniqueResult();
        
        session.close();
        
        return cine;
    }

    @Override
    public void guardar(Cine cine) {
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        session.save(cine);
        session.getTransaction().commit();
        session.close();
    }
}
