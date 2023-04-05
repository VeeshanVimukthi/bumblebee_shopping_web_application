//package com.example.bumblebee.Sellers;
//
//import com.example.bumblebee.DBConnection;
//
//import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//import java.io.IOException;
//import java.io.PrintWriter;
//import java.sql.Connection;
//import java.sql.PreparedStatement;
//import java.sql.SQLException;
//
//@WebServlet("/register")
////@WebServlet(name = "sellerRegister", value = "/seller-register")
//public class Registration extends HttpServlet {
//    private static final long serialVersionUID = 1L;
//
//    protected void doPost(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        String username = request.getParameter("username");
//        String password = request.getParameter("password");
//        String email = request.getParameter("email");
//
//        try {
//            Connection conn = DBConnection.getConn();
//            PreparedStatement pstmt = conn.prepareStatement("INSERT INTO customers (username, email , password) VALUES (?, ?, ?)");
//            pstmt.setString(1, username);
//            pstmt.setString(2, email);
//            pstmt.setString(3, password);
//            pstmt.executeUpdate();
//            conn.close();
////            response.sendRedirect("Form/success.jsp");
//
////            PrintWriter out = response.getWriter();
////            out.println("<script>alert('Registration successful!')</script>");
////            response.sendRedirect("login.jsp");
//            response.setContentType("text/html");
//            PrintWriter out = response.getWriter();
//            out.println("<script type=\"text/javascript\">");
//            out.println("alert('Registration successful!');");
//            out.println("window.location.href='Form/Login.jsp';");
//            out.println("</script>");
//
//
//        } catch (SQLException e) {
//            e.printStackTrace();
//            response.sendRedirect("Form/error.jsp");
//        }
//    }
//
//}


package com.example.bumblebee.Sellers;

import com.example.bumblebee.DBConnection;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
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
        String email = request.getParameter("email");
        String password = request.getParameter("password");
//        String number = request.getParameter("numbers");
//        String address = request.getParameter("address");

        // Hash the password using SHA-256 algorithm
        String hashedPassword = hashPassword(password);

        try (Connection conn = DBConnection.getConn()) {
            PreparedStatement pstmt = conn.prepareStatement("INSERT INTO customers (username, email, password) VALUES (?, ?, ? )");
            pstmt.setString(1, username);
            pstmt.setString(2, email);
            pstmt.setString(3, hashedPassword);
//            pstmt.setString(4, address);
//            pstmt.setString(5, number);
            pstmt.executeUpdate();
            conn.close();

////            out.println("<script>alert('Registration successful!')</script>");
////            response.sendRedirect("login.jsp");
            response.setContentType("text/html");
            PrintWriter out = response.getWriter();
            out.println("<script type=\"text/javascript\">");
            out.println("alert('Registration successful!');");
            out.println("window.location.href='Form/Login.jsp';");
            out.println("</script>");


//            response.sendRedirect("success.jsp");
        } catch (SQLException e) {
            e.printStackTrace();
            response.sendRedirect("error.jsp");
        }
    }

    /**
     * Hash the password using SHA-256 algorithm
     */
    private String hashPassword(String password) {
        try {
            MessageDigest md = MessageDigest.getInstance("SHA-256");
            byte[] hashedPassword = md.digest(password.getBytes());
            return bytesToHex(hashedPassword);
        } catch (NoSuchAlgorithmException e) {
            throw new RuntimeException("Error hashing password", e);
        }
    }

    /**
     * Convert byte array to hexadecimal string
     */
    private String bytesToHex(byte[] bytes) {
        StringBuilder sb = new StringBuilder();
        for (byte b : bytes) {
            sb.append(String.format("%02x", b));
        }
        return sb.toString();
    }

}
