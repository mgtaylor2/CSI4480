<%-- 
    Document   : Index
    Created on : Apr 3, 2023, 7:11:48 PM
    Author     : matthew
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="com.mycompany.sql_testing.DatabaseConnection"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Emails and Passwords</h1>
        <table border="1">
            <thead>
                <tr>
                    <th>Email</th>
                    <th>Password</th>
                </tr>
            </thead>
            <tbody>
                <% 
                    try {
                        // Get a database connection using the DatabaseConnection class
                        Connection conn = DatabaseConnection.initializeDatabase();
                        
                        // Use the correct column names from the "USER" table
                        // Execute the query to fetch encrypted emails and passwords from the database
                        String sql = "SELECT userEmail, userPassword FROM USER;";
                        PreparedStatement pstmt = conn.prepareStatement(sql);
                        ResultSet rs = pstmt.executeQuery();
                        
                        // Display the result in a table
                        while (rs.next()) {
                            String email = rs.getString("userEmail");
                            String password = rs.getString("userPassword");
                %>
                <tr>
                    <td><%= email %></td>
                    <td><%= password %></td>
                </tr>
                <% 
                        }
                        
                        // Close the result set, statement, and connection
                        rs.close();
                        pstmt.close();
                        conn.close();
                        
                    } catch (Exception e) {
                        out.println("Error: " + e.getMessage());
                    }
                %>
            </tbody>
        </table>
    </body>
</html>
