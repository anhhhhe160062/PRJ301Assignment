<%-- 
    Document   : exportShopReport
    Created on : Mar 13, 2022, 3:12:24 PM
    Author     : Hai Anh
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="Model.Customer"%>
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
                <td>CustomerID</td>
                <td>Full Name</td>
                <td>Phone number</td>
                <td>PurchaseID</td>
                <td>ShopID</td>
            </tr>
            <%
                response.setContentType("application/vnd.ms-excel");
                response.setHeader("Content-Disposition", "inline; filename=shopReport.xls");
                ArrayList<Customer> customers = (ArrayList<Customer>) request.getAttribute("customers");
                if (customers != null) {
                    for (Customer c : customers) {
            %>
            <tr>
                <td><%=c.getCustomerID()%></td>
                <td><%=c.getName()%></td>
                <td><%=c.getPhoneNumber()%></td>
                <td><%=c.getPurchaseID()%></td>
                <td><%=c.getShopID()%></td>
            </tr>
            <% }
                }%>
        </table>    </body>
</html>
