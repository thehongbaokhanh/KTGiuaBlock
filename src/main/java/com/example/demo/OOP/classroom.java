package com.example.demo.OOP;

public class classroom {
    String name;
    int idStudent;
    double averageScore;
    int status;

    public classroom(String name, int idStudent, double averageScore, int status) {
        this.name = name;
        this.idStudent = idStudent;
        this.averageScore = averageScore;
        this.status = status;
    }

    public classroom() {
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getIdStudent() {
        return idStudent;
    }

    public void setIdStudent(int idStudent) {
        this.idStudent = idStudent;
    }

    public double getAverageScore() {
        return averageScore;
    }

    public void setAverageScore(double averageScore) {
        this.averageScore = averageScore;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "classroom{" +
                "name='" + name + '\'' +
                ", idStudent=" + idStudent +
                ", averageScore=" + averageScore +
                ", status=" + status +
                '}';
    }
}
