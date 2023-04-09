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
    <div style="text-align: center">
        <h1>Secure Login</h1>
        <form action="Login" method="post">
            <label for="email">Email:</label>
            <input name="email" pattern="[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$" size="30" required />
            <br><br>
            <label for="password">Password:</label>
            
            <%--
            Notes from https://developer.mozilla.org/en-US/docs/Web/HTML/Attributes/pattern
            
            ^ = Start of the string requirement
            (?!.*( insert restrictions ) = ?! meaning must NOT be in string
            (?=.*( insert restrictions ) = ?= meaning MUST BE in string
            .{#,} = # of characters required
            $ = end of string requirements
            
            thus, (?!.*(--|;))... => ?!.* negative look ahead that checks if the string contains either "--" or (|) ";".
            
            We restrict -- and ; to prevent commenting out code, etc, even though already protected by Prepared Statements.
            --%>
            
            <input type="password" name="password" pattern="^(?!.*(--|;)).{8,}$" size="30" required />
            <br>${message}
            <br><br>
            <button type="submit">Login</button>
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