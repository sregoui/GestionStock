<%-- 
    Document   : ajoutClient
    Created on : 8 mars 2015, 09:01:00
    Author     : samia
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="includes/header.jsp" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<div id="content" class="span9">		
    <div class="row-fluid">	
        
                      <div class="block">
                            <div class="navbar navbar-inner block-header">
                                <div class="muted pull-left">Client</div>
                            </div>
                            <div class="block-content collapse in">
                                <div class="span12">
                                  
                                      <fieldset>
                                          <legend>Ajouter Client</legend>
                                              <c:set var="valeur" scope="session" value="success"/>
                                                <c:if test="${ResultForm == valeur}">
                                                    <div class="alert alert-success">
                                                        <button type="button" class="close" data-dismiss="alert">×</button>
                                                        <strong>Ajout réussi</strong> 
                                                    </div>
                                                </c:if>
                                                <form:form cssClass="form-horizontal" action="" method="post" modelAttribute="client">
                                                    <div class="control-group">
                                                        <form:label cssClass="control-label" path="nom">Nom :</form:label>
                                                            <div class="controls">
                                                            <form:input cssClass="span6 typeahead"  path="nom"/>
                                                        </div>
                                                    </div>
                                                    <div class="control-group">
                                                        <form:label cssClass="control-label" path="email">Email :</form:label>
                                                            <div class="controls">
                                                            <form:input cssClass="span6 typeahead"  path="email"/>
                                                        </div>
                                                    </div>
                                                    <div class="control-group">
                                                        <form:label cssClass="control-label" path="adresse">Adresse :</form:label>
                                                            <div class="controls">
                                                            <form:input cssClass="span6 typeahead"  path="adresse"/>
                                                        </div>
                                                    </div>
                                                        <div class="control-group">
                                                        <form:label cssClass="control-label" path="codePostal">Code Postal :</form:label>
                                                            <div class="controls">
                                                            <form:input cssClass="span6 typeahead"  path="codePostal"/>
                                                        </div>
                                                        </div>
                                                      <div class="control-group">
                                                        <form:label cssClass="control-label" path="ville">Ville :</form:label>
                                                            <div class="controls">
                                                            <form:input cssClass="span6 typeahead"  path="ville"/>
                                                        </div>
                                                        </div>
                                                       <div class="control-group">
                                                        <form:label cssClass="control-label" path="type">Type :</form:label>
                                                            <div class="controls">
                                                            <form:radiobutton path="type" value="1"/>Professionnel 
                                                           <form:radiobutton path="type" value="2"/>Particulier
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
