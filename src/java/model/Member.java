/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Date;

/**
 *
 * @author PC
 */
public class Member {
    int idMember;
    String username;
    String password;
    String email;
    Date birthday;
    String phone;
    boolean role;

    public Member(int idMember, String username, String password, String email, boolean role) {
        this.idMember = idMember;
        this.username = username;
        this.password = password;
        this.email = email;
        this.role = role;
    }

    public Member(String username, String password, String email, Date birthday, String phone, boolean role) {
        this.username = username;
        this.password = password;
        this.email = email;
        this.birthday = birthday;
        this.phone = phone;
        this.role = role;
    }

    public Member(int idMember, String username, String password, String email, Date birthday, String phone, boolean role) {
        this.idMember = idMember;
        this.username = username;
        this.password = password;
        this.email = email;
        this.birthday = birthday;
        this.phone = phone;
        this.role = role;
    }

    public Member() {
    }

    public int getIdMember() {
        return idMember;
    }

    public void setIdMember(int idMember) {
        this.idMember = idMember;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public boolean isRole() {
        return role;
    }

    public void setRole(boolean role) {
        this.role = role;
    }
    
}
