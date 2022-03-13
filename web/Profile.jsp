<%-- 
    Document   : Profile
    Created on : Mar 6, 2022, 3:40:00 PM
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
        <style>
            .table-data.profile-data:nth-of-type(even){
                background-color: white;
            }
            .table-data.profile-data td{
                border: 1px solid;
            }
        </style>
        <jsp:include page="Shared/Menu.jsp"/>
        <div class="main-container">
            <jsp:include page="Shared/Header.jsp"/>
            <div class="container">
                <h1>Profile</h1>
                <div class="createLink">
                    <a href="#" onClick="getUpdateLink(${sessionScope.account.id})">Update</a>
                </div>
                <table class="content-table">
                    <tr class="table-data profile-data">
                        <td>ID:</td>
                        <td>${sessionScope.account.id}</td>
                    </tr>
                    <tr class="table-data profile-data">
                        <td>Username:</td>
                        <td>${sessionScope.account.userName}</td>
                    </tr>
                    <tr class="table-data profile-data">
                        <td>Password:</td>
                        <td>${sessionScope.account.password}</td>
                    </tr>
                    <tr class="table-data profile-data">
                        <td>Role:</td>
                        <td>${sessionScope.account.role}</td>
                    </tr>
                    <tr class="table-data profile-data">
                        <td>Full Name:</td>
                        <td>${sessionScope.account.name}</td>
                    </tr>
                    <tr class="table-data profile-data">
                        <td>Created Date</td>
                        <td>${sessionScope.account.createdDate}</td>
                    </tr>
                </table>
            </div>
        </div>
    </body>
    <script>
        function getUpdateLink(id) {
            window.location.href = 'UpdateAccountController?id=' + id;
        }
    </script>
</html>
