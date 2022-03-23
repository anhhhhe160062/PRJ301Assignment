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
                <div class="form-box">
                    <form action="AddAccountController" method="get">
                        <div class="text-field">
                            <table class="content-table">
                                <tr class="table-data profile-data">
                                    <td>
                                        <label>UserName:</label>
                                    </td>
                                    <td>
                                        <input type="text" name="userName">
                                    </td>
                                </tr>
                                <tr class="table-data profile-data">
                                    <td>
                                        <label>Password:</label>
                                    </td>
                                    <td>
                                        <input type="text" name="Password">
                                    </td>
                                </tr>
                                <tr class="table-data profile-data">
                                    <td>
                                        <label>Role:</label>
                                    </td>
                                    <td>
                                        <input type="text" name="Role">
                                    </td>
                                </tr>
                                <tr class="table-data profile-data">
                                    <td>
                                        <label>Name:</label>
                                    </td>
                                    <td>
                                        <input type="text" name="Name">
                                    </td>
                                </tr>
                                <tr class="table-data profile-data">
                                    <td>
                                        <label>CreatedDate:</label>
                                    </td>
                                    <td>
                                        <input type="date" name="CreatedDate"/>
                                    </td>
                                </tr>
                                <tr class="table-data profile-data">
                                    <td>
                                        <button type="submit">Create</button>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
