<%-- 
    Document   : Header
    Created on : Mar 10, 2022, 4:14:16 PM
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
        <div class="main-header">
            <h1>Role: ${sessionScope.account.role}</h1>
        </div>
    </body>
</html>
