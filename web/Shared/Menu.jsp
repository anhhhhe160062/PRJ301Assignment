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
        <script src="https://kit.fontawesome.com/14a9441458.js" crossorigin="anonymous"></script>
    </head>
    <body>
        <style>
            .side-bar{
                width: 196px;
                min-width: 196px;
                position: fixed;
                left: 0;
                top: 0;
                height: 100%;
            }

            .side-bar a{
                text-decoration: none;
                color: white;
                width: 100%;
            }

            .side-bar{
                font-weight: 400;
                height: 100%;
                background-color: #001543;
                color: #fff;
            }

            .side-bar ul{
                padding-inline-start: 0;
            }

            .side-bar ul li{
                list-style: none;
                padding: 0.75rem 1rem;
            }

            .side-bar h1{
                background-color: #000B24;
                height: 56px;
                margin-block-start: 0;
                align-items: center;
                padding: 0px 0 0 20px;
                display: flex;
            }

            .nav-bar-li:hover {
                background-color: #193652;
            }

        </style>
        <div class="side-bar nav-bar" id="testing1">
            <h1>CMS</h1>
            <ul id="side-bar-elements">
                <li class="nav-bar-li" >
                    <i class="fa-solid fa-id-card"></i>
                    <a href="Profile.jsp">Profile</a>
                </li>
                <c:if test="${sessionScope.account.role == 'shop'}">
                    <li class="nav-bar-li" >
                        <i class="fa-solid fa-box"></i>
                        <a href="ProductListController">Product</a>
                    </li>
                </c:if>
                <c:if test="${sessionScope.account.role == 'Admin'}">
                    <li class="nav-bar-li" >
                        <i class="fa fa-user icons"></i>
                        <a href="AccountListServlet">User Management</a>
                    </li>
                </c:if>
                <c:if test="${sessionScope.account.role == 'shop'}">
                    <li class="nav-bar-li" >
                        <i class="fa fa-user icons"></i>
                        <a href="CustomerListController">Customer Management</a>
                    </li>
                </c:if>
                <li class="nav-bar-li" >
                    <i class="fa-solid fa-chart-column"></i>
                    <a href="Statistic.jsp">Statistics</a>
                </li>
                <li class="nav-bar-li" >
                    <a href="LogoutServlet">Logout</a>
                </li>
            </ul>
        </div>
    </body>
</html>
