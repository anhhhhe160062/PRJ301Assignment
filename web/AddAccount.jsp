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
                            <label>UserName:</label>
                            <input type="text" name="userName">
                            <label>Password:</label>
                            <input type="text" name="Password">
                            <label>Role:</label>
                            <input type="text" name="Role">
                            <label>Name:</label>
                            <input type="text" name="Name">
                            <label>CreatedDate:</label>
                            <input type="date" name="CreatedDate"/>
                            <button type="submit">Create</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
