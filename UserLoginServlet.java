package com.mycompany.sql_testing;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
import java.io.IOException;
import java.io.PrintWriter;
// Update the following imports to use jakarta.servlet instead of javax.servlet
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.*;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

// Update the following imports to use jakarta.servlet instead of javax.servlet
import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;


@WebServlet(name = "UserLoginServlet", urlPatterns = {"/Login"})
public class UserLoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
 
    public UserLoginServlet() {
        super();
    }
 
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String Email = request.getParameter("email");
        String Password = request.getParameter("password");

        //good DAO
        UserDAO userDao = new UserDAO();
        
        //bad DAO
     //   BadDAO badDao = new BadDAO();
       
        try {
            
            User user = userDao.checkLogin(Email, Password);
            
       //     User user = badDao.checkLogin(Email, Password);
            
         //   System.out.println(user.getEmail());
            
            String destPage = "Login.jsp";
            
            System.out.println("\n\n----\n" + user);

        
        if (user != null) {
            HttpSession session = request.getSession();
            session.setAttribute("user", user);
        //    destPage = "home.jsp";
        //test send directly to ballot
            destPage = "Index.jsp";
        } else {
            String message = "Invalid email/password";
            request.setAttribute("message", message);
        }
        RequestDispatcher dispatcher = request.getRequestDispatcher(destPage);
        dispatcher.forward(request, response);
        
        }
        catch(Exception e)
                {
                System.out.println("error");
                e.printStackTrace();
                }

    }
}


