/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package controller;

import contrat.Metier;
import dao.DaoClient;
import dao.DaoFournisseur;
import factory.FactoryDao;
import java.util.List;
import model.Client;
import model.Fournisseur;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author samia
 */
@Controller
@RequestMapping(value ="/fournisseur")
public class FournisseurController {
    
     /**
     * Method to add a Fournisseur
     * @param m
     * @return string
     */
     @RequestMapping(value = "/ajoutFournisseur", method = RequestMethod.GET)
    public String ajoutFournisseur(Model m) {
        m.addAttribute("fournisseur", new Fournisseur());
        return "ajoutFournisseur";
    }

    
    /**
     * Method to add a Fournisseur to the database
     * @param cl
     * @param m
     * @return string
     */
    @RequestMapping(value = "/ajoutFournisseur", method = RequestMethod.POST)
    public String ajoutFournisseurDB(Fournisseur fr, Model m) {
        DaoFournisseur dao = (DaoFournisseur) FactoryDao.getDao(Fournisseur.class);
        dao.insert(fr);
        m.addAttribute("ResultForm", "success");
        m.addAttribute("fournisseur", new Fournisseur());
        return "ajoutFournisseur";
    }
    
    
    
    /**
     * Method to get all suppliers
     * @param m
     * @return 
     */
    //LISTE DES FOURNISSEURS
    @RequestMapping("/fournisseurs")
    public String allEmployee(Model m) {
        DaoFournisseur dao = (DaoFournisseur) FactoryDao.getDao(Fournisseur.class);
        List<Metier> l = dao.selectAll("Fournisseur");
        m.addAttribute("listFournisseur", l);
        return "listFournisseur";
    }
}
