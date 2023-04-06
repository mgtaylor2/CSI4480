<%-- 
    Document   : Accounts
    Created on : Apr 5, 2023, 2:15:07 PM
    Author     : matthew
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>SQL Injection Proof Add User</title>
</head>
<body>
    <div style="text-align: center">
        <h1>Add Accounts</h1>
        <form action="AddUser" method="post">
            <label for="email">Email:</label>
            <input name="email" size="30" />
            <br><br>
            <label for="password">Password:</label>
            <input type="password" name="password" size="30" />
            <br>${message}
            <br><br>
            <button type="submit">Add Account</button>
        </form>
    </div>
</body>
</html>
