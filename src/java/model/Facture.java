package model;
// Generated 3 mars 2015 12:14:20 by Hibernate Tools 3.6.0

import contrat.Metier;




/**
 * Facture generated by hbm2java
 */
public class Facture extends Metier implements java.io.Serializable {


     private Integer idFacture;
     private Commande commande;
     private String designation;
     private double montant;

    public Facture() {
    }

    public Facture(Commande commande, String designation, double montant) {
       this.commande = commande;
       this.designation = designation;
       this.montant = montant;
    }
   
    public Integer getIdFacture() {
        return this.idFacture;
    }
    
    public void setIdFacture(Integer idFacture) {
        this.idFacture = idFacture;
    }
    public Commande getCommande() {
        return this.commande;
    }
    
    public void setCommande(Commande commande) {
        this.commande = commande;
    }
    public String getDesignation() {
        return this.designation;
    }
    
    public void setDesignation(String designation) {
        this.designation = designation;
    }
    public double getMontant() {
        return this.montant;
    }
    
    public void setMontant(double montant) {
        this.montant = montant;
    }




}


