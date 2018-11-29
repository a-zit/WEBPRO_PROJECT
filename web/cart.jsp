<%-- 
    Document   : cart
    Created on : Nov 18, 2018, 9:39:27 PM
    Author     : Pluem
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="CSS/loginstyle.css" />
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    </head>
    <body id="LoginForm">
        <div>
            <!-- Navigation -->
            <jsp:include page="include/header.jsp"/>
            <!--Empty Cart-->
            <!--            <div style="margin-top: 10vh" class="text-center">     
                            <h1 class="mb-4">Your Cart is Empty</h1>
                            <p class="mb-5">There are no products in your shopping cart</p>
                            <hr class="mb-5" style="width:50vw">
                            <a href="productlist.jsp">
                                <button type="button" class="btn btn-outline-dark" >Continue Shopping</button>
                            </a>
                        </div>-->
            <!--Empty Cart End-->
            <div class="container" style="margin-top: 2vh;">
                <div class="row">
                    <div class="col-sm-7 card">
                        <div class="card-body">
                            <h5>YOUR CART ( ${cart.totalQuantity} )</h5>
                            <hr>
                            <div class="text-center">
                                <br><h5 class="mt-5">${emptycart}</h5>
                            </div>
                            <c:forEach items="${cart.lineItems}" var="lineItem">
                                <div>
                                    <div class="row">
                                        <div class="col-sm-3">
                                            <img src="Images/${lineItem.product.productid}.png" class="img-thumbnail">
                                        </div>
                                        <div class="col-sm-6">
                                            <div class="row" style="font-size: 12px;">
                                                <div class="col-sm-6">
                                                    <p>PRODUCT NAME :</p>
                                                    <p>TYPE :</p>
                                                    <p>SIZE :</p>
                                                    <p>QTY :</p>
                                                </div>
                                                <div class="col-sm-6">
                                                    <p>${lineItem.product.productname}</p>
                                                    <p> ${lineItem.product.producttype} </p>
                                                    <p> ${lineItem.product.productsize} </p>
                                                    <a href="MinusProduct?productid=${lineItem.product.productid}"><button>-</button></a>
                                                     ${lineItem.quantity} 
                                                    <a href="PlusProduct?productid=${lineItem.product.productid}"><button>+</button></a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-3">
                                            <p>${lineItem.product.price} ฿</p>
                                        </div>
                                    </div>
                                    <div class="text-right">
                                        <a href="RemoveProduct?productid=${lineItem.product.productid}">
                                            <button type="button" class="btn btn-outline-secondary">Remove</button>
                                        </a>
                                    </div>
                                    <hr>
                                </div>
                            </c:forEach>                  
                        </div>
                    </div>
                    <div class="col-sm-1"></div>
                    <div class="col-sm-4 card text-white bg-dark mb-3" style="height: 35vh">
                        <div class="card-body">
                            <h5>SUMMARY</h5>
                            <hr>
                            <div class="row" style="font-size: 12px;">
                                <div class="col-sm-9">
                                    <p>SUBTOTAL</p>
                                    <p>ESTIMATED DUTIES & TAXES</p>
                                    <p>TOTAL</p>
                                </div>
                                <div class="col-sm-3">
                                    <p>${cart.totalPrice} ฿</p>
                                    <p>${hundredshow}</p>    
                                    <p>${total} ฿</p>
                                </div>
                            </div>
                            <hr>
                            <div class="text-center">
                                <a href="Payment?productid=${product.productid}"><button type="button" class="btn btn-outline-warning">CHECKOUT</button></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!--Footer-->
            <div style="position: fixed; bottom: 0;width: 100%;">
                <jsp:include page="include/footer.jsp"/>
            </div>
        </div>
    </body>
</html>
