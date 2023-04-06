package com.mycompany.sql_testing;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
/**
 *
 * @author matthew
 */
import java.sql.*;
import com.mycompany.sql_testing.DatabaseConnection;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashSet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



public class BadDAO {
    public User checkLogin(String email, String password) throws SQLException {
        try {
            // Initialize the database
            Connection con = DatabaseConnection.initializeDatabase();
            
            // Vulnerable implementation using string concatenation
            String sql = "SELECT * FROM USER WHERE userEmail = '" + email + "' AND userPassword = '" + password + "'";
            Statement stmt = con.createStatement();
            
            //and dont use executeQuery, just execute so multiple payloads can be injected
            boolean result = stmt.execute(sql);
            
            System.out.println("\nSTATEMENT PASSED TO DB: " + sql);
            
            User user = new User();
            
            do{
            if(result)
            {
                ResultSet result1 = stmt.getResultSet();
            
            
            // Process result
            if (result1.next()) {
                System.out.println("TRUE MATCH");
                
                user.setEmail(result1.getString("userEmail"));
                user.setPassword(result1.getString("userPassword"));
                
                System.out.println(user.getEmail() + user.getPassword());
                return user;
            } else {
                System.out.println("User not in database, return null");
                user = null;
            }
            
            }
            
            System.out.print("\n---------------------------\nConnection estd\n---------------------------\n");
            System.out.println("USER EQUALS: " + user);
            
             //Read multiple queries (allow multiple payloads)
                result = stmt.getMoreResults();
            
            }
            while(result);
            
            con.close();
            return user;
        } catch(Exception e) {
            System.out.println("\n--------------------------\nCRITICAL ERROR \n--------------------------\n");
            System.out.println(e);
            System.out.println("Email entered: " + email);
            System.out.println("Password entered: " + password);
            return null;
        }
    }
}
