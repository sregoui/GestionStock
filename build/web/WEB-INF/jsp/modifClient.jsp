<%-- 
    Document   : modifClient
    Created on : 28 mars 2015, 21:03:53
    Author     : Samia Regoui <s.regoui@gmail.com>
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
                                          <legend>Modifier Client</legend>
                                              <form:form cssClass="form-horizontal" action="" method="post" modelAttribute="client">
                                                    <div class="control-group">
                                                        <form:label cssClass="control-label" path="nom">Rechercher :</form:label>
                                                            <div class="controls">
                                                            <form:input cssClass="span6 typeahead"  path="nom"/>
                                                        </div>
                                                           <div class="form-actions">
                                                        <button type="submit" class="btn btn-primary">Modifier</button>
                                                      
                                                    </div>
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

