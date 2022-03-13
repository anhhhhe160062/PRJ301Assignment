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
        <style>
            .content-table {
                border-collapse: collapse;
                min-width: 100%;
                background: #fff;
            }
            .table-header {
                background-color: #bdddff;
                text-align: left;
                font-weight: bold;
            }
            .table-data {
                border-bottom: 1px solid;
            }
            .table-header th, .table-data td{
                padding: 12px 15px;
            }
            .table-data:nth-of-type(even){
                background-color: #F5F5F5;
            }
            .createLink {
                text-align: right;
                margin: 16px;
            }
            .createLink a{
                text-decoration: none;
                color: white;
                background-color: #007bff;
                border-color: #007bff;
                padding: 10px;
                border-radius: 10px;
            }
        </style>
        <jsp:include page="Shared/Menu.jsp"/>
        <div class="main-container">
            <jsp:include page="Shared/Header.jsp"/>
            <div class="container">
                <h1>Admin Management</h1>
                <div class="createLink">
                    <a href="AddAccount.jsp">Create</a>
                </div>
                <table class="content-table">
                    <tr class="table-header">
                        <th>ID</th>
                        <th>UserName</th>
                        <th>Password</th>
                        <th>Role</th>
                        <th>Name</th>
                        <th>CreatedDate</th>
                        <th>Action</th>
                    </tr>
                    <c:forEach items="${accountList}" var="account">
                        <tr class="table-data">
                            <td>${account.id}</td>
                            <td>${account.userName}</td>
                            <td>${account.password}</td>
                            <td>${account.role}</td>
                            <td>${account.name}</td>
                            <td>${account.createdDate}</td>
                            <td>
                                <a href="#" onClick="getUpdateLink(${account.id})"><i class="fa-solid fa-pen-clip"></i></a>
                                <a href="#" onClick="showMess(${account.id})"><i class="fa-solid fa-trash"></i></a>
                            </td>
                        </tr>
                    </c:forEach>
                </table>
            </div>
            <c:set var="pageNumber" value="${pageNumber}"/>
            <c:if test="${numberOfPages > 1}">
                <div class="pagination">
                    <c:forEach begin="${1}" end="${numberOfPages}" var="i">
                        <a href="AccountListServlet?pageNumber=${i}">${i}</a>
                    </c:forEach>
                </div>
            </c:if>
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
