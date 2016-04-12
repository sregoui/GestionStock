/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package controller;


import contrat.Metier;
import dao.DaoCategorieProduit;
import dao.DaoClient;
import factory.FactoryDao;
import java.util.List;
import model.CategorieProduit;
import model.Client;
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
@RequestMapping(value ="/client")
public class ClientController {
    
    /**
     * Method to add a customer
     * @param m
     * @return string
     */
     @RequestMapping(value = "/ajoutClient", method = RequestMethod.GET)
    public String ajoutClient(Model m) {
        m.addAttribute("client", new Client());
        return "ajoutClient";
    }
    
    
        /**
     * Method to add a customer
     * @param m
     * @return string
     */
     @RequestMapping(value = "/modifClient", method = RequestMethod.GET)
    public String modifClient(Model m) {
        m.addAttribute("client", new Client());
        return "modifClient";
    }
    
    
    

    
    /**
     * Method to add a customer to the database
     * @param cl
     * @param m
     * @return string
     */
    @RequestMapping(value = "/ajoutClient", method = RequestMethod.POST)
    public String ajoutClientToDB(Client cl, Model m) {
        DaoClient dao = (DaoClient) FactoryDao.getDao(Client.class);
        dao.insert(cl);
        m.addAttribute("ResultForm", "success");
        m.addAttribute("client", new Client());
        return "ajoutClient";
    }
    
    
      //LISTE DES CLIENTS
     @ModelAttribute(value = "listClient")
    public List allClient() {
       DaoClient dao = (DaoClient) FactoryDao.getDao(Client.class);
        List<Metier> l = dao.selectAll("Client");
        return l;
    }
}
