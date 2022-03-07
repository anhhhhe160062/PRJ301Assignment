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
public class AccountDAO extends BaseDAO{

    @Override
    public ArrayList<Account> getAll() {
        ArrayList<Account> accounts = new ArrayList<>();
        try {
            String sql = "SELECT ID\n"
                    + "      ,UserName\n"
                    + "      ,Password\n"
                    + "      ,Role\n"
                    + "      ,Name\n"
                    + "      ,Gender\n"
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
                a.setGender(rs.getBoolean("Gender"));
                a.setDOB(rs.getDate("DOB"));
                accounts.add(a);
            }
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return accounts;
    }
    
    public void insertAccount(Account a){
        try{
            String sql = "INSERT INTO Account\n"
                    + "     VALUES\n"
                    + "     (?\n"
                    + "     ,?\n"
                    + "     ,?\n"
                    + "     ,?\n"
                    + "     ,?\n"
                    + "     ,?)";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, a.getUserName());
            statement.setString(2, a.getPassword());
            statement.setString(3, a.getRole());
            statement.setString(4, a.getName());
            statement.setBoolean(5, a.isGender());
            statement.setDate(6, a.getDOB());
            statement.executeUpdate();
        }catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    
//        public void insertStudent(Student s) {
//        try {
//            String sql = "INSERT INTO Student\n"
//                    + "     VALUES\n"
//                    + "           (?\n"
//                    + "           ,?\n"
//                    + "           ,?)";
//            PreparedStatement statement = connection.prepareStatement(sql);
//            statement.setString(1, s.getName());
//            statement.setBoolean(2, s.isGender());
//            statement.setDate(3, s.getDOB());
//            statement.executeUpdate();
//        } catch (SQLException ex) {
//            Logger.getLogger(StudentDAO.class.getName()).log(Level.SEVERE, null, ex);
//        }
//    }
}
