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
        <title>JSP Page</title>
    </head>
    <body>
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
                    <td>Gender:</td>
                    <td>
                        <input type="radio" name="Gender" value="1">Male
                        <input type="radio" name="Gender" value="0">Female
                    </td>
                </tr>
                <tr>
                    <td>DOB:</td>
                    <td><input type="date" name="DOB"</td>
                </tr>
                <tr>
                    <td><button type="submit">Create</button></td>
                </tr>
            </table>
        </form>    
    </body>
</html>
