<%-- 
    Document   : UpdateAccount
    Created on : Mar 8, 2022, 9:24:46 AM
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
                    <form action="UpdateAccountController" method="post">
                        <div class="text-field">
                            <table class="content-table">
                                <tr class="table-data profile-data">
                                    <td>
                                        <label>ID</label>
                                    </td>
                                    <td>
                                        <input value="${account.id}" type="text" name="id" readonly>
                                    </td>
                                </tr>
                                <tr class="table-data profile-data">
                                    <td>
                                        <label>Username</label>
                                    </td>
                                    <td>
                                        <input value="${account.userName}" type="text" name="username">
                                    </td>
                                </tr>
                                <tr class="table-data profile-data">
                                    <td>
                                        <label>Password</label>
                                    </td>
                                    <td>
                                        <input value="${account.password}" type="text" name="password">
                                    </td>
                                </tr>
                                <tr class="table-data profile-data">
                                    <td>
                                        <label>Role</label>
                                    </td>
                                    <td>
                                        <input type="radio" name="role" value="Admin" ${account.role.equals("Admin")?"checked":""}>Admin
                                        <input type="radio" name="role" value="Shop" ${!account.role.equals("Admin")?"checked":""}>Shop
                                    </td>
                                </tr>
                                <tr class="table-data profile-data">
                                    <td>
                                        <label>Name</label>
                                    </td>
                                    <td>
                                        <input value="${account.name}" type="text" name="name">
                                    </td>
                                </tr>
                                <tr class="table-data profile-data">
                                    <td>
                                        <label>CreatedDate</label>
                                    </td>
                                    <td>
                                        <input value="${account.createdDate}" type="date" name="createdDate">
                                    </td>
                                </tr>
                                <tr class="table-data profile-data">
                                    <td>
                                        <button type="submit">Update</button>                
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
