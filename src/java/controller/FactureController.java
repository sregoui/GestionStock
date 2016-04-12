/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package controller;

import contrat.Metier;
import dao.DaoFacture;
import dao.DaoFournisseur;
import factory.FactoryDao;
import java.util.List;
import model.Facture;
import model.Fournisseur;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author samia
 */
@Controller
@RequestMapping(value ="/facture")
public class FactureController {
    
//LISTE DES Factures
    @RequestMapping("/listeFacture")
    public String allFacture(Model m) {
        DaoFacture dao = (DaoFacture) FactoryDao.getDao(Facture.class);
        List<Metier> l = dao.selectAll("Facture");
        m.addAttribute("listFacture", l);
        return "listeFacture";
    }
}
