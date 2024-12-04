package com.example.demo.OOP;

public class Patient {
    String name;
    int age;
    String medicalHistory;
    String date;
    String status;
    public Patient(String name, int age, String medicalHistory, String date, String status) {
        this.name = name;
        this.age = age;
        this.medicalHistory = medicalHistory;
        this.date = date;
        this.status = status;
    }

    @Override
    public String toString() {
        return "Patient{" +
                "name='" + name + '\'' +
                ", age=" + age +
                ", medicalHistory='" + medicalHistory + '\'' +
                ", date='" + date + '\'' +
                ", status='" + status + '\'' +
                '}';
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public String getMedicalHistory() {
        return medicalHistory;
    }

    public void setMedicalHistory(String medicalHistory) {
        this.medicalHistory = medicalHistory;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
}
