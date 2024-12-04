package com.example.demo.OOP;

public class Scholarship {
    String name;
    String criteria;
    String value;
    String date;

    public Scholarship(String name, String criteria, String value, String date) {
        this.name = name;
        this.criteria = criteria;
        this.value = value;
        this.date = date;
    }

    @Override
    public String toString() {
        return "Scholarship{" +
                "name='" + name + '\'' +
                ", criteria='" + criteria + '\'' +
                ", value='" + value + '\'' +
                ", date='" + date + '\'' +
                '}';
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCriteria() {
        return criteria;
    }

    public void setCriteria(String criteria) {
        this.criteria = criteria;
    }

    public String getValue() {
        return value;
    }

    public void setValue(String value) {
        this.value = value;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }
}
