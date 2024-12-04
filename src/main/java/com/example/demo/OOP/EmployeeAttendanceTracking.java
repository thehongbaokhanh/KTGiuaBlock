package com.example.demo.OOP;

public class EmployeeAttendanceTracking {
    String name;
    String date;
    int time;
    int status;

    public EmployeeAttendanceTracking(String name, String date, int time, int status) {
        this.name = name;
        this.date = date;
        this.time = time;
        this.status = status;
    }

    @Override
    public String toString() {
        return "EmployeeAttendanceTracking{" +
                "name='" + name + '\'' +
                ", date='" + date + '\'' +
                ", time='" + time + '\'' +
                ", status=" + status +
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

    public int getTime() {
        return time;
    }

    public void setTime(int time) {
        this.time = time;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }
}
