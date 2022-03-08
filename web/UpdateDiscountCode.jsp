<%-- 
    Document   : UpdateDiscountCode
    Created on : Mar 8, 2022, 5:27:52 PM
    Author     : Hai Anh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="UpdateDiscountCodeController" method="post">
            <table>
                <tr>
                    <td>ID:</td>
                    <td>
                        <input value="${discount.id}" type="text" name="discountID" readonly>
                    </td>
                </tr>
                <tr>
                    <td>DiscountContent:</td>
                    <td>
                        <input value="${discount.discountContent}" type="text" name="discountContent">
                    </td>
                </tr>
                <tr>
                    <td>StartDate:</td>
                    <td>
                        <input value="${discount.startDate}" type="date" name="startDate">
                    </td>
                </tr>
                <tr>
                    <td>EndDate:</td>
                    <td>
                        <input value="${discount.endDate}" type="date" name="endDate">
                    </td>
                </tr>
                <tr>
                    <td>Status:</td>
                    <td>
                        <input value="${discount.status}" type="text" name="status">
                    </td>
                </tr>
                <tr>
                    <td><button type="submit">Update</button></td>
                </tr>
            </table>
        </form>    
    </body>
</html>
