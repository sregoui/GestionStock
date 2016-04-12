/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package controller;

import contrat.Metier;
import dao.DaoCategorieProduit;
import dao.DaoFournisseur;
import dao.DaoProduit;
import factory.FactoryDao;
import java.util.List;
import model.CategorieProduit;
import model.Fournisseur;
import model.Personnel;
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
@RequestMapping(value ="/produit")
public class ProduitController {
    
    /**
     * Method to add a product
     * @param m
     * @param hist1
     * @param hist2
     * @param hist3
     * @return string
     */
     //AJOUT DES PRODUIT
    @RequestMapping(value = "/ajoutProduit",method=RequestMethod.GET)
    public String addProduct(Model m) {
        m.addAttribute("produit", new Produit());
        return "ajoutProduit";
    }
    
    /**
     * Method to add a product to the database
     * @param prd
     * @param m
     * @return string
     */
    @RequestMapping(value = "/ajoutProduit",method=RequestMethod.POST)
    public String addPrductToDB(Produit prd, Model m) {
        DaoProduit dao = (DaoProduit) FactoryDao.getDao(Produit.class);
        dao.insert(prd);
        m.addAttribute("ResultForm", "success");
        m.addAttribute("produit", new Produit());
       
            return "ajoutProduit";
    }
    
    /**
     * Method to get all the products' categories
     * @return List<Metier> (here CategorieProduit)
     */
    @ModelAttribute(value = "listCateg")
    public List<Metier> listCateg() {
        DaoCategorieProduit dao = (DaoCategorieProduit) FactoryDao.getDao(CategorieProduit.class);
        List<Metier> l = dao.selectAll("CategorieProduit");
        return l;
    }
    
    /**
     * Method to get all the suppliers
     * @return List<Metier> (here "List<Fournisseur>")
     */
    @ModelAttribute(value = "listFournisseur")
    public List<Metier> listFounisseur() {
        DaoFournisseur dao = (DaoFournisseur) FactoryDao.getDao(Fournisseur.class);
        List<Metier> l = dao.selectAll("Fournisseur");
        return l;
    }
    
}
