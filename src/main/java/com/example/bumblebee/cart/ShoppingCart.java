package com.example.bumblebee.cart;





import com.example.bumblebee.admin.Product;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class ShoppingCart {
    private static List<ShoppingCartitem> items;

    public ShoppingCart() {
        this.items = new ArrayList<>();
    }

    public static List<ShoppingCartitem> getItems() {
        return items;
    }

    public static void addItem(Product product, int quantity) {
        BigDecimal price = product.getPrice().multiply(new BigDecimal(quantity));
        ShoppingCartitem item = new ShoppingCartitem(product, quantity);
        items.add(item);
    }

    public static BigDecimal getTotal(List<ShoppingCartitem> items) {
        BigDecimal total = BigDecimal.ZERO;
        for (ShoppingCartitem item : items) {
            total = total.add(item.getSubtotal());
        }
        return total;
    }

    public static void removeItem(Product product) {
        for (Iterator<ShoppingCartitem> iterator = items.iterator(); iterator.hasNext();) {
            ShoppingCartitem item = iterator.next();
            if (item.getProduct().equals(product)) {
                iterator.remove();
                break;
            }
        }
    }

    public static void clear() {
        items.clear();
        BigDecimal subtotal = BigDecimal.ZERO;
        BigDecimal total = BigDecimal.ZERO;
    }
}



