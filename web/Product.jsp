<%-- 
    Document   : Product
    Created on : Mar 6, 2022, 3:38:10 PM
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
                <h1>Product Management</h1>
                <div class="createLink">
                    <a href="AddProduct.jsp">Create</a>
                </div>
                <table class="content-table">
                    <tr class="table-header">
                        <th>ProductID</th>
                        <th>Product Name</th>
                        <th>Action</th>
                    </tr>
                    <c:forEach items="${productList}" var="product">
                        <tr class="table-data">
                            <td>${product.productID}</td>
                            <td>${product.productName}</td>
                            <td>
                                <a href="#" onClick="getUpdateLink(${product.productID})"><i class="fa-solid fa-pen-clip"></i></a>
                                <a href="#" onClick="showMess(${product.productID})"><i class="fa-solid fa-trash"></i></a>
                            </td>
                        </tr>
                    </c:forEach>
                </table>
            </div>
            <c:set var="pageNumber" value="${pageNumber}"/>
            <div class="pagination">
                <c:forEach begin="${1}" end="${numberOfPages}" var="i">
                    <a href="ProductListController?pageNumber=${i}">${i}</a>
                </c:forEach>
            </div>
        </div>
    </body>
    <script>
        function showMess(id) {
            console.log("abcdfd");
            var option = confirm("Are you sure?");
            if (option === true) {
                window.location.href = 'DeleteProductController?id=' + id;
            }
        }
        function getUpdateLink(id) {
            window.location.href = 'UpdateProductController?id=' + id;
        }
    </script>
</html>
