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
    </head>
    <body>
        <div>
            <!-- Navigation -->
            <jsp:include page="include/header.jsp"/>
            <!--Empty Favorite-->
            <div style="margin-top: 10vh" class="text-center">     
                <h1 class="mb-4">Thanks for Purchase</h1>
                <p class="mb-5">We Hope you like ours Product. </p>
                <hr class="mb-5" style="width:50vw">
                <img src="Images/iconcheck.ico" style="width:5vw;">
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
