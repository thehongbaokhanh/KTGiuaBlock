package com.example.demo.OOP;

public class StudyMaterials {
    String name;
    String subject;
    String teacher;
    String formatting;

    public StudyMaterials(String name, String subject, String teacher, String formatting) {
        this.name = name;
        this.subject = subject;
        this.teacher = teacher;
        this.formatting = formatting;
    }

    @Override
    public String toString() {
        return "StudyMaterials{" +
                "name='" + name + '\'' +
                ", subject='" + subject + '\'' +
                ", teacher='" + teacher + '\'' +
                ", formatting=" + formatting +
                '}';
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    public String getTeacher() {
        return teacher;
    }

    public void setTeacher(String teacher) {
        this.teacher = teacher;
    }

    public String getFormatting() {
        return formatting;
    }

    public void setFormatting(String formatting) {
        this.formatting = formatting;
    }
}
