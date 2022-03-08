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
public class Purchase {

    private int purchaseID;
    private int productID;

    public Purchase(int purchaseID, int productID) {
        this.purchaseID = purchaseID;
        this.productID = productID;
    }

    public Purchase(int productID) {
        this.productID = productID;
    }

    public Purchase() {
    }

    public int getPurchaseID() {
        return purchaseID;
    }

    public int getProductID() {
        return productID;
    }

    public void setPurchaseID(int purchaseID) {
        this.purchaseID = purchaseID;
    }

    public void setProductID(int productID) {
        this.productID = productID;
    }

}
