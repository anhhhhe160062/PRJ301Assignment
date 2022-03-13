/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

/**
 *
 * @author Hai Anh
 */
public class Customer {

    private int customerID;
    private String name;
    private int phoneNumber;
    private int purchaseID;
    private int shopID;

    public Customer(int customerID, String name, int phoneNumber, int purchaseID, int shopID) {
        this.customerID = customerID;
        this.name = name;
        this.phoneNumber = phoneNumber;
        this.purchaseID = purchaseID;
        this.shopID = shopID;
    }

    public Customer(String name, int phoneNumber, int purchaseID, int shopID) {
        this.name = name;
        this.phoneNumber = phoneNumber;
        this.purchaseID = purchaseID;
        this.shopID = shopID;
    }

    public Customer() {
    }

    public int getCustomerID() {
        return customerID;
    }

    public String getName() {
        return name;
    }

    public int getPhoneNumber() {
        return phoneNumber;
    }


    public int getPurchaseID() {
        return purchaseID;
    }

    public int getShopID() {
        return shopID;
    }

    public void setCustomerID(int customerID) {
        this.customerID = customerID;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setPhoneNumber(int phoneNumber) {
        this.phoneNumber = phoneNumber;
    }


    public void setPurchaseID(int purchaseID) {
        this.purchaseID = purchaseID;
    }


    public void setShopID(int shopID) {
        this.shopID = shopID;
    }
    @Override
    public String toString() {
        return "Customer{" + "customerID=" + customerID + ", name=" + name + ", phoneNumber=" + phoneNumber + ", purchaseID=" + purchaseID + ", shopID=" + shopID + '}';
    }
}
