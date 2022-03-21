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
        <title>AShopCMS</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <jsp:include page="Shared/Menu.jsp"/>
        <div class="main-container">
            <jsp:include page="Shared/Header.jsp"/>
            <div class="container">
                <h1>Customer Management</h1>
                <div class="createLink">
                    <a href="AddPurchaseController">Create</a>
                </div>
                <table class="content-table">
                    <tr class="table-header">
                        <th>ID</th>
                        <th>Full Name</th>
                        <th>Phone number</th>
                        <th>PurchaseID</th>
                        <th>ShopID</th>
                        <th>Action</th>
                    </tr>
                    <c:forEach items="${customerList}" var="customer">
                        <c:if test="${sessionScope.account.id == customer.shopID}">
                            <tr class="table-data">
                                <td>${customer.customerID}</td>
                                <td>${customer.name}</td>
                                <td>${customer.phoneNumber}</td>
                                <td>${customer.purchaseID}</td>
                                <td>${customer.shopID}</td>
                                <td>
                                    <a href="#" onClick="getUpdateLink(${customer.customerID})"><i class="fa-solid fa-pen-clip"></i></a>
                                    <a href="#" onClick="showMess(${customer.customerID})"><i class="fa-solid fa-trash"></i></a>
                                </td>
                            </tr>
                        </c:if>
                    </c:forEach>
                </table>
            </div>
            <c:set var="pageNumber" value="${pageNumber}"/>
            <div class="pagination">
                <c:forEach begin="${1}" end="${numberOfPages}" var="i">
                    <a href="CustomerListController?pageNumber=${i}">${i}</a>
                </c:forEach>
            </div>
        </div>
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
</html>