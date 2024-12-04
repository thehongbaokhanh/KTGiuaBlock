package com.example.demo.OOP;

public class AppointmentList {
    String name;
    String date;
    String location;
    String discription;

    public AppointmentList(String name, String date, String location, String discription) {
        this.name = name;
        this.date = date;
        this.location = location;
        this.discription = discription;
    }

    @Override
    public String toString() {
        return "AppointmentList{" +
                "name='" + name + '\'' +
                ", date='" + date + '\'' +
                ", location='" + location + '\'' +
                ", discription='" + discription + '\'' +
                '}';
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public String getDiscription() {
        return discription;
    }

    public void setDiscription(String discription) {
        this.discription = discription;
    }
}
