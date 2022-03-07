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
public class DiscountCode {
    private int id;
    private String discountContent;
    private Date startDate;
    private Date endDate;
    private boolean status;

    public DiscountCode(int id, String discountContent, Date startDate, Date endDate, boolean status) {
        this.id = id;
        this.discountContent = discountContent;
        this.startDate = startDate;
        this.endDate = endDate;
        this.status = status;
    }

    public DiscountCode() {
    }

    public int getId() {
        return id;
    }

    public String getDiscountContent() {
        return discountContent;
    }

    public Date getStartDate() {
        return startDate;
    }

    public Date getEndDate() {
        return endDate;
    }

    public boolean isStatus() {
        return status;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setDiscountContent(String discountContent) {
        this.discountContent = discountContent;
    }

    public void setStartDate(Date startDate) {
        this.startDate = startDate;
    }

    public void setEndDate(Date endDate) {
        this.endDate = endDate;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }
    
}
