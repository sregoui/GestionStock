/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package controller;

import dao.DaoPersonnel;
import factory.FactoryDao;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import model.Personnel;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author denys
 */
@Controller
@RequestMapping(value ="/personnel")
public class PersonnelController {
    
    /**
     * Authentication method
     * @param model
     * @return string
     */
    
     @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login(Model model) {
        model.addAttribute("user", new Personnel());
        return "login";
    }
    
    
   /**
    * Methode qui permet l'authentification
    * @param user
    * @param session
    * @return 
    */
    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String login(@ModelAttribute(value = "user") Personnel user,HttpSession session) {
        DaoPersonnel dao = (DaoPersonnel) FactoryDao.getDao(Personnel.class);
        Personnel personne = dao.connection(user);
       
        if (personne != null) {
            session.setAttribute("utilisateurConnect", personne); 
            return "index";
        } else {
            return "login";
        }
    }
    
    
    /**
     * Display the account
     * @return string
     */
    @RequestMapping(value = "/compte")
    public String voirCompte(){
        
        return "compte";
    }
    
   
    
    /**
     * Disconnect method
     * @param m
     * @param session
     * @return string
     */
        @RequestMapping("/deconection")
    public String decoEmployee(Model m, HttpSession session) {
        session.removeAttribute("utilisateurConnect");
        return "index";
    }
    
    /**
     * Method to add an employee
     * @param m
     * @return string
     */
    //AJOUT EMPLOYEE
    //
    @RequestMapping(value = "/inscription", method = RequestMethod.GET)
    public String addEmployee(Model m) {
        m.addAttribute("personnel", new Personnel());
     
        return "inscription";
    }

    
    /**
     * Method to add an employee to the database
     * @param pers
     * @param m
     * @return 
     */
    @RequestMapping(value = "/inscription", method = RequestMethod.POST)
    public String addEmployeeToDB(Personnel pers, Model m) {
        DaoPersonnel dao = (DaoPersonnel) FactoryDao.getDao(Personnel.class);
        dao.insert(pers);
        m.addAttribute("ResultForm", "success");
        m.addAttribute("personnel", new Personnel());
        return "inscription";
    }
  
    
    
}
