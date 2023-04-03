package com.example.bumblebee.cart;

import com.example.bumblebee.DBConnection;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import static com.example.bumblebee.admin.Product.closeResources;

public class ReduceQuantity {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession();
        String userEmail = (String) session.getAttribute("userEmail");
        int productId = Integer.parseInt(request.getParameter("productId"));
        int Nquantity = Integer.parseInt(request.getParameter("quantity"));

        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;

        try {
            conn = DBConnection.getConn();
            stmt = conn.prepareStatement("SELECT * FROM cart WHERE user_email = ? AND product_id = ?");
            stmt.setString(1, userEmail);
            stmt.setInt(2, productId);
            rs = stmt.executeQuery();

            if (rs.next()) {
//                int quantity = rs.getInt("quantity");

                if (Nquantity > 1) {
                    stmt = conn.prepareStatement("UPDATE cart SET quantity = ? WHERE user_email = ? AND product_id = ?");
                    stmt.setInt(1, Nquantity);
                    stmt.setString(2, userEmail);
                    stmt.setInt(3, productId);
                    stmt.executeUpdate();
                } else {
                    stmt = conn.prepareStatement("DELETE FROM cart WHERE user_email = ? AND product_id = ?");
                    stmt.setString(1, userEmail);
                    stmt.setInt(2, productId);
                    stmt.executeUpdate();
                }
            }

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            closeResources(conn, stmt, rs);
        }

        response.sendRedirect("viewCart");
    }
}
