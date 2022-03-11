/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.sql.Date;

/**
 *
 * @author Hai Anh
 */
public class Account {

    private int id;
    private String UserName;
    private String Password;
    private String Role;
    private String Name;
    private Date DOB;

    public Account(int id, String UserName, String Password, String Role, String Name, Date DOB) {
        this.id = id;
        this.UserName = UserName;
        this.Password = Password;
        this.Role = Role;
        this.Name = Name;
        this.DOB = DOB;
    }

    public Account() {
    }

    public Account(String UserName, String Password, String Role, String Name, Date DOB) {
        this.UserName = UserName;
        this.Password = Password;
        this.Role = Role;
        this.Name = Name;
        this.DOB = DOB;
    }

    public int getId() {
        return id;
    }

    public String getUserName() {
        return UserName;
    }

    public String getPassword() {
        return Password;
    }

    public String getRole() {
        return Role;
    }

    public String getName() {
        return Name;
    }


    public Date getDOB() {
        return DOB;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setUserName(String UserName) {
        this.UserName = UserName;
    }

    public void setPassword(String Password) {
        this.Password = Password;
    }

    public void setRole(String Role) {
        this.Role = Role;
    }

    public void setName(String Name) {
        this.Name = Name;
    }


    public void setDOB(Date DOB) {
        this.DOB = DOB;
    }

    @Override
    public String toString() {
        return "Account{" + "id=" + id + ", UserName=" + UserName + ", Password=" + Password + ", Role=" + Role + ", Name=" + Name + ", DOB=" + DOB + '}';
    }

}
