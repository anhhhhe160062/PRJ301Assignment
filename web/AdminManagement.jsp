<%-- 
    Document   : Admin
    Created on : Mar 6, 2022, 3:37:35 PM
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
                <h1>Admin Management</h1>
                <table style="border: 1px solid black">
                    <tr>
                        <th>ID</th>
                        <th>UserName</th>
                        <th>Password</th>
                        <th>Role</th>
                        <th>Name</th>
                        <th>DOB</th>
                    </tr>
                    <c:forEach items="${accountList}" var="account">
                        <tr>
                            <td>${account.id}</td>
                            <td>${account.userName}</td>
                            <td>${account.password}</td>
                            <td>${account.role}</td>
                            <td>${account.name}</td>
                            <td>${account.DOB}</td>
                            <td>
                                <a href="#" onClick="getUpdateLink(${account.id})">Update</a>
                                <a href="#" onClick="showMess(${account.id})">Delete</a>
                            </td>
                        </tr>
                    </c:forEach>
                    <tr>
                        <td><a href="AddAccount.jsp">CREATE</a></td>
                    </tr>
                </table>
            </div>
        </div>
    </body>
    <script>
        function showMess(id) {
            console.log("abcdfd");
            var option = confirm("Are you sure?");
            if (option === true) {
                window.location.href = 'DeleteAccountController?id=' + id;
            }
        }
        function getUpdateLink(id) {
            window.location.href = 'UpdateAccountController?id=' + id;
        }
    </script>
</html>
