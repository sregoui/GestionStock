<%-- 
    Document   : login
    Created on : 27 févr. 2015, 10:54:54
    Author     : samia
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html lang="en">
<head>

    <title>Login</title>

    <!-- Bootstrap Core CSS -->
    <link href="<%=request.getContextPath()%>/css/bootstrap.min_1.css" rel="stylesheet">
    <!-- MetisMenu CSS -->
    <link href="<%=request.getContextPath()%>/css/metisMenu.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="<%=request.getContextPath()%>/css/sb-admin-2.css" rel="stylesheet">
    <link href="<%=request.getContextPath()%>/css/font-awesome.min.css" rel="stylesheet" type="text/css">


</head>

<body>

    <div class="container">
        <div class="row">
            <div class="col-md-4 col-md-offset-4">
                <div class="login-panel panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title">Please Sign In</h3>
                    </div>
                    <div class="panel-body">
                        <form:form class="form-horizontal" action="" method="post" modelAttribute="user" >
                            <fieldset>
                                <div class="form-group">
                                     <form:input path="matricule" class="input-large span10" name="matricule" id="matricule" type="text" placeholder="matricule"/>
                                </div>
                                <div class="form-group">
                                     <form:input path="password" class="input-large span10" name="password" id="password" type="password" placeholder="password"/>
                                </div>
                                <!-- Change this to a button or input when using this as a form -->
                                
                                <button type="submit" class="btn btn-lg btn-success btn-block">Login</button>
                            </fieldset>
                       </form:form>
                    </div>
                </div>
            </div>
        </div>
    </div>

                    <!-- jQuery -->
    <script src="<%=request.getContextPath()%>/js/jquery.min.js"></script>
    <!-- Bootstrap Core JavaScript -->
    <script src="<%=request.getContextPath()%>/js/bootstrap.min.js"></script>
    <!-- Metis Menu Plugin JavaScript -->
    <script src="<%=request.getContextPath()%>/js/metisMenu.min.js"></script>
    <!-- Custom Theme JavaScript -->
    <script src="<%=request.getContextPath()%>/js/sb-admin-2.js"></script>
	<!-- end: JavaScript-->
	
</body>
</html>

