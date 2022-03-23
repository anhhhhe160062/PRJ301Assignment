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
                            <table class="content-table">
                                <tr class="table-data profile-data">
                                    <td>
                                        <label>ID:</label>
                                    </td>
                                    <td>
                                        <input value="${customer.customerID}" type="text" name="customerID" readonly>
                                    </td>
                                </tr>
                                <tr class="table-data profile-data">
                                    <td>
                                        <label>Full Name:</label>
                                    </td>
                                    <td>
                                        <input value="${customer.name}" type="text" name="Name">
                                    </td>
                                </tr>
                                <tr class="table-data profile-data">
                                    <td>
                                        <label>Phone number:</label>
                                    </td>
                                    <td>
                                        <input value="${customer.phoneNumber}" type="" name="phoneNumber" >
                                    </td>
                                </tr>
                                <tr class="table-data profile-data">
                                    <td>
                                        <label>PurchaseID:</label>
                                    </td>
                                    <td>
                                        <input value="${customer.purchaseID}" type="text" name="purchaseID" readonly>
                                    </td>
                                </tr>     
                                <tr class="table-data profile-data">
                                    <td>
                                        <label>ShopID</label>
                                    </td>
                                    <td>
                                        <input value="${customer.shopID}" type="text" name="shopID" readonly>
                                    </td>
                                </tr>  
                                <tr class="table-data profile-data">
                                    <td>
                                        <button type="submit">Update</button>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </form>    
                </div>
            </div>
        </div>
    </body>
</html>
