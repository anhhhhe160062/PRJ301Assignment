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
                    <form action="AdminExcelExportServlet" method="post">
                        <table>
                            <label><h2>Export accounts created</h2></label>
                            <tr>
                                <td>From Date</td>
                                <td>
                                    <input type="date" name="fromDate">
                                </td>
                                <td>To Date</td>
                                <td>
                                    <input type="date" name="toDate">
                                </td>
                                <td><button type="submit">Export xls</button></td>
                            </tr>
                        </table>
                    </form>
                </c:if>
                <c:if test="${sessionScope.account.role == 'shop'}">
                    <form action="ShopExcelExportServlet" method="post">
                        <table>
                            <label><h2>Export shop report</h2></label>
                            <tr>
                                <td>Shop ID</td>
                                <td>
                                    <input type="text" name="shopID">
                                </td>
                                <td><button type="submit">Export xls</button></td>
                            </tr>
                        </table>
                    </form>
                </c:if>
            </div>
        </div>
    </body>
</html>
