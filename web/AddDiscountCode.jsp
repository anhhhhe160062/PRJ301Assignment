<%-- 
    Document   : AddDiscountCode
    Created on : Mar 8, 2022, 5:17:46 PM
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
        <form action="AddDiscountCodeController" method="get">
            <table>
                <tr>
                    <td>DiscountContent:</td>
                    <td>
                        <input type="text" name="discountContent">
                    </td>
                </tr>
                <tr>
                    <td>StartDate:</td>
                    <td>
                        <input type="date" name="startDate">
                    </td>
                </tr>
                <tr>
                    <td>EndDate:</td>
                    <td>
                        <input type="date" name="endDate">
                    </td>
                </tr>
                <tr>
                    <td>Status:</td>
                    <td>
                        <input type="text" name="status">
                    </td>
                </tr>
                <tr>
                    <td><button type="submit">Create</button></td>
                </tr>
            </table>
        </form>    
    </body>
</html>
