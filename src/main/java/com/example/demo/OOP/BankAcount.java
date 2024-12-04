package com.example.demo.OOP;

public class BankAcount {
    String accountNumber;
    String name;
    double balance;
    int status;

    public BankAcount(String accountNumber, String name, double balance, int status) {
        this.accountNumber = accountNumber;
        this.name = name;
        this.balance = balance;
        this.status = status;
    }

    @Override
    public String toString() {
        return "BankAcount{" +
                "accountNumber='" + accountNumber + '\'' +
                ", name='" + name + '\'' +
                ", balance=" + balance +
                ", status=" + status +
                '}';
    }

    public String getAccountNumber() {
        return accountNumber;
    }

    public void setAccountNumber(String accountNumber) {
        this.accountNumber = accountNumber;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public double getBalance() {
        return balance;
    }

    public void setBalance(double balance) {
        this.balance = balance;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }
}
