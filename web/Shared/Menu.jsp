<%-- 
    Document   : Menu
    Created on : Mar 6, 2022, 3:40:16 PM
    Author     : Hai Anh
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>AShopCMS</title>
    </head>
    <body>
        <nav class="side-bar nav-bar">
            <a href="Profile.jsp">Profile</a>
            <c:if test="${sessionScope.account.role == 'shop'}">
                <a href="ProductListController">Product</a>
            </c:if>
            <c:if test="${sessionScope.account.role == 'Admin'}">
                <a href="AccountListServlet">User Management</a>
            </c:if>
            <c:if test="${sessionScope.account.role == 'shop'}">
                <a href="CustomerListController">Customer Management</a>
            </c:if>
            <a href="Statistic.jsp">Statistics</a>
            <a href="LogoutServlet">Logout</a>
        </nav>
    </body>
</html>
