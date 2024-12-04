package com.example.demo.OOP;

public class Order {
    String id;
    String orderDate;
    String customer;
    int status;

    public Order(String id, String orderDate, String customer, int status) {
        this.id = id;
        this.orderDate = orderDate;
        this.customer = customer;
        this.status = status;
    }

    public Order() {
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getOrderDate() {
        return orderDate;
    }

    public void setOrderDate(String orderDate) {
        this.orderDate = orderDate;
    }

    public String getCustomer() {
        return customer;
    }

    public void setCustomer(String customer) {
        this.customer = customer;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "Order{" +
                "id='" + id + '\'' +
                ", orderDate='" + orderDate + '\'' +
                ", customer='" + customer + '\'' +
                ", status=" + status +
                '}';
    }
}
