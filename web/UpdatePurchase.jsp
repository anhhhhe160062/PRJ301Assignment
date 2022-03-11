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
        <title>AShopCMS</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <jsp:include page="Shared/Menu.jsp"/>
        <div class="main-container">
            <jsp:include page="Shared/Header.jsp"/>
            <div class="container">
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
            </div>
        </div>
    </body>
</html>
