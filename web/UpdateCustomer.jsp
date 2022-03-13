<%-- 
    Document   : UpdateCustomer
    Created on : Mar 8, 2022, 2:37:08 PM
    Author     : Hai Anh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>AShopCMS</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <jsp:include page="Shared/Menu.jsp"/>
        <div class="main-container">
            <jsp:include page="Shared/Header.jsp"/>
            <div class="container">
                <div class="form-box">
                    <form action="UpdateCustomerController" method="post">
                        <div class="text-field">
                            <label>ID:</label>
                            <input value="${customer.customerID}" type="text" name="customerID" readonly>
                            <label>Full Name:</label>
                            <input value="${customer.name}" type="text" name="Name">
                            <label>Phone number:</label>
                            <input value="${customer.phoneNumber}" type="" name="phoneNumber" >
                            <label>PurchaseID:</label>
                            <input value="${customer.purchaseID}" type="text" name="purchaseID" readonly>
                            <label>ShopID</label>
                            <input value="${customer.shopID}" type="text" name="shopID" readonly>
                            <button type="submit">Update</button>
                        </div>
                    </form>    
                </div>
            </div>
        </div>
    </body>
</html>
