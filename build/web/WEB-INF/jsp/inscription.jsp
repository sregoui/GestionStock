<%-- 
    Document   : addEmployee
    Created on : 3 mars 2015, 15:22:26
    Author     : Samia
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@include file="includes/header.jsp" %>

<div id="content" class="span9">		
    <div class="row-fluid">	
        
                      <div class="block">
                            <div class="navbar navbar-inner block-header">
                                <div class="muted pull-left">Utilisateur</div>
                            </div>
                            <div class="block-content collapse in">
                                <div class="span12">
                                  
                                      <fieldset>
                                          <legend>Ajouter Utilisateur</legend>	
                                            <c:set var="valeur" scope="session" value="success"/>
                                            <c:if test="${ResultForm == valeur}">
                                                <div class="alert alert-success">
                                                    <button type="button" class="close" data-dismiss="alert">×</button>
                                                    <strong>Ajout réussi</strong> 
                                                </div>
                                            </c:if>
                                            <form:form cssClass="form-horizontal" action="" method="post" modelAttribute="personnel">
                                                <div class="control-group">
                                                    <form:label cssClass="control-label" path="nom">Nom :</form:label>
                                                        <div class="controls">
                                                        <form:input cssClass="span6 typeahead"  path="nom"/>
                                                    </div>
                                                </div>
                                                <div class="control-group">
                                                    <form:label cssClass="control-label" path="prenom">Prénom :</form:label>
                                                        <div class="controls">
                                                        <form:input cssClass="span6 typeahead"  path="prenom"/>
                                                    </div>
                                                </div>
                                                <div class="control-group">
                                                    <form:label cssClass="control-label" path="matricule">Matricule :</form:label>
                                                        <div class="controls">
                                                        <form:input cssClass="span6 typeahead"  path="matricule"/>
                                                    </div>
                                                </div>
                                                <div class="control-group">
                                                    <form:label cssClass="control-label" path="password">Mot de passe :</form:label>
                                                        <div class="controls">
                                                        <form:password cssClass="span6 typeahead"  path="password"/>
                                                    </div>
                                                </div>
                                                    <div class="control-group">
                                                    <form:label cssClass="control-label" path="service">Service :</form:label>
                                                        <div class="controls">
                                                        <form:input cssClass="span6 typeahead"  path="service"/>
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