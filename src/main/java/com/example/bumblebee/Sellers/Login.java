package com.example.bumblebee.Sellers;


import com.example.bumblebee.DBConnection;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


@WebServlet("/login")
public class Login extends HttpServlet {
    private static final long serialVersionUID = 1L;

//    protected void doPost(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        String username = request.getParameter("username");
//        String password = request.getParameter("password");
//
//        try {
//            Connection conn = DBConnection.getConn();
//            PreparedStatement pstmt = conn.prepareStatement("SELECT * FROM customers WHERE username = ? AND password = ?");
//            pstmt.setString(1, username);
//            pstmt.setString(2, password);
//            ResultSet rs = pstmt.executeQuery();
//
//            if (rs.next()) {
//                HttpSession session = request.getSession();
//                session.setAttribute("username", username);
//                response.sendRedirect("./index.jsp");
//
//            } else {
//                response.setContentType("text/html");
//                PrintWriter out = response.getWriter();
//                out.println("<script type=\"text/javascript\">");
//                out.println("alert('Invalid username or password');");
//                out.println("window.location.href='Form/Login.jsp';");
//                out.println("</script>");
//            }
//
//            conn.close();
//
//        } catch (SQLException e) {
//            e.printStackTrace();
//            response.sendRedirect("error.jsp");
//        }
//    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        try (Connection conn = DBConnection.getConn()) {
            PreparedStatement pstmt = conn.prepareStatement("SELECT * FROM customers WHERE username = ?");
            pstmt.setString(1, username);
            ResultSet rs = pstmt.executeQuery();

            if (rs.next()) {
                String hashedPassword = rs.getString("password");
                if (hashedPassword.equals(hashPassword(password))) {
                    HttpSession session = request.getSession();
                    session.setAttribute("username", username);
                    response.sendRedirect("./index.jsp");
                } else {
                    response.sendRedirect("login.jsp?error=invalid_password");
                }
            } else {
                response.sendRedirect("login.jsp?error=invalid_username");
            }
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
