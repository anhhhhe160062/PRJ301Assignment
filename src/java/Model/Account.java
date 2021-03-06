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
    private Date CreatedDate;

    public Account(int id, String UserName, String Password, String Role, String Name, Date CreatedDate) {
        this.id = id;
        this.UserName = UserName;
        this.Password = Password;
        this.Role = Role;
        this.Name = Name;
        this.CreatedDate = CreatedDate;
    }

    public Account() {
    }

    public Account(String UserName, String Password, String Role, String Name, Date CreatedDate) {
        this.UserName = UserName;
        this.Password = Password;
        this.Role = Role;
        this.Name = Name;
        this.CreatedDate = CreatedDate;
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


    public Date getCreatedDate() {
        return CreatedDate;
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


    public void setCreatedDate(Date CreatedDate) {
        this.CreatedDate = CreatedDate;
    }

    @Override
    public String toString() {
        return "Account{" + "id=" + id + ", UserName=" + UserName + ", Password=" + Password + ", Role=" + Role + ", Name=" + Name + ", CreatedDate=" + CreatedDate + '}';
    }

}
