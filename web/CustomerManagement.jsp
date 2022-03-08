<%-- 
    Document   : Customer
    Created on : Mar 6, 2022, 3:37:44 PM
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
                <th>ID</th>
                <th>Full Name</th>
                <th>Phone number</th>
                <th>Shop Points</th>
                <th>PurchaseID</th>
                <th>DiscountID</th>
                <th>ShopID</th>
            </tr>
            <c:forEach items="${customerList}" var="customer">
                <tr>
                    <td>${customer.customerID}</td>
                    <td>${customer.name}</td>
                    <td>${customer.phoneNumber}</td>
                    <td>${customer.shopPoints}</td>
                    <td>${customer.purchaseID}</td>
                    <td>${customer.discountID}</td>
                    <td>${customer.shopID}</td>
                    <td>
                        <a href="#" onClick="getUpdateLink(${customer.customerID})">Update</a>
                        <a href="#" onClick="showMess(${customer.customerID})">Delete</a>
                    </td>
                </tr>
            </c:forEach>
            <tr>
                <td><a href="AddCustomer.jsp">CREATE</a></td>
            </tr>
        </table>
    </body>
    <script>
        function showMess(id) {
            console.log("abcdfd");
            var option = confirm("Are you sure?");
            if (option === true) {
                window.location.href = 'DeleteCustomerController?id=' + id;
            }
        }
        function getUpdateLink(id) {
            window.location.href = 'UpdateCustomerController?id=' + id;
        }
    </script>