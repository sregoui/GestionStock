/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author Samia Regoui <s.regoui@gmail.com>
 */
@Controller
@RequestMapping(value ="/carte")
public class CarteController {
    
    
  
    @RequestMapping(value = "/voirCarte")
    public String voirCarte() {

        return "voirCarte";
    }
}
