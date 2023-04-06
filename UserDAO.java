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




public class UserDAO {
        
public User checkLogin(String email, String password) throws SQLException {


     try {
         // Initialize the database
      Connection con = DatabaseConnection.initializeDatabase();
            
      //CORRECT AND GOOD IMPLEMNTATION, PreparedStatements reduce vulernability!
      
      String sql = "SELECT * FROM USER WHERE userEmail = ? and userPassword = ?";
      PreparedStatement st = con.prepareStatement(sql);
      
      Statement myStmt = null;
      ResultSet myRs = null;
      
        st.setString(1, email);
        st.setString(2, password);
 
        ResultSet result = st.executeQuery();
        
         System.out.println("\nSTATEMENT PASSED TO DB: " + st);
        
            myStmt = con.createStatement();
            
            myRs = myStmt.executeQuery("SELECT userEmail, userPassword FROM USER");
      
      
      
     

        
        //process result
            while (myRs.next())
            {
                System.out.println("");
                System.out.println(myRs.getString("userEmail"));
                System.out.println(myRs.getString("userPassword"));
                
            }
        
        User user = new User();
       // User user = null;
        
            
        //    System.out.println(result.next());
 
        if (result.next() == true) {
            
            System.out.println("TRUE MATCH");
            
      /*      User user2 = new User();
            user2.setEmail(result.getString(email));
            user2.setPassword(password);
            */
      
            user.setEmail(email);
            user.setPassword(password);
            
            System.out.println(user.getEmail() + user.getPassword());
            
            
            return user;
          
        }
        else
        {
            System.out.println("User not in database, return null");
            user = null;
        }
      
        
      
 
         System.out.print("\n---------------------------\nConnection estd\n---------------------------\n");
         
            System.out.println("USER EQUALS: " + user);
         
         con.close();
         
        return user;

     }
        
     
     catch(Exception e)
             {
                 System.out.println("\n--------------------------\nCRITICAL ERROR \n--------------------------\n");
 //                System.out.println("User = " + user.getEmail() + " " + user.getPassword());
 
                 System.out.println(e);
                 
                 System.out.println("Email entered: " + email);
                 System.out.println("Password entered: " + password);
                 return null;
             }
     
}


}
     
    
     
 
       
 

 
        
/*
public static void main(String[] arg) throws SQLException{
User User = new User();
    UserDAO con = new UserDAO();
    con.checkLogin(User);
  }
}
*/