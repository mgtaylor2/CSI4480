package com.mycompany.sql_testing;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import java.sql.*;

/**
 *
 * @author matthew
 */
public class DatabaseConnection {
    public static Connection initializeDatabase()
        throws SQLException, ClassNotFoundException
    {
        // Initialize all the information regarding
        // Database Connection
      //  String dbDriver = "com.mysql.jdbc.Driver";
        String dbDriver = "com.mysql.cj.jdbc.Driver";
        
        //exploit version:
        String dbURL = "jdbc:mysql://localhost:3306/mydb?allowMultiQueries=TRUE";
        
        //normal version
     //   String dbURL = "jdbc:mysql://localhost:3306/";
        
        
        // Database name to access
        String dbName = "mydb";
        String dbUsername = "root";
        String dbPassword = "MySQL2022!";
  
        Class.forName(dbDriver);
        
        
        //multiple payload injection connection
        Connection con = DriverManager.getConnection(dbURL, dbUsername, dbPassword);
        
        //good connection
     //   Connection con = DriverManager.getConnection(dbURL + dbName, dbUsername, dbPassword);


        
        return con;
    }
}
