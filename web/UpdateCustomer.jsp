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
        <title>JSP Page</title>
    </head>
    <body>
        <form action="UpdateCustomerController" method="post">
            <table>
                <tr>
                    <td>ID:</td>
                    <td>
                        <input value="${customer.customerID}" type="text" name="customerID" readonly>
                    </td>
                </tr>
                <tr>
                    <td>Full Name:</td>
                    <td>
                        <input value="${customer.name}" type="text" name="Name">
                    </td>
                </tr>
                <tr>
                    <td>Phone number:</td>
                    <td>
                        <input value="${customer.phoneNumber}" type="" name="phoneNumber" >
                    </td>
                </tr>
                <tr>
                    <td>Shop Points</td>
                    <td>
                        <input value="${customer.shopPoints}" type="text" name="shopPoints" >
                    </td>
                </tr>
                <tr>
                    <td>PurchaseID:</td>
                    <td>
                        <input value="${customer.purchaseID}" type="text" name="purchaseID" >
                    </td>
                </tr>
                <tr>
                    <td>DiscountID</td>
                    <td>
                        <input value="${customer.discountID}" type="text" name="discountID" >
                    </td>
                </tr>
                <tr>
                    <td>ShopID</td>
                    <td>
                        <input value="${customer.shopID}" type="text" name="shopID" >
                    </td>
                </tr>
                <tr>
                    <td><button type="submit">Create</button></td>
                </tr>
            </table>
        </form>    
    </body>
</html>
