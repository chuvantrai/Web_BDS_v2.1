/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Account;
import model.Vaitro;

/**
 *
 * @author Sap-lap
 */
public class AccountDBContext extends DBContext {
    public Account getAccount(String username, String password)
    {
        try {
            String sql = "SELECT a.UserID, a.Username, a.Password, a.Displayname, a.Role, a.Sdt, b.ID, b.Vaitro \n" +
                            "FROM dbo.Account AS a\n" +
                            "INNER JOIN dbo.VaiTro AS b\n" +
                            "ON a.Role=b.ID\n" +
                            "WHERE a.Username=? AND a.Password=?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, username);
            stm.setString(2, password);
            ResultSet rs = stm.executeQuery();
            if(rs.next())
            {
                Account account = new Account();
                account.setUserid(rs.getInt("UserID"));
                account.setUsername(rs.getString("Username"));
                account.setPassword(rs.getString("Password"));
                account.setDisplayname(rs.getString("Displayname"));
                account.setSdt(rs.getLong("Sdt"));
                Vaitro vaitro = new Vaitro();
                vaitro.setId(rs.getInt("ID"));
                vaitro.setVaitro(rs.getString("Vaitro"));
                account.setVaitro(vaitro);
                return account;
            }
        } catch (SQLException ex) {
            Logger.getLogger(AccountDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
    public void insertAccount(Account a)
    {
        String sql = "INSERT INTO [Account]\n" +
                        "           ([Username]\n" +
                        "           ,[Password]\n" +
                        "           ,[Displayname]\n" +
                        "           ,[Role]\n" +
                        "           ,[Sdt])\n" +
                        "     VALUES\n" +
                        "           (?\n" +
                        "           ,?\n" +
                        "           ,?\n" +
                        "           ,?\n" +
                        "           ,?)";
        PreparedStatement stm = null;
        try {
            stm = connection.prepareStatement(sql);
            stm.setString(1, a.getUsername());
            stm.setString(2, a.getPassword());
            stm.setString(3, a.getDisplayname());
            stm.setInt(4, 2);
            stm.setLong(5, a.getSdt());
            stm.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(AccountDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        finally
        {
            if(stm != null)
            {
                try {
                    stm.close();
                } catch (SQLException ex) {
                    Logger.getLogger(AccountDBContext.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
            
            if(connection !=null)
            {
                try {
                    connection.close();
                } catch (SQLException ex) {
                    Logger.getLogger(AccountDBContext.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }
    }
    
    public ArrayList<Account> getAllaccount()
    {
        ArrayList<Account> accounts = new ArrayList<>();
        try {
            String sql = "SELECT a.UserID, a.Username, a.Password, a.Displayname, a.Role, a.Sdt, b.ID, b.Vaitro \n" +
                        "FROM dbo.Account AS a\n" +
                        "INNER JOIN dbo.VaiTro AS b\n" +
                        "ON a.Role=b.ID";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while(rs.next())
            {
                Account d = new Account();
                d.setUserid(rs.getInt("UserID"));
                d.setUsername(rs.getString("Username"));
                d.setPassword(rs.getString("Password"));
                d.setDisplayname(rs.getString("Displayname"));
                d.setSdt(rs.getLong("Sdt"));
                Vaitro vaitro = new Vaitro();
                vaitro.setId(rs.getInt("ID"));
                vaitro.setVaitro(rs.getString("Vaitro"));
                d.setVaitro(vaitro);
                accounts.add(d);
            }
        } catch (SQLException ex) {
            Logger.getLogger(AccountDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return accounts;
    }
    
//    public static void main(String[] args){
//
//            AccountDBContext db = new AccountDBContext();
//            ArrayList<Account> acc = db.getAllaccount();
//            for (Account a : acc) {
//                System.out.println(a.getDisplayname());
//                System.out.println(a.getSdt());
//                System.out.println(a.getVaitro().getVaitro());
//            }
//    }
    
}
