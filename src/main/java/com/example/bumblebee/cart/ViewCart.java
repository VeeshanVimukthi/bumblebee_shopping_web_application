package com.example.bumblebee.cart;

import com.example.bumblebee.DBConnection;
import com.example.bumblebee.admin.Product;
import com.example.bumblebee.cart.ShoppingCart;
import com.example.bumblebee.cart.ShoppingCartitem;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.math.BigDecimal;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import static com.example.bumblebee.admin.Product.closeResources;



@WebServlet("/viewCart")
public class ViewCart extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession();
        String userEmail = (String) session.getAttribute("userEmail");
        if (userEmail == null) {
            response.sendRedirect("home.jsp");
            return;
        } else {


            List<ShoppingCartitem> items = new ArrayList<>();

            Connection conn = null;
            PreparedStatement stmt = null;
            ResultSet rs = null;

            try {
                conn = DBConnection.getConn();
                stmt = conn.prepareStatement("SELECT * FROM cart WHERE user_email = ?");
                stmt.setString(1, userEmail);
                rs = stmt.executeQuery();

                while (rs.next()) {
                    int productId = rs.getInt("product_id");
                    int quantity = rs.getInt("quantity");

                    Product product = Product.getProductById(productId);
                    ShoppingCartitem item = new ShoppingCartitem(product, quantity);
                    item.setPrice(product.getPrice()); // Set the price of the item
//                item.setSubtotal(item.getSubtotal()); // Calculate and set the subtotal of the item
                    items.add(item);
                }

            } catch (SQLException e) {
                e.printStackTrace();
            } finally {
                closeResources(conn, stmt, rs);
            }

            BigDecimal total = ShoppingCart.getTotal(items);
            request.setAttribute("items", items);
            request.setAttribute("total", total); // Add the total price to the request

            // retrieve cart items from database

            session.setAttribute("cartItems", items);

            request.getRequestDispatcher("Customers/viewCart.jsp").forward(request, response);
  }
}}