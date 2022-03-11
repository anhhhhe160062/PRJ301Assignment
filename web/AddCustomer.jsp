<%-- 
    Document   : AddCustomer
    Created on : Mar 8, 2022, 2:36:50 PM
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
                <form action="AddCustomerController" method="get">
                    <table>
                        <tr>
                            <td>Full Name:</td>
                            <td>
                                <input type="text" name="Name">
                            </td>
                        </tr>
                        <tr>
                            <td>Phone number:</td>
                            <td>
                                <input type="text" name="phoneNumber">
                            </td>
                        </tr>
                        <tr>
                            <td>Shop Points</td>
                            <td>
                                <input type="text" name="shopPoints">
                            </td>
                        </tr>
                        <tr>
                            <td>PurchaseID:</td>
                            <td>
                                <input type="text" name="purchaseID">
                            </td>
                        </tr>
                        <tr>
                            <td>DiscountID</td>
                            <td>
                                <input type="text" name="discountID">
                            </td>
                        </tr>
                        <tr>
                            <td>ShopID</td>
                            <td>
                                <input type="text" name="shopID">
                            </td>
                        </tr>
                        <tr>
                            <td><button type="submit">Create</button></td>
                        </tr>
                    </table>
                </form>   
            </div>
        </div>
    </body>
</html>
