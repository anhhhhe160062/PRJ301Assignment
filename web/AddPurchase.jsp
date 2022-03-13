<%-- 
    Document   : AddPurchase
    Created on : Mar 8, 2022, 4:15:54 PM
    Author     : Hai Anh
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                    <form action="AddPurchaseController" method="post">
                        <div class="text-field">
                            <label>ProductID:</label>
                            <select name="product">
                                <c:forEach items="${products}" var="products">
                                    <option value="${products.productID}">${products.productID}</option>
                                </c:forEach>
                            </select>
                            <button type="submit">Create</button>
                        </div>
                    </form>  
                </div>
            </div>
        </div>
    </body>
</html>
