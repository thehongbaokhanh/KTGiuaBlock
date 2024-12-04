package com.example.demo.OOP;

public class Pet {
    String name;
    String type;
    int age;
    String petOwner;

    public Pet(String name, String type, int age, String petOwner) {
        this.name = name;
        this.type = type;
        this.age = age;
        this.petOwner = petOwner;
    }

    @Override
    public String toString() {
        return "pet{" +
                "name='" + name + '\'' +
                ", type='" + type + '\'' +
                ", age=" + age +
                ", petOwner='" + petOwner + '\'' +
                '}';
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public String getPetOwner() {
        return petOwner;
    }

    public void setPetOwner(String petOwner) {
        this.petOwner = petOwner;
    }
}
