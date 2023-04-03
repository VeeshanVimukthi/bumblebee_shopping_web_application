package com.example.bumblebee.cart;





import com.example.bumblebee.admin.Product;

import java.math.BigDecimal;

public class ShoppingCartitem {
    private Product product;
    private int quantity;
    private BigDecimal price;

    public ShoppingCartitem(Product product, int quantity) {
        this.product = product;
        this.quantity = quantity;
        this.price = price;
    }

    public BigDecimal getSubtotal() {
        return price.multiply(BigDecimal.valueOf(quantity));
    }





    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public BigDecimal getPrice() {
        return price;
    }

    public void setPrice(BigDecimal price) {
        this.price = price;
    }
}


