package com.example.demo.OOP;

public class Product {
    String name;
    double price;
    String discription;
    String urlImage;

    public Product(String name, double price, String discription, String urlImage) {
        this.name = name;
        this.price = price;
        this.discription = discription;
        this.urlImage = urlImage;
    }

    public Product() {
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getDiscription() {
        return discription;
    }

    public void setDiscription(String discription) {
        this.discription = discription;
    }

    public String getUrlImage() {
        return urlImage;
    }

    public void setUrlImage(String urlImage) {
        this.urlImage = urlImage;
    }

    @Override
    public String toString() {
        return "Product{" +
                "name='" + name + '\'' +
                ", price=" + price +
                ", discription='" + discription + '\'' +
                ", urlImage='" + urlImage + '\'' +
                '}';
    }
}
