package com.example.demo.OOP;

public class OnlineClass {
    String name;
    String teacher;
    int lesson;
    double price;
    public OnlineClass(String name, String teacher, int lesson, double price) {
        this.name = name;
        this.teacher = teacher;
        this.lesson = lesson;
        this.price = price;
    }

    @Override
    public String toString() {
        return "OnlineClass{" +
                "name='" + name + '\'' +
                ", teacher='" + teacher + '\'' +
                ", lesson=" + lesson +
                ", price=" + price +
                '}';
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getTeacher() {
        return teacher;
    }

    public void setTeacher(String teacher) {
        this.teacher = teacher;
    }

    public int getLesson() {
        return lesson;
    }

    public void setLesson(int lesson) {
        this.lesson = lesson;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }
}
