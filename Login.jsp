<%-- 
    Document   : Login
    Created on : Apr 3, 2023, 7:10:52 PM
    Author     : matthew
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>SQL Injection Login</title>
    <style>
  body {
    background-image: url('Images/sql-injection.jpg');
    background-repeat: no-repeat;
    background-attachment: fixed;
    background-size: 100% 100%;
  }
  </style>
</head>
<body>
    <div style="text-align: center">
        <h1>Login</h1>
        <form action="Login" method="post">
            <label for="email">Email:</label>
            <input name="email" size="30" />
            <br><br>
            <label for="password">Password:</label>
            <input type="password" name="password" size="30" />
            <br>${message}
            <br><br>
            <button type="submit">Login</button>
        </form>
    </div>
</body>
</html>
