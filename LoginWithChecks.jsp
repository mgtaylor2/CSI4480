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
    background-image: url('lock.png');
    background-repeat: no-repeat;
    background-attachment: fixed;
    background-size: 100% 100%;
  }
  </style>
<title>SQL Injection Proof Login</title>


</head>
<body>
    <div class="Login2" style="text-align: center">
        <h1>Secure Login</h1>
        <form class="field1" action="Login" method="post">
            <label for="email">Email:</label>
            <input class="input" name="email" pattern="[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$" size="30" required />
            <br><br>
            <label for="password">Password:</label>
            <input class="input" type="password" name="password" pattern=".{8,}" size="30" required />
            <br>${message}
            <br><br>
            <button class="loginbutton2" type="submit">Login</button>
        </form>
    </div>
    <h1 class="groupname">The '; DROP Enthusiasts</h1>
    <h1 class="names1">Matthew Taylor
        <br><br>
        James Holloway
        <br><br>
        Stephen Placeway
    </h1>
</body>
</html>