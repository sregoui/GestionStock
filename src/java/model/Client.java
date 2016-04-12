package model;
// Generated 3 mars 2015 12:14:20 by Hibernate Tools 3.6.0


import contrat.Metier;
import java.util.HashSet;
import java.util.Set;

/**
 * Client generated by hbm2java
 */
public class Client extends Metier implements java.io.Serializable {


     private int idClient;
     private String nom;
     private String email;
     private String adresse;
     private String codePostal;
     private String ville;
     private int type;
    
    
    public Client() {
    }

    
    /**
     * 
     * @param idClient 
     */
    public Client(int idClient) {
        this.idClient = idClient;
    }

    public Client(int idClient, String nom, String email, String adresse, String codePostal, String ville, int type) {
        this.idClient = idClient;
        this.nom = nom;
        this.email = email;
        this.adresse = adresse;
        this.codePostal = codePostal;
        this.ville = ville;
        this.type = type;
    }
    
    
   
    public int getIdClient() {
        return this.idClient;
    }
    
    public void setIdClient(int idClient) {
        this.idClient = idClient;
    }
    public String getNom() {
        return this.nom;
    }
    
    public void setNom(String nom) {
        this.nom = nom;
    }
    public String getEmail() {
        return this.email;
    }
    
    public void setEmail(String email) {
        this.email = email;
    }
    public String getAdresse() {
        return this.adresse;
    }
    
    public void setAdresse(String adresse) {
        this.adresse = adresse;
    }
    public String getCodePostal() {
        return this.codePostal;
    }
    
    public void setCodePostal(String codePostal) {
        this.codePostal = codePostal;
    }
    public String getVille() {
        return this.ville;
    }
    
    public void setVille(String ville) {
        this.ville = ville;
    }

    public int getType() {
        return type;
    }

    public void setType(int type) {
        this.type = type;
    }


    
}


