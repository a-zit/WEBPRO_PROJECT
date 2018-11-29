<%-- 
    Document   : myaccount
    Created on : Nov 29, 2018, 9:21:47 PM
    Author     : Pluem
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="CSS/loginstyle.css" />
    </head>
    <body id="LoginForm">
        <div>
            <!-- Navigation -->
            <jsp:include page="include/header.jsp"/>
            <!--Empty Favorite-->
            <div style="margin-top: 10vh" class="text-center">     
                <h1 class="mb-4">Hello</h1>
                <p class="mb-5">nice to meet you , ${customer.fname} ${customer.lname}</p>
                <hr class="mb-5" style="width:50vw">
                <div class="text-center">
                    <p style="font-size:25px;">Your Profile</p>
                </div>
                <div class="row">
                    <div class="col-sm">
                        <p>Phone : ${customer.phone}</p>
                        <p>E-mail : ${customer.mail}</p>
                        <p>Street : ${customer.street}</p>
                        <p>City : ${customer.city}</p>
                        <p>State : ${customer.statefull}</p>
                        <p>Zip Code : ${customer.zipcode}</p>
                    </div>
                    
                </div>
                <hr style="width:50vw;">
                <a href="ProductList">
                    <button type="button" class="btn btn-outline-dark mt-5" >Continue Shopping</button>
                </a>
            </div>
            <!--Empty Favorite End-->

            <!--Footer-->
            <div style="position: fixed; bottom: 0;width: 100%;">
                <jsp:include page="include/footer.jsp"/>
            </div>
        </div>
    </body>
</html>
