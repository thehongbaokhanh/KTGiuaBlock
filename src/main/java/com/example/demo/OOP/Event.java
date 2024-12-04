package com.example.demo.OOP;

public class Event {
    String name;
    String date;
    String location;
    int capacity;

    public Event(String name, String date, String location, int capacity) {
        this.name = name;
        this.date = date;
        this.location = location;
        this.capacity = capacity;
    }

    @Override
    public String toString() {
        return "EventManagement{" +
                "name='" + name + '\'' +
                ", date='" + date + '\'' +
                ", location='" + location + '\'' +
                ", capacity=" + capacity +
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

    public int getCapacity() {
        return capacity;
    }

    public void setCapacity(int capacity) {
        this.capacity = capacity;
    }
}
