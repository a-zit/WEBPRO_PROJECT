<%-- 
    Document   : productlist
    Created on : Nov 18, 2018, 9:31:13 PM
    Author     : Pluem
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <meta
            name="viewport"
            content="width=device-width, initial-scale=1, shrink-to-fit=no"
            />
        <meta name="description" content="" />
        <meta name="author" content="" />

        <title>Product - Page</title>
        <link rel="stylesheet" type="text/css" href="CSS/loginstyle.css" />
        <link rel="stylesheet" type="text/css" href="CSS/mystyle.css" />
        <link
            href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
            rel="stylesheet"
            id="bootstrap-css"
            />

        <!-- Bootstrap core CSS -->
        <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />

        <!-- Custom styles for this template -->
        <link href="css/heroic-features.css" rel="stylesheet" />
        <link
            rel="stylesheet"
            href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
            integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
            crossorigin="anonymous"
            />
    </head>
    <body id="LoginForm">
        <!-- Navigation -->
        <jsp:include page="include/header.jsp"/>


        <!-- Page Content -->
         <img  class="mt-5" src="Images/headerpic.jpg" style="width:100vw;opacity: 0.5;">
        <div class="container">
            <!-- Jumbotron Header -->
<!--            <header class="jumbotron my-4">
                
            </header>-->
           
            <hr>

            <!-- Page Features -->
            <div class="row text-center">
                <c:forEach items="${products}" var="p">
                    <div class="col-lg-3 col-md-6 mb-4" style="height: auto;">
                        <div class="card">
                            <img
                                class="card-img-top"
                                src="./Images/${p.productid}.png"
                                alt="#"
                                />
                            <div class="card-body">
                                <h4 class="card-title">${p.productname}</h4>
                                <hr>
                                <p class="card-text">
                                    ${p.productdetail}
                                </p>
                            </div>
                            <div class="card-footer">
                                <a href="ProductDetail?productid=${p.productid}" class="btn btn-primary">Find Out More!</a>
                            </div>
                        </div>
                    </div>    
                </c:forEach>   
            </div>
            <!-- /.row -->
        </div>
        <!-- /.container -->

        <!-- Footer -->
        <jsp:include page="include/footer.jsp"/>

        <!-- Bootstrap core JavaScript -->
        <script src="vendor/jquery/jquery.min.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    </body>
</html>
