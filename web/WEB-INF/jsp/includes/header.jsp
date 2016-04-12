

<%--<%@page import="model.Employee"%>--%>
<%@page import="model.Personnel"%>
<%@page import="model.Produit"%>
<%@page import="model.Client"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
    <head>

        <!-- start: Meta -->
        <meta charset="utf-8">
        <title>Gestion des stocks</title>
        <meta name="description" content="Gère votre stock">
        <meta name="author" content="">
        <meta name="keyword" content="Stock, Manager, Metro, Metro UI, Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
        <!-- end: Meta -->

        <!-- start: Mobile Specific -->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- end: Mobile Specific -->

        <!-- start: CSS -->
        <link id="bootstrap-style" href="<%=request.getContextPath()%>/css/bootstrap.min.css" rel="stylesheet">
        <link href="<%=request.getContextPath()%>/css/bootstrap-responsive.min.css" rel="stylesheet">
        <link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800&subset=latin,cyrillic-ext,latin-ext' rel='stylesheet' type='text/css'>
        <!-- end: CSS -->

        <!-- start: Favicon -->
        <link rel="shortcut icon" href="<%=request.getContextPath()%>/img/favicon.ico">
        <!-- end: Favicon -->

        <link href="<%=request.getContextPath()%>/css/jquery.easy-pie-chart.css" rel="stylesheet" media="screen">
        <link href="<%=request.getContextPath()%>/css/styles.css" rel="stylesheet" media="screen">
        <script src="<%=request.getContextPath()%>/js/modernizr-2.6.2-respond-1.1.0.min.js"></script>
        <script src="<%=request.getContextPath()%>/js/jquery-ui.min.js"></script>
        <script src="<%=request.getContextPath()%>/js/jquery-ui.min.css"></script>
         <link rel="stylesheet" href="<%=request.getContextPath()%>/css/app.css">
         
         <script src="<%=request.getContextPath()%>/js/jquery-1.9.1.min.js"></script>
        <script src="<%=request.getContextPath()%>/js/bootstrap.min.js"></script>
        <script src="<%=request.getContextPath()%>/js/jquery.easy-pie-chart.js"></script>
        <script src="<%=request.getContextPath()%>/js/scripts.js"></script>
        


    </head>

    <body>
         <c:if test="${sessionScope.utilisateurConnect == null}">
            <c:redirect url="/personnel/login.sam"></c:redirect>
        </c:if>
 
        <div class="navbar navbar-fixed-top">
            <div class="navbar-inner">
                <div class="container-fluid">
                    <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse"> <span class="icon-bar"></span>
                     <span class="icon-bar"></span>
                     <span class="icon-bar"></span>
                    </a>
                    <a class="brand" href="<%=request.getContextPath()%>/index.sam">Gestion des Stocks</a>
                    <div class="nav-collapse collapse">
                        <ul class="nav pull-right">
                            <li class="dropdown">
                                <a href="#" role="button" class="dropdown-toggle" data-toggle="dropdown"> <i class="icon-user"></i>${sessionScope.utilisateurConnect.nom} ${sessionScope.utilisateurConnect.prenom}   <i class="caret"></i>

                                </a>
                                <ul class="dropdown-menu">
                                    <li>
                                        <a tabindex="-1" href="<%=request.getContextPath()%>/personnel/compte.sam">Profile</a>
                                    </li>
                                    <li class="divider"></li>
                                    <li>
                                        <a tabindex="-1" href="<%=request.getContextPath()%>/personnel/deconection.sam">Logout</a>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                        <ul class="nav">
                            <li class="active">
                            <li class="dropdown">
                                <a href="<%=request.getContextPath()%>/client/ajoutClient.sam" role="button" class="dropdown-toggle" data-toggle="dropdown">Client</a>
                                 <ul class="dropdown-menu">
                                    <li>
                                        <a tabindex="-1" href="<%=request.getContextPath()%>/client/ajoutClient.sam">Ajouter</a>
                                    </li>
                                    <li class="divider"></li>
                                    <li>
                                        <a tabindex="-1" href="<%=request.getContextPath()%>/client/modifClient.sam">Modifier/Supprimer</a>
                                    </li>
                                </ul>
                            </li>
                             <li class="dropdown">
                                <a href="<%=request.getContextPath()%>/fournisseur/ajoutFournisseur.sam" role="button">Fournisseur</a>
                            </li>
                            <li>
                                <a href="<%=request.getContextPath()%>/produit/ajoutProduit.sam">Produit</a>
                            </li>
                             <li>
                                <a href="<%=request.getContextPath()%>/categorie/ajoutCategorie.sam">Categorie</a>
                            </li>
                             <li class="dropdown">
                                <a href="<%=request.getContextPath()%>/personnel/inscription.sam" role="button">Utilisateurs</a>
                            </li>
                            <li class="dropdown">
                                <a href="<%=request.getContextPath()%>/carte/voirCarte.sam" role="button">Carte</a>
                            </li>
                        </ul>
                    </div>
                  </div>
            </div>
        </div>
     
          <div class="container-fluid">
            <div class="row-fluid">
                <div class="span3" id="sidebar">
                    <ul class="nav nav-list bs-docs-sidenav nav-collapse collapse">
                        <li class="active">
                            <a href="<%=request.getContextPath()%>/commande/commandeClient.sam" ><i class="icon-chevron-right"></i>Les commandes</a>
                        </li>
                        <li>
                            <a href="<%=request.getContextPath()%>/facture/listeFacture.sam"><i class="icon-chevron-right"></i>Les factures</a>
                        </li>
                        <li>
                            <a href="#"><span class="badge badge-info pull-right">11</span>Chiffres d'affaire</a>
                        </li>
                        <li>
                            <a href="#"><span class="badge badge-important pull-right">83</span>Alerte Stock</a>
                        </li>
                    </ul>
                </div>
                    
                                    