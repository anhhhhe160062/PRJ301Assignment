<%-- 
    Document   : AddAccount
    Created on : Mar 7, 2022, 3:58:51 PM
    Author     : Hai Anh
--%>

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
                <form action="AddAccountController" method="get">
                    <table>
                        <tr>
                            <td>UserName:</td>
                            <td>
                                <input type="text" name="userName">
                            </td>
                        </tr>
                        <tr>
                            <td>Password:</td>
                            <td>
                                <input type="text" name="Password">
                            </td>
                        </tr>
                        <tr>
                            <td>Role:</td>
                            <td>
                                <input type="text" name="Role">
                            </td>
                        </tr>
                        <tr>
                            <td>Name:</td>
                            <td>
                                <input type="text" name="Name">
                            </td>
                        </tr>
                        <tr>
                            <td>CreatedDate:</td>
                            <td><input type="date" name="CreatedDate"</td>
                        </tr>
                        <tr>
                            <td><button type="submit">Create</button></td>
                        </tr>
                    </table>
                </form>
            </div>
        </div>
    </body>
</html>
