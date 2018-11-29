<%-- 
    Document   : payment
    Created on : Nov 25, 2018, 2:04:20 AM
    Author     : DEMO TEST
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <title>Payment - Page</title>
    </head>
    <body>
        <!--header-->
        <jsp:include page="include/header.jsp"/>
        <!--body-->
        <div class="container mt-5 mb-5" style="width:40vw;">
            <div class="row">
                <div class="col text-center">
                    <div class="card">
                        <div class="card-header">
                            ADDRESS
                        </div>
                        <div class="card-body text-left">
                            <form action="Payment" method="post">
                                <div class="form-group">
                                    <label>First Name</label>
                                    <input class="form-control" type="text" name="fname" value="${customer.fname}">
                                </div>
                                <div class="form-group">
                                    <label>Last Name</label>
                                    <input class="form-control" type="text" name="lname" value="${customer.lname}">
                                </div>
                                <div class="form-group">
                                    <label>Street</label>
                                    <input class="form-control" type="street" name="street" value="${customer.street}">
                                </div>
                                <div class="form-group">
                                    <label>City</label>
                                    <input class="form-control" type="city" name="city" value="${customer.city}">
                                </div>
                                <div class="form-group">
                                    <label>State</label>
                                    <input class="form-control" type="statefull" name="statefull" value="${customer.statefull}">
                                </div>
                                <div class="form-group">
                                    <label>Tel</label>
                                    <input class="form-control" type="telno" name="telno" value="${customer.phone}">
                                </div>
                                <div class="form-group">
                                    <label>Zip code</label>
                                    <input class="form-control" type="zipcode" name="zipcode" value="${customer.zipcode}" >
                                </div>
                                <div class="form-group">
                                    <label>Credit card 16 digit</label>
                                    <input class="form-control" type="text" name="cardno">
                                </div>
                                <div class="form-group">
                                    <label>Name</label>
                                    <input class="form-control" type="text" name="cardname">
                                </div>
                                <div class="form-group">
                                    <label>Month / Year </label>
                                    <div class="container">
                                        <div class="row">
                                            <div class="col-sm">
                                                <input class="form-control" type="text" name="month" placeholder="month">
                                            </div>
                                            <div class="col-sm">
                                                <input class="form-control" type="text" name="year" placeholder="year">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label>CVV</label>
                                    <input class="form-control" type="text" name="">
                                </div>
                                <div class="row">
                                    <div class="col-sm text-left">
                                        <button type="submit" class="btn btn-danger mb-2">Accept</button>

                                    </div>
<!--                                    <div class="col-sm-6">

                                    </div>-->
                                    <div class="col-sm text-right">
                                        <a href="Cart">
                                            <button type="btn" class="btn btn-success">Back</button> 
                                        </a>
                                    </div>

                                </div>
                            </form>
                        </div>
                    </div>
                </div>

            </div>
        </div>
        <!--footer-->
        <jsp:include page="include/footer.jsp"/>
    </body>
</html>
