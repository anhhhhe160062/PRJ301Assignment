/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAL;

import Model.Customer;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Hai Anh
 */
public class CustomerDAO extends BaseDAO {

    @Override
    public ArrayList<Customer> getAll() {
        ArrayList<Customer> customer = new ArrayList<>();
        try {
            String sql = "SELECT CustomerID\n"
                    + "      ,[Full Name]\n"
                    + "      ,[Phone Number]\n"
                    + "      ,PurchaseID\n"
                    + "      ,ShopID\n"
                    + "  FROM Customer";
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Customer c = new Customer();
                c.setCustomerID(rs.getInt("CustomerID"));
                c.setName(rs.getString("Full Name"));
                c.setPhoneNumber(rs.getInt("Phone Number"));
                c.setPurchaseID(rs.getInt("PurchaseID"));
                c.setShopID(rs.getInt("ShopID"));
                customer.add(c);
            }
        } catch (SQLException ex) {
            Logger.getLogger(CustomerDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return customer;
    }

    public void insertCustomer(Customer c) {
        try {
            String sql = "INSERT INTO Customer\n"
                    + "     VALUES\n"
                    + "     (?\n"
                    + "     ,?\n"
                    + "     ,?\n"
                    + "     ,?)";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, c.getName());
            statement.setInt(2, c.getPhoneNumber());
            statement.setInt(3, c.getPurchaseID());
            statement.setInt(4, c.getShopID());
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(CustomerDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void updateCustomer(Customer c) {
        try {
            String sql = "UPDATE Customer SET "
                    + "[Full Name] = ?,\n"
                    + "[Phone Number] = ?,\n"
                    + "PurchaseID = ?,\n"
                    + "ShopID = ?\n"
                    + "WHERE CustomerID = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, c.getName());
            statement.setInt(2, c.getPhoneNumber());
            statement.setInt(3, c.getPurchaseID());
            statement.setInt(4, c.getShopID());
            statement.setInt(5, c.getCustomerID());
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(CustomerDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public Customer getCustomer(int id) {
        try {
            String sql = "SELECT *\n"
                    + "FROM Customer\n"
                    + "WHERE CustomerId = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, id);
            ResultSet rs = statement.executeQuery();
            if (rs.next()) {
                Customer c = new Customer(rs.getInt("CustomerID"), rs.getString("Full Name"), rs.getInt("Phone Number"), rs.getInt("PurchaseID"), rs.getInt("ShopID"));
                return c;
            }
        } catch (SQLException ex) {
            Logger.getLogger(CustomerDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public void deleteCustomer(int id) {
        try {
            String sql = "DELETE Customer WHERE CustomerId = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, id);
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(CustomerDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public ArrayList<Customer> getShopReport(int shopID) {
        ArrayList<Customer> customers = new ArrayList<>();
        try {
            String sql = "SELECT * FROM Customer WHERE ShopID = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, shopID);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Customer c = new Customer();
                c.setCustomerID(rs.getInt("CustomerID"));
                c.setName(rs.getString("Full Name"));
                c.setPhoneNumber(rs.getInt("Phone Number"));
                c.setPurchaseID(rs.getInt("PurchaseID"));
                c.setShopID(rs.getInt("ShopID"));
                customers.add(c);
            }
        } catch (SQLException ex) {
            Logger.getLogger(CustomerDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return customers;
    }

    public ArrayList<Customer> getListByPage(ArrayList<Customer> list, int start, int end) {
        ArrayList<Customer> arrayList = new ArrayList<>();
        for (int i = start; i < end; i++) {
            arrayList.add(list.get(i));
        }
        return arrayList;
    }

}
