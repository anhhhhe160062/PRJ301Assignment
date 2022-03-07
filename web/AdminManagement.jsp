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
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Admin Management</h1>
        <jsp:include page="Shared/Menu.jsp"/>
        <table style="border: 1px solid black">
            <tr>
                <th>ID</th>
                <th>UserName</th>
                <th>Password</th>
                <th>Role</th>
                <th>Name</th>
                <th>Gender</th>
                <th>DOB</th>
            </tr>
            <c:forEach items="${accountList}" var="account">
                <tr>
                    <td>${account.id}</td>
                    <td>${account.userName}</td>
                    <td>${account.password}</td>
                    <td>${account.role}</td>
                    <td>${account.name}</td>
                    <td>${account.gender}</td>
                    <td>${account.DOB}</td>
                </tr>
            </c:forEach>
            <tr>
                <td><a href="AddAccount.jsp">CREATE</a></td>
            </tr>
        </table>
    </body>
</html>
