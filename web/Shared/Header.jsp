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
        <style>
            .main-header{
                width: calc(100% - 196px);
                height: 54px;
                position: fixed;
                background-color: #fff;
                top: 0;
                display: flex;
                align-items: center;
                box-shadow: 0px 4px 8px #00000029;
                padding: 0 1rem;
            }
            .main-header h1{
                display:flex;
                align-content: center;
            }
        </style>
        <div class="main-header">
            <h1>Role: ${sessionScope.account.role}</h1>
        </div>
    </body>
</html>
