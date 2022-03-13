<%-- 
    Document   : UpdateProduct
    Created on : Mar 8, 2022, 5:47:49 PM
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
                    <form action="UpdateProductController" method="post">
                        <div class="text-field">
                            <label>ProductID</label>
                            <input value="${product.productID}" type="text" name="productID" readonly>
                            <label>Product Name</label>
                            <input value="${product.productName}" type="text" name="productName">
                            <td><button type="submit">Update</button></td>
                        </div>
                    </form> 
                </div>
            </div>
        </div>
    </body>
</html>
