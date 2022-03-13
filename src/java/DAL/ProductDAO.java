/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAL;

import Model.Product;
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
public class ProductDAO extends BaseDAO {

    @Override
    public ArrayList<Product> getAll() {
        ArrayList<Product> product = new ArrayList<>();
        try {
            String sql = "SELECT ProductID\n"
                    + "      ,[Product Name]\n"
                    + "  FROM Product";
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Product p = new Product();
                p.setProductID(rs.getInt("ProductID"));
                p.setProductName(rs.getString("Product Name"));
                product.add(p);
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return product;
    }

    public void insertProduct(Product c) {
        try {
            String sql = "INSERT INTO Product\n"
                    + "     VALUES\n"
                    + "     (?)";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, c.getProductName());
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void updateProduct(Product p) {
        try {
            String sql = "UPDATE Product SET "
                    + "[Product Name] = ?\n"
                    + "WHERE ProductID = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, p.getProductName());
            statement.setInt(2, p.getProductID());
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public Product getProduct(int id) {
        try {
            String sql = "SELECT *\n"
                    + "FROM Product\n"
                    + "WHERE ProductID = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, id);
            ResultSet rs = statement.executeQuery();
            if (rs.next()) {
                Product p = new Product(rs.getInt("ProductID"), rs.getString("Product Name"));
                return p;
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public void deleteProduct(int id) {
        try {
            String sql = "DELETE Product WHERE ProductID = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, id);
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public ArrayList<Product> getListByPage(ArrayList<Product> list, int start, int end) {
        ArrayList<Product> arrayList = new ArrayList<>();
        for (int i = start; i < end; i++) {
            arrayList.add(list.get(i));
        }
        return arrayList;
    }
}
