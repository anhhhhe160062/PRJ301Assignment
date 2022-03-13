<%-- 
    Document   : AddCustomer
    Created on : Mar 8, 2022, 2:36:50 PM
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
                    <form action="AddCustomerController" method="get">
                        <div class="text-field">
                            <label>Full Name:</label>
                            <input type="text" name="Name">
                            <label>Phone number:</label>
                            <input type="text" name="phoneNumber">
                            <label>PurchaseID:</label>
                            <input value="${latestPurchase.purchaseID}" type="text" name="purchaseID" readonly>
                            <label>ShopID</label>
                            <select name="shopID">
                                <c:forEach items="${shopAccounts}" var="shopAccounts">
                                    <option value="${shopAccounts.id}">${shopAccounts.id}</option>
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
