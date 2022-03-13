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
        <jsp:include page="Shared/Menu.jsp"/>
        <div class="main-container">
            <jsp:include page="Shared/Header.jsp"/>
            <div class="container">
                <h1>Profile</h1>
                <h1>${sessionScope.account.id}</h1>
                <h1>${sessionScope.account.userName}</h1>
                <h1>${sessionScope.account.password}</h1>
                <h1>${sessionScope.account.role}</h1>
                <h1>${sessionScope.account.name}</h1>
                <h1>${sessionScope.account.createdDate}</h1>
            </div>
        </div>
    </body>
</html>
