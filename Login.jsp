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
<link rel="stylesheet" href="./style.css">
    <style>
  body {
    background-image: url('sql-injection.jpg');
    background-repeat: no-repeat;
    background-attachment: fixed;
    background-size: 100% 100%;
  }
  </style>
<title>SQL Injection Login</title>

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
    <h1 class="groupname2">The '; DROP Enthusiasts</h1>
    <h1 class="names2">Matthew Taylor
        <br><br>
        James Holloway
        <br><br>
        Stephen Placeway
    </h1>
</body>
</html>