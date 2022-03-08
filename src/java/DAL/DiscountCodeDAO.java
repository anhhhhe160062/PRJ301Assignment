/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAL;

import Model.DiscountCode;
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
public class DiscountCodeDAO extends BaseDAO{

    @Override
    public ArrayList<DiscountCode> getAll() {
        ArrayList<DiscountCode> discountCode = new ArrayList<>();
        try {
            String sql = "SELECT ID\n"
                    + "      ,DiscountContent\n"
                    + "      ,StartDate\n"
                    + "      ,EndDate\n"
                    + "      ,Status\n"
                    + "  FROM DiscountCode";
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                DiscountCode dc = new DiscountCode();
                dc.setId(rs.getInt("ID"));
                dc.setDiscountContent(rs.getString("DiscountContent"));
                dc.setStartDate(rs.getDate("StartDate"));
                dc.setEndDate(rs.getDate("EndDate"));
                dc.setStatus(rs.getBoolean("Status"));
                discountCode.add(dc);
            }
        } catch (SQLException ex) {
            Logger.getLogger(DiscountCodeDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return discountCode;
    }

    public void insertDiscountCode(DiscountCode dc) {
        try {
            String sql = "INSERT INTO DiscountCode\n"
                    + "     VALUES\n"
                    + "     (?\n"
                    + "     ,?\n"
                    + "     ,?\n"
                    + "     ,?)";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, dc.getDiscountContent());
            statement.setDate(2, dc.getStartDate());
            statement.setDate(3, dc.getEndDate());
            statement.setBoolean(4, dc.isStatus());
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(DiscountCodeDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void updateDiscountCode(DiscountCode dc) {
        try {
            String sql = "UPDATE DiscountCode SET "
                    + "DiscountContent = ?,\n"
                    + "StartDate = ?,\n"
                    + "EndDate = ?,\n"
                    + "Status = ?\n"
                    + "WHERE ID = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, dc.getDiscountContent());
            statement.setDate(2, dc.getStartDate());
            statement.setDate(3, dc.getEndDate());
            statement.setBoolean(4, dc.isStatus());
            statement.setInt(5, dc.getId());
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(DiscountCodeDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public DiscountCode getDiscountCode(int id) {
        try {
            String sql = "SELECT *\n"
                    + "FROM DiscountCode\n"
                    + "WHERE ID = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, id);
            ResultSet rs = statement.executeQuery();
            if (rs.next()) {
                DiscountCode dc = new DiscountCode(rs.getInt("ID"), rs.getString("DiscountContent"), rs.getDate("StartDate"), rs.getDate("EndDate"), rs.getBoolean("Status"));
                return dc;
            }
        } catch (SQLException ex) {
            Logger.getLogger(DiscountCodeDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public void deleteDiscountCode(int id) {
        try {
            String sql = "DELETE DiscountCode WHERE ID = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, id);
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(DiscountCodeDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
