/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAL;

import Model.Account;
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
                    + "      ,DOB\n"
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
                a.setDOB(rs.getDate("DOB"));
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
            statement.setDate(5, a.getDOB());
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
                    + "DOB = ?\n"
                    + "WHERE id = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, a.getUserName());
            statement.setString(2, a.getPassword());
            statement.setString(3, a.getRole());
            statement.setString(4, a.getName());
            statement.setDate(5, a.getDOB());
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
            if(rs.next()){
                Account a = new Account(rs.getInt("id"), rs.getString("UserName"), rs.getString("Password"), rs.getString("Role"), rs.getString("Name"), rs.getDate("DOB"));
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

}
