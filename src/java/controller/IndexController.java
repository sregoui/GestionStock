/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package controller;

import contrat.Metier;
import dao.DaoClient;
import dao.DaoPersonnel;
import dao.DaoProduit;
import factory.FactoryDao;
import java.util.List;
import model.Client;
import model.Personnel;
import model.Produit;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author samia
 */

@Controller
public class IndexController {
    
    /**
     * Gets home page
     * @return "index"
     */
    @RequestMapping(value ="/index")
    public String home(){
        return "index";
    }
    
    @ModelAttribute(value = "listClient")
    public List allClient() {
       DaoClient dao = (DaoClient) FactoryDao.getDao(Client.class);
        List<Metier> l = dao.selectAll("Client");
        return l;
    }
    
    
    @ModelAttribute(value = "listPersonnel")
    public List allPersonnel() {
       DaoPersonnel dao = (DaoPersonnel) FactoryDao.getDao(Personnel.class);
        List<Metier> l = dao.selectAll("Personnel");
        return l;
    }
    
    
    @ModelAttribute(value = "listProduit")
    public List allProduit() {
       DaoProduit dao = (DaoProduit) FactoryDao.getDao(Produit.class);
        List<Metier> l = dao.selectAll("Produit");
        return l;
    }
    
    
    @ModelAttribute(value = "nbrClient")
    public Number nbrClient() {
       DaoClient dao = (DaoClient) FactoryDao.getDao(Client.class);
       Number l = dao.recupNbr(Client.class);
       return l;
    }
    
    @ModelAttribute(value = "nbrProduit")
    public Number nbrProduit() {
       DaoProduit dao = (DaoProduit) FactoryDao.getDao(Produit.class);
       Number l = dao.recupNbr(Produit.class);
       return l;
    }
    
    
    @ModelAttribute(value = "nbrPersonnel")
    public Number nbrPersonnel() {
       DaoPersonnel dao = (DaoPersonnel) FactoryDao.getDao(Personnel.class);
       Number l = dao.recupNbr(Personnel.class);
       return l;
    }
    
   
    
}
