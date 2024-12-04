package com.example.demo.OOP;

public class Employee {
    String name;
    String department;
    String position;
    double salary;
    int status;
    public Employee(String name, String department, String position, double salary, int status) {
        this.name = name;
        this.department = department;
        this.position = position;
        this.salary = salary;
        this.status = status;
    }
    public Employee() {
    }

    @Override
    public String toString() {
        return "employee{" +
                "name='" + name + '\'' +
                ", department='" + department + '\'' +
                ", position='" + position + '\'' +
                ", salary=" + salary +
                ", status=" + status +
                '}';
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDepartment() {
        return department;
    }

    public void setDepartment(String department) {
        this.department = department;
    }

    public String getPosition() {
        return position;
    }

    public void setPosition(String position) {
        this.position = position;
    }

    public double getSalary() {
        return salary;
    }

    public void setSalary(double salary) {
        this.salary = salary;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }
}
