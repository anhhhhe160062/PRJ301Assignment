/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAL;

import Model.Purchase;
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
public class PurchaseDAO extends BaseDAO {

    @Override
    public ArrayList<Purchase> getAll() {
        ArrayList<Purchase> purchase = new ArrayList<>();
        try {
            String sql = "SELECT PurchaseID\n"
                    + "      ,ProductID\n"
                    + "  FROM Purchase";
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Purchase p = new Purchase();
                p.setPurchaseID(rs.getInt("PurchaseID"));
                p.setProductID(rs.getInt("ProductID"));
                purchase.add(p);
            }
        } catch (SQLException ex) {
            Logger.getLogger(PurchaseDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return purchase;
    }

    public void insertPurchase(Purchase p) {
        try {
            String sql = "INSERT INTO Purchase\n"
                    + "     VALUES\n"
                    + "     (?)";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, p.getProductID());
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(PurchaseDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void updatePurchase(Purchase p) {
        try {
            String sql = "UPDATE Purchase SET "
                    + "ProductID = ?\n"
                    + "WHERE PurchaseID = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, p.getProductID());
            statement.setInt(2, p.getPurchaseID());
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(PurchaseDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public Purchase getPurchase(int id) {
        try {
            String sql = "SELECT *\n"
                    + "FROM Purchase\n"
                    + "WHERE PurchaseID = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, id);
            ResultSet rs = statement.executeQuery();
            if (rs.next()) {
                Purchase p = new Purchase(rs.getInt("PurchaseID"), rs.getInt("ProductID"));
                return p;
            }
        } catch (SQLException ex) {
            Logger.getLogger(PurchaseDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public void deletePurchase(int id) {
        try {
            String sql = "DELETE Purchase WHERE PurchaseID = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, id);
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(PurchaseDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
