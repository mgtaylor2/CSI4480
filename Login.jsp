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
<title>SQL Injection Proof Login</title>


</head>
<body>
    <div class="Login1" style="text-align: center">
        <h1 class="title">Secure Login</h1>
        <form class="field2" action="Login" method="post">
            <label for="email">Email:</label>
            <input class="input"name="email" pattern="[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$" size="30" required />
            <br><br>
            <label for="password">Password:</label>
            <input class="input" type="password" name="password" pattern=".{8,}" size="30" required />
            <br>${message}
            <br><br>
            <button class="loginbutton" type="submit">Login</button>
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
