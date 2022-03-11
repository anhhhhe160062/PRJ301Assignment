<%-- 
    Document   : export
    Created on : Mar 11, 2022, 1:41:29 PM
    Author     : Hai Anh
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="Model.Account"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <table>
            <tr>
                <td>ID</td>
                <td>UserName</td>
                <td>Password</td>
                <td>Role</td>
                <td>Name</td>
                <td>DOB</td>
            </tr>
            <%
                response.setContentType("application/vnd.ms-excel");
                response.setHeader("Content-Disposition", "inline; filename=shop.xls");
                ArrayList<Account> shopAccounts = (ArrayList<Account>) request.getAttribute("shopAccounts");
                if (shopAccounts != null) {
                    for (Account a : shopAccounts) {
            %>
            <tr>
                <td><%=a.getId()%></td>
                <td><%=a.getUserName()%></td>
                <td><%=a.getPassword()%></td>
                <td><%=a.getRole()%></td>
                <td><%=a.getName()%></td>
                <td><%=a.getDOB()%></td>
            </tr>
            <% }
                }%>
        </table>
    </body>
</html>
