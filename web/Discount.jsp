<%-- 
    Document   : Discount
    Created on : Mar 8, 2022, 5:13:57 PM
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
        <h1>Discount Management</h1>
        <jsp:include page="Shared/Menu.jsp"/>
        <table style="border: 1px solid black">
            <tr>
                <th>ID</th>
                <th>DiscountContent</th>
                <th>StartDate</th>
                <th>EndDate</th>
                <th>Status</th>
            </tr>
            <c:forEach items="${discountCodeList}" var="discount">
                <tr>
                    <td>${discount.id}</td>
                    <td>${discount.discountContent}</td>
                    <td>${discount.startDate}</td>
                    <td>${discount.endDate}</td>
                    <td>${discount.status}</td>
                    <td>
                        <a href="#" onClick="getUpdateLink(${discount.id})">Update</a>
                        <a href="#" onClick="showMess(${discount.id})">Delete</a>
                    </td>
                </tr>
            </c:forEach>
            <tr>
                <td><a href="AddDiscountCode.jsp">CREATE</a></td>
            </tr>
        </table>
    </body>
    <script>
        function showMess(id) {
            console.log("abcdfd");
            var option = confirm("Are you sure?");
            if (option === true) {
                window.location.href = 'DeleteDiscountCodeController?id=' + id;
            }
        }
        function getUpdateLink(id) {
            window.location.href = 'UpdateDiscountCodeController?id=' + id;
        }
    </script>
</html>
