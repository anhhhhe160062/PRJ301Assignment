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
public class Product {

    private int productID;
    private String productName;
    private int price;
    private String category;
    private String description;

    public Product() {
    }

    public Product(int productID, String productName) {
        this.productID = productID;
        this.productName = productName;
    }

    public int getPrice() {
        return price;
    }

    public String getCategory() {
        return category;
    }


    public String getDescription() {
        return description;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public void setCategory(String category) {
        this.category = category;
    }


    public void setDescription(String description) {
        this.description = description;
    }

    public Product(int productID, String productName, int price, String category, String description) {
        this.productID = productID;
        this.productName = productName;
        this.price = price;
        this.category = category;
        this.description = description;
    }

    public Product(String productName, int price, String category, String description) {
        this.productName = productName;
        this.price = price;
        this.category = category;
        this.description = description;
    }

    public Product(String productName) {
        this.productName = productName;
    }

    public int getProductID() {
        return productID;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductID(int productID) {
        this.productID = productID;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    @Override
    public String toString() {
        return "Product{" + "productID=" + productID + ", productName=" + productName + ", price=" + price + ", category=" + category + ", description=" + description + '}';
    }

}
