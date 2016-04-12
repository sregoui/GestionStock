<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="includes/header.jsp" %>


                <!--/span-->
                <div class="span9" id="content">
                    <div class="row-fluid">
<!--                        <div class="alert alert-success">
							<button type="button" class="close" data-dismiss="alert">&times;</button>
                            <h4>Success</h4>
                        	The operation completed successfully</div>
                        
                    	</div>
                    <div class="row-fluid">-->
                        <!-- block -->
                        <div class="block">
                            <div class="navbar navbar-inner block-header">
                                <div class="muted pull-left">Statistique</div>
                               
                            </div>
                            <div class="block-content collapse in">
                                <div class="span3">
                                    <div class="chart" data-percent="73">73%</div>
                                    <div class="chart-bottom-heading"><span class="label label-info">Visitors</span>

                                    </div>
                                </div>
                                <div class="span3">
                                    <div class="chart" data-percent="53">53%</div>
                                    <div class="chart-bottom-heading"><span class="label label-info">Page Views</span>

                                    </div>
                                </div>
                                <div class="span3">
                                    <div class="chart" data-percent="83">83%</div>
                                    <div class="chart-bottom-heading"><span class="label label-info">Users</span>

                                    </div>
                                </div>
                                <div class="span3">
                                    <div class="chart" data-percent="13">13%</div>
                                    <div class="chart-bottom-heading"><span class="label label-info">Orders</span>

                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- /block -->
                    </div>
                    <div class="row-fluid">
                        <div class="span6">
                            <!-- block -->
                            <div class="block">
                                <div class="navbar navbar-inner block-header">
                                    <div class="muted pull-left">Clients</div>
                                    <div class="pull-right"><span class="badge badge-info">${nbrClient}</span>

                                    </div>
                                </div>
                                <div class="block-content collapse in">
                                    <table class="table table-striped">
                                        <thead>
                                            <tr>
                                                <th>#</th>
                                                <th>Nom</th>
                                                <th>Prenom</th>
                                                <th>Ville</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <c:if test="${listClient.isEmpty()}">
                                                <tr>
                                                    <td colspan="5">Aucun resultat trouvé</td>
                                                </tr>
                                            </c:if>
                                            <c:forEach items="${listClient}" var="element"> 
                                            <tr>
                                                <td>${element.idClient}</td>
                                                <td>${element.nom}</td>
                                                <td>${element.email}</td>
                                                <td>${element.ville}</td>
                                            </tr>
                                             </c:forEach>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <!-- /block -->
                        </div>
                        <div class="span6">
                            <!-- block -->
                            <div class="block">
                                <div class="navbar navbar-inner block-header">
                                    <div class="muted pull-left">Produits</div>
                                    <div class="pull-right"><span class="badge badge-info">${nbrProduit}</span>

                                    </div>
                                </div>
                                <div class="block-content collapse in">
                                    <table class="table table-striped">
                                        <thead>
                                            <tr>
                                                <th>#</th>
                                                <th>Produit</th>
                                                <th>Prix</th>
                                                <th>Stock</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                          <c:if test="${listProduit.isEmpty()}">
                                                <tr>
                                                    <td colspan="5">Aucun resultat trouvé</td>
                                                </tr>
                                            </c:if>
                                            <c:forEach items="${listProduit}" var="element"> 
                                            <tr>
                                                <td>${element.idProduit}</td>
                                                <td>${element.libelle}</td>
                                                <td>${element.prixVente}</td>
                                                <td>${element.stock}</td>
                                            </tr>
                                             </c:forEach>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <!-- /block -->
                        </div>
                    </div>
                    <div class="row-fluid">
                        <div class="span6">
                            <!-- block -->
                            <div class="block">
                                <div class="navbar navbar-inner block-header">
                                    <div class="muted pull-left">Utilisateurs</div>
                                    <div class="pull-right"><span class="badge badge-info">${nbrPersonnel}</span>

                                    </div>
                                </div>
                                <div class="block-content collapse in">
                                    <table class="table table-striped">
                                        <thead>
                                            <tr>
                                                <th>#</th>
                                                <th>Nom</th>
                                                <th>Prenom</th>
                                                <th>Service</th>
                                            </tr>
                                        </thead>
                                        <tbody>                  
                                            <c:if test="${listPersonnel.isEmpty()}">
                                                <tr>
                                                    <td colspan="5">Aucun resultat trouvé</td>
                                                </tr>
                                            </c:if>
                                            <c:forEach items="${listPersonnel}" var="element"> 
                                            <tr>
                                                <td>${element.idPersonnel}</td>
                                                <td>${element.nom}</td>
                                                <td>${element.prenom}</td>
                                                <td>${element.service}</td>
                                            </tr>
                                             </c:forEach>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <!-- /block -->
                        </div>
                        <div class="span6">
                            <!-- block -->
                          
                            <!-- /block -->
                        </div>
                    </div>
                
                </div>
            </div>
            <hr>
<%@include file="includes/footer.jsp" %>
