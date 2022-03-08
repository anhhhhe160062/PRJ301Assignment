<%-- 
    Document   : UpdatePurchase
    Created on : Mar 8, 2022, 4:16:12 PM
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
        <form action="UpdatePurchaseController" method="post">
            <table>
                <tr>
                    <td>PurchaseID:</td>
                    <td>
                        <input value="${purchase.purchaseID}" type="text" name="purchaseID" readonly>
                    </td>
                </tr>
                <tr>
                    <td>ProductID:</td>
                    <td>
                        <input value="${purchase.productID}" type="text" name="productID" >
                    </td>
                </tr>
                <tr>
                    <td><button type="submit">Update</button></td>
                </tr>
            </table>
        </form>    
    </body>
</html>
