/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import contrat.Metier;
import hibernate.HibernateUtil;
import java.util.List;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.Projections;

/**
 *
 * @author samia
 */
public abstract class DaoGeneric<T extends Metier> {

    /**
     * Inserts data to the database
     * @param objet 
     */
    public void insert(Metier objet) {
        Session session = HibernateUtil.getSession();
        Transaction trx = session.beginTransaction();
        try {
            session.save(objet);
            trx.commit();

        } catch (HibernateException ex) {
            trx.rollback();
        }
    }
    
    /**
     * Updates data to the database
     * @param objet 
     */
    public void update(Metier objet) {
        Session session = HibernateUtil.getSession();
        Transaction trx = session.beginTransaction();

        try {
            session.update(objet);
            trx.commit();
        } catch (HibernateException ex) {
            trx.rollback();
        }
    }

    /**
     * Delete data from the database
     * @param objet 
     */
    public void delete(Metier objet) {
        Session session = HibernateUtil.getSession();
        Transaction trx = session.beginTransaction();

        try {
            session.delete(objet);
            trx.commit();
        } catch (HibernateException ex) {
            trx.rollback();
        }
    }

    /**
     * Select all data for given table (parameter) from the database
     * @param metier
     * @return List<Metier>
     */
    public List<Metier> selectAll(String metier) {
        Session session = HibernateUtil.getSession();

        Query q = session.createQuery("From " + metier);
        List<Metier> l = q.list();
        session.close();
        return l;
        

    }
    
    /**
     *Permet de compter l'ensemble des row d'une entitée
     * @param metier
     * @return 
     */
    public Number recupNbr(Class metier) {
        Session session = HibernateUtil.getSession();
        return (Number) session.createCriteria(metier).setProjection(Projections.rowCount()).uniqueResult();
    }
}
