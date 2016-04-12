<%-- 
    Document   : ajoutProduit
    Created on : 7 mars 2015, 18:35:04
    Author     : samia
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="includes/header.jsp" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<div id="content" class="span9">		
    <div class="row-fluid">	
        
                      <div class="block">
                            <div class="navbar navbar-inner block-header">
                                <div class="muted pull-left">Produit</div>
                            </div>
                            <div class="block-content collapse in">
                                <div class="span12">
                                  
                                      <fieldset>
                                          <legend>Ajouter produits</legend>
                                              <c:set var="valeur" scope="session" value="success"/>
                                                <c:if test="${ResultForm == valeur}">
                                                    <div class="alert alert-success">
                                                        <button type="button" class="close" data-dismiss="alert">×</button>
                                                        <strong>Ajout réussi</strong> 
                                                    </div>
                                                </c:if>
                                                <form:form cssClass="form-horizontal" action="" method="post" modelAttribute="produit">

                                        <div class="control-group">
                                            <form:label cssClass="control-label" path="CategorieProduit">Categorie :</form:label>
                                                <div class="controls">
                                                <form:select items="${listCateg}" itemLabel="libelle" itemValue="idCategorieProduit" path="CategorieProduit.idCategorieProduit"/>
                                                <!--<a href="AddCategori.stk?history=AddProduit&history2=&history3=" class="btn btn-primary">Ajouter une categorie</a>-->
                                            </div>
                                        </div>
                                        <div class="control-group">
                                            <form:label cssClass="control-label" path="Fournisseur">Fournisseur :</form:label>
                                                <div class="controls">
                                                <form:select items="${listFournisseur}" itemLabel="raisonSocial" itemValue="idFournisseur" path="Fournisseur.idFournisseur"/>
<!--                                                <a href="addSupplier.stk?history=AddProduit&history2=&history3=" class="btn btn-primary">Ajouter un Fournisseur</a>-->
                                            </div>
                                        </div>
                                        <div class="control-group">
                                            <form:label cssClass="control-label" path="libelle">Libelle :</form:label>
                                                <div class="controls">
                                                <form:input cssClass="span6 typeahead"  path="libelle"/>
                                            </div>
                                        </div>
                                        <div class="control-group">
                                            <form:label cssClass="control-label" path="refProduit">Ref :</form:label>
                                                <div class="controls">
                                                <form:input cssClass="span6 typeahead"  path="refProduit"/>
                                            </div>
                                        </div>
                                            <div class="control-group">
                                            <form:label cssClass="control-label" path="prixAchat">Prix achat :</form:label>
                                                <div class="controls">
                                                <form:input cssClass="span6 typeahead"  path="prixAchat"/>
                                            </div>
                                        </div>
                                        <div class="control-group">
                                            <form:label cssClass="control-label" path="prixVente">Prix vente :</form:label>
                                                <div class="controls">
                                                <form:input cssClass="span6 typeahead"  path="prixVente"/>
                                            </div>
                                        </div>
                                                     <div class="control-group">
                                            <form:label cssClass="control-label" path="stockMin">StockMin :</form:label>
                                                <div class="controls">
                                                <form:input cssClass="span6 typeahead"  path="stockMin"/>
                                            </div>
                                        </div>
                                            <div class="control-group">
                                            <form:label cssClass="control-label" path="stockMax">StockMax :</form:label>
                                                <div class="controls">
                                                <form:input cssClass="span6 typeahead"  path="stockMax"/>
                                            </div>
                                        </div>
                                        <div class="form-actions">
                                            <button type="submit" class="btn btn-primary">Enregistrer</button>
                                            <button type="reset" class="btn">Anuler</button>
                                        </div>
                                    </form:form>
                                      </fieldset>
                                  

                                </div>
                            </div>
                        </div>
       

	</div><!--/.fluid-container-->
	
			<!-- end: Content -->
		</div><!--/#content.span10-->
		</div><!--/fluid-row-->
		
	
	</div>
<%@include file="includes/footer.jsp" %>