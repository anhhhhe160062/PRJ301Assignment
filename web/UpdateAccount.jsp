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
                            <label>ID</label>
                            <input value="${account.id}" type="text" name="id" readonly>
                            <label>Username</label>
                            <input value="${account.userName}" type="text" name="username">
                            <label>Password</label>
                            <input value="${account.password}" type="text" name="password">
                            <label>Role</label>
                            <input type="radio" name="role" value="Admin" ${account.role.equals("Admin")?"checked":""}>Admin
                            <input type="radio" name="role" value="Shop" ${!account.role.equals("Admin")?"checked":""}>Shop
                            <label>Name</label>
                            <input value="${account.name}" type="text" name="name">
                            <label>CreatedDate</label>
                            <input value="${account.createdDate}" type="date" name="createdDate">
                            <button type="submit">Update</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
