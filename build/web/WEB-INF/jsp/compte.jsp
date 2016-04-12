<%-- 
    Document   : compte
    Created on : 4 mars 2015, 14:24:10
    Author     : samia
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="includes/header.jsp" %>


<div id="content" class="span9">		
    <div class="row-fluid">	
        
                      <div class="block">
                            <div class="navbar navbar-inner block-header">
                                <div class="muted pull-left">Profil</div>
                            </div>
                            <div class="block-content collapse in">
                                <div class="span12">
                                  
                                      <fieldset>
                                          <legend>Vos infos</legend>
                                        <div class="control-group">
                                          <label class="control-label">Nom</label>
                                          <div class="controls">
                                            <input class="input-xlarge uneditable-input" type="text" value="${sessionScope.utilisateurConnect.nom}">
                                          </div>
                                        </div>
                                          <div class="control-group">
                                          <label class="control-label">Prénom</label>
                                          <div class="controls">
                                            <input class="input-xlarge uneditable-input" type="text" value="${sessionScope.utilisateurConnect.prenom}">
                                          </div>
                                        </div>
                                          <div class="control-group">
                                          <label class="control-label">Matricule</label>
                                          <div class="controls">
                                            <input class="input-xlarge uneditable-input" type="text" value="${sessionScope.utilisateurConnect.matricule}">
                                          </div>
                                        </div>
                                        <div class="control-group">
                                          <label class="control-label">Service</label>
                                          <div class="controls">
                                            <span class="input-xlarge uneditable-input">${sessionScope.utilisateurConnect.service}</span>
                                          </div>
                                        </div>
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
