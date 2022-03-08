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
        <title>JSP Page</title>
    </head>
    <body>
        <form action="UpdateAccountController" method="post">
            <table>
                <tr>
                    <td>ID</td>
                    <td>
                        <input value="${account.id}" type="text" name="id" readonly>
                    </td>
                </tr>
                <tr>
                    <td>Username</td>
                    <td>
                        <input value="${account.userName}" type="text" name="username">
                    </td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td>
                        <input value="${account.password}" type="text" name="password">
                    </td>
                </tr>
                <tr>
                    <td>Role</td>
                    <td>
                        <input type="radio" name="role" value="Admin" ${account.role.equals("Admin")?"checked":""}>Admin
                        <input type="radio" name="role" value="Shop" ${!account.role.equals("Admin")?"checked":""}>Shop
                    </td>
                </tr>
                <tr>
                    <td>Name</td>
                    <td>
                        <input value="${account.name}" type="text" name="name">
                    </td>
                </tr>
                <tr>
                    <td>Gender</td>
                    <td>
                        <input type="radio" name="gender" value="1" ${account.gender?"checked":""}>Male
                        <input type="radio" name="gender" value="0" ${!account.gender?"checked":""}>Female
                    </td>
                </tr>
                <tr>
                    <td>DOB</td>
                    <td>
                        <input value="${account.DOB}" type="date" name="dob">
                    </td>
                </tr>
                <tr>
                    <td><button type="submit">Update</button></td>
                </tr>
            </table>
        </form>
    </body>
</html>
