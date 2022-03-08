<%-- 
    Document   : AddProduct
    Created on : Mar 8, 2022, 5:47:38 PM
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
        <form action="AddProductController" method="get">
            <table>
                <tr>
                    <td>Product Name</td>
                    <td>
                        <input type="text" name="productName">
                    </td>
                </tr>
                <tr>
                    <td><button type="submit">Create</button></td>
                </tr>
            </table>
        </form>    
    </body>
</html>
