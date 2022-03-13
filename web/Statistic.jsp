<%-- 
    Document   : Statistic
    Created on : Mar 6, 2022, 3:37:12 PM
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
                <h1>Statistics</h1>
                <c:if test="${sessionScope.account.role == 'Admin'}">
                    <div class="form-box">
                        <form action="AdminExcelExportServlet" method="post">
                            <div class="text-field">
                                <h2>Export accounts created</h2>
                                <label>From Date</label>
                                <input type="date" name="fromDate">
                                <label>To Date</label>
                                <input type="date" name="toDate">
                                <button type="submit">Export xls</button>
                            </div>
                        </form>
                    </div>
                </c:if>
                <c:if test="${sessionScope.account.role == 'shop'}">
                    <div class="form-box">
                        <form action="ShopExcelExportServlet" method="post">
                            <div class="text-field">
                                <h2>Export shop report</h2>
                                <label>Shop ID</label>
                                <input type="text" name="shopID">
                                <button type="submit">Export xls</button>
                            </div>
                        </form>
                    </div>
                </c:if>
            </div>
        </div>
    </body>
</html>
