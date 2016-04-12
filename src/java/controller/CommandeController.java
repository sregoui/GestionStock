/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package controller;

import contrat.Metier;
import dao.DaoCategorieProduit;
import dao.DaoClient;
import dao.DaoCommande;
import dao.DaoProduit;
import factory.FactoryDao;
import java.util.List;
import model.CategorieProduit;
import model.Client;
import model.Commande;
import model.Produit;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author samia
 */
@Controller
@RequestMapping(value ="/commande")
public class CommandeController {
      /**
     * Method to add a order
     * @param m
     * @return string
     */
     @RequestMapping(value = "/commandeClient", method = RequestMethod.GET)
    public String addCommande(Model m) {
        m.addAttribute("commande", new Commande());
        return "commandeClient";
    }

    
    /**
     * Method to add a order to the database
     * @param cl
     * @param m
     * @return string
     */
    @RequestMapping(value = "/commandeClient", method = RequestMethod.POST)
    public String addCommandeToDB(Commande cd, Model m) {
        DaoCommande dao = (DaoCommande) FactoryDao.getDao(Commande.class);
        dao.insert(cd);
        m.addAttribute("ResultForm", "success");
        m.addAttribute("commande", new Commande());
        return "commandeClient";
    }
    
        @ModelAttribute(value = "listClient")
    public List allClient() {
       DaoClient dao = (DaoClient) FactoryDao.getDao(Client.class);
        List<Metier> l = dao.selectAll("Client");
        return l;
    }
    

}
