<%-- 
    Document   : ajoutFournisseur
    Created on : 8 mars 2015, 11:41:31
    Author     : samia
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@include file="includes/header.jsp" %>

<div id="content" class="span9">		
    <div class="row-fluid">	
        
                      <div class="block">
                            <div class="navbar navbar-inner block-header">
                                <div class="muted pull-left">Fournisseur</div>
                            </div>
                            <div class="block-content collapse in">
                                <div class="span12">
                                  
                                      <fieldset>
                                          <legend>Ajouter Fournisseur</legend>	
                                            <c:set var="valeur" scope="session" value="success"/>
                                            <c:if test="${ResultForm == valeur}">
                                                <div class="alert alert-success">
                                                    <button type="button" class="close" data-dismiss="alert">×</button>
                                                    <strong>Ajout réussi</strong> 
                                                </div>
                                            </c:if>
                                            <form:form cssClass="form-horizontal" action="" method="post" modelAttribute="fournisseur">
                                                <div class="control-group">
                                                    <form:label cssClass="control-label" path="raisonSocial">Raison Social :</form:label>
                                                        <div class="controls">
                                                        <form:input cssClass="span6 typeahead"  path="raisonSocial"/>
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
