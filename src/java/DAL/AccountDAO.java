/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAL;

import Model.Account;
import java.sql.Date;
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
public class AccountDAO extends BaseDAO {

    @Override
    public ArrayList<Account> getAll() {
        ArrayList<Account> accounts = new ArrayList<>();
        try {
            String sql = "SELECT ID\n"
                    + "      ,UserName\n"
                    + "      ,Password\n"
                    + "      ,Role\n"
                    + "      ,Name\n"
                    + "      ,CreatedDate\n"
                    + "  FROM Account";
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Account a = new Account();
                a.setId(rs.getInt("ID"));
                a.setUserName(rs.getString("UserName"));
                a.setPassword(rs.getString("Password"));
                a.setRole(rs.getString("Role"));
                a.setName(rs.getString("Name"));
                a.setCreatedDate(rs.getDate("CreatedDate"));
                accounts.add(a);
            }
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return accounts;
    }

    public void insertAccount(Account a) {
        try {
            String sql = "INSERT INTO Account\n"
                    + "     VALUES\n"
                    + "     (?\n"
                    + "     ,?\n"
                    + "     ,?\n"
                    + "     ,?\n"
                    + "     ,?)";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, a.getUserName());
            statement.setString(2, a.getPassword());
            statement.setString(3, a.getRole());
            statement.setString(4, a.getName());
            statement.setDate(5, a.getCreatedDate());
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void updateAccount(Account a) {
        try {
            String sql = "UPDATE Account SET "
                    + "UserName = ?,\n"
                    + "Password = ?,\n"
                    + "Role = ?,\n"
                    + "Name = ?,\n"
                    + "CreatedDate = ?\n"
                    + "WHERE id = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, a.getUserName());
            statement.setString(2, a.getPassword());
            statement.setString(3, a.getRole());
            statement.setString(4, a.getName());
            statement.setDate(5, a.getCreatedDate());
            statement.setInt(6, a.getId());
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public Account getAccount(int id) {
        try {
            String sql = "SELECT *\n"
                    + "FROM Account\n"
                    + "WHERE id = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, id);
            ResultSet rs = statement.executeQuery();
            if (rs.next()) {
                Account a = new Account(rs.getInt("id"), rs.getString("UserName"), rs.getString("Password"), rs.getString("Role"), rs.getString("Name"), rs.getDate("CreatedDate"));
                return a;
            }
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public void deleteAccount(int id) {
        try {
            String sql = "DELETE Account WHERE id = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, id);
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public ArrayList<Account> getShopAccountBaseOnDOB(Date fromDate, Date toDate) {
        ArrayList<Account> shopAccounts = new ArrayList<>();
        try {
            String sql = "SELECT * FROM Account WHERE CreatedDate BETWEEN ? AND ? AND Role LIKE 'shop'";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setDate(1, fromDate);
            statement.setDate(2, toDate);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Account a = new Account();
                a.setId(rs.getInt("ID"));
                a.setUserName(rs.getString("UserName"));
                a.setPassword(rs.getString("Password"));
                a.setRole(rs.getString("Role"));
                a.setName(rs.getString("Name"));
                a.setCreatedDate(rs.getDate("CreatedDate"));
                shopAccounts.add(a);
            }
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return shopAccounts;
    }

    public ArrayList<Account> getShopAccounts() {
        ArrayList<Account> shopAccounts = new ArrayList<>();
        try {
            String sql = "SELECT * FROM Account WHERE Role LIKE 'shop'";
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Account a = new Account();
                a.setId(rs.getInt("ID"));
                a.setUserName(rs.getString("UserName"));
                a.setPassword(rs.getString("Password"));
                a.setRole(rs.getString("Role"));
                a.setName(rs.getString("Name"));
                a.setCreatedDate(rs.getDate("CreatedDate"));
                shopAccounts.add(a);
            }
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return shopAccounts;
    }

    public ArrayList<Account> getListByPage(ArrayList<Account> list, int start, int end) {
        ArrayList<Account> arrayList = new ArrayList<>();
        for (int i = start; i < end; i++) {
            arrayList.add(list.get(i));
        }
        return arrayList;
    }

}
