<%-- 
    Document   : Purchase
    Created on : Mar 8, 2022, 4:16:55 PM
    Author     : Hai Anh
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Customer Management</h1>
        <jsp:include page="Shared/Menu.jsp"/>
        <table style="border: 1px solid black">
            <tr>
                <th>PurchaseID</th>
                <th>ProductID</th>
            </tr>
            <c:forEach items="${purchaseList}" var="purchase">
                <tr>
                    <td>${purchase.purchaseID}</td>
                    <td>${purchase.productID}</td>
                    <td>
                        <a href="#" onClick="getUpdateLink(${purchase.purchaseID})">Update</a>
                        <a href="#" onClick="showMess(${purchase.purchaseID})">Delete</a>
                    </td>
                </tr>
            </c:forEach>
            <tr>
                <td><a href="AddPurchase.jsp">CREATE</a></td>
            </tr>
        </table>
    </body>
    <script>
        function showMess(id) {
            console.log("abcdfd");
            var option = confirm("Are you sure?");
            if (option === true) {
                window.location.href = 'DeletePurchaseController?id=' + id;
            }
        }
        function getUpdateLink(id) {
            window.location.href = 'UpdatePurchaseController?id=' + id;
        }
    </script>
</html>
