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
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Product Management</h1>
        <jsp:include page="Shared/Menu.jsp"/>
        <table style="border: 1px solid black">
            <tr>
                <th>ProductID</th>
                <th>Product Name</th>
            </tr>
            <c:forEach items="${productList}" var="product">
                <tr>
                    <td>${product.productID}</td>
                    <td>${product.productName}</td>
                    <td>
                        <a href="#" onClick="getUpdateLink(${product.productID})">Update</a>
                        <a href="#" onClick="showMess(${product.productID})">Delete</a>
                    </td>
                </tr>
            </c:forEach>
            <tr>
                <td><a href="AddProduct.jsp">CREATE</a></td>
            </tr>
        </table>
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
