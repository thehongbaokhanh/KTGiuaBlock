package com.example.demo.OOP;

public class OnlineShop {
    String productName;
    int quantity;
    double productPrice;
    double total;
    public OnlineShop(String productName, int quantity, double productPrice, double total) {
        this.productName = productName;
        this.quantity = quantity;
        this.productPrice = productPrice;
        this.total = total;
    }

    @Override
    public String toString() {
        return "OnlineShop{" +
                "productName='" + productName + '\'' +
                ", quantity=" + quantity +
                ", productPrice=" + productPrice +
                ", total=" + total +
                '}';
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public double getProductPrice() {
        return productPrice;
    }

    public void setProductPrice(double productPrice) {
        this.productPrice = productPrice;
    }

    public double getTotal() {
        return total;
    }

    public void setTotal(double total) {
        this.total = total;
    }
}
