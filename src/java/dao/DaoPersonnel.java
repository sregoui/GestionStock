/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package dao;


import hibernate.HibernateUtil;
import model.Personnel;
import org.hibernate.Query;
import org.hibernate.Session;

/**
 *
 * @author samia
 */
public class DaoPersonnel extends DaoGeneric<Personnel> {

    
    
     public Personnel connection (Personnel personne){
        
        Session session = HibernateUtil.getSession();
        String sql = "FROM Personnel WHERE matricule = ? AND password = ?";
        Query query  = session.createQuery(sql);
        query.setString(0, personne.getMatricule());
        query.setString(1, personne.getPassword());

     
         Personnel user = (Personnel) query.uniqueResult();
         System.out.println(user);
         return user;
        
    }
    
}
