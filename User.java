/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.sql_testing;


public class User {
    
    private int id;
    private String Fname;
    private String Lname;
    private String DOB;
    private String Address;
    private int Zip;
    private String Gender;
    private String password;
    private String Email;
    private int Phone;

    public String getEmail() {
        return this.Email;
    }

    public void setEmail(String Email) {
        this.Email = Email;
    }

    public String getFname() {
        return this.Fname;
    }

    public void setFname(String Fname) {
        this.Fname = Fname;
    }

    public String getLname() {
        return this.Lname;
    }

    public String getDOB() {
        return this.DOB;
    }

    public String getGender() {
        return this.Gender;
    }

    public void setGender(String Gender) {
        this.Gender = Gender;
    }

    public String getAddress() {
        return this.Address;
    }

    public void setAddress(String Address) {
        this.Address = Address;
    }

    public int getZip() {
        return this.Zip;
    }

    public void setZip(int Zip) {
        this.Zip = Zip;
    }

    public int getPhone() {
        return this.Phone;
    }

    public void setPhone(int Phone) {
        this.Phone = Phone;
    }

    public void setDOB(String DOB) {
        this.DOB = DOB;
    }

    public void setLname(String Lname) {
        this.Lname = Lname;
    }

    public int getId() {
        return this.id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getPassword() {
        return this.password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

}

