/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package controller;

import dao.DaoCategorieProduit;
import dao.DaoProduit;
import factory.FactoryDao;
import java.util.ArrayList;
import java.util.List;
import model.CategorieProduit;
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
@RequestMapping(value ="/categorie")
public class CategorieController {

      /**
     * Method to add a categorie
     * @param m
     * @return string
     */
     @RequestMapping(value = "/ajoutCategorie", method = RequestMethod.GET)
    public String addCategorie(Model m) {
        m.addAttribute("categorieProduit", new CategorieProduit());
        return "ajoutCategorie";
    }

    
    /**
     * Method to add a categorie to the database
     * @param cl
     * @param m
     * @return string
     */
    @RequestMapping(value = "/ajoutCategorie", method = RequestMethod.POST)
    public String addCategorieToDB(CategorieProduit ct, Model m) {
        DaoCategorieProduit dao = (DaoCategorieProduit) FactoryDao.getDao(CategorieProduit.class);
        dao.insert(ct);
        m.addAttribute("ResultForm", "success");
        m.addAttribute("categorie", new CategorieProduit());
        return "ajoutCategorie";
    }
    

   
    
}
