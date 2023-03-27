package com.example.bumblebee.Sellers;

import com.example.bumblebee.DBConnection;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

@WebServlet("/register")
//@WebServlet(name = "sellerRegister", value = "/seller-register")
public class Registration extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String email = request.getParameter("email");

        try {
            Connection conn = DBConnection.getConn();
            PreparedStatement pstmt = conn.prepareStatement("INSERT INTO customers (username, email , password) VALUES (?, ?, ?)");
            pstmt.setString(1, username);
            pstmt.setString(2, email);
            pstmt.setString(3, password);
            pstmt.executeUpdate();
            conn.close();
//            response.sendRedirect("Form/success.jsp");

//            PrintWriter out = response.getWriter();
//            out.println("<script>alert('Registration successful!')</script>");
//            response.sendRedirect("login.jsp");
            response.setContentType("text/html");
            PrintWriter out = response.getWriter();
            out.println("<script type=\"text/javascript\">");
            out.println("alert('Registration successful!');");
            out.println("window.location.href='Form/Login.jsp';");
            out.println("</script>");


        } catch (SQLException e) {
            e.printStackTrace();
            response.sendRedirect("Form/error.jsp");
        }
    }

}