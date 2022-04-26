/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;


public class DBContext {
    protected Connection connection;
    public DBContext()
    {
        try {
            String user="root";
            String pass = "";
            String url = "jdbc:mysql://localhost:3306/web2.0";
//            String user="sa";
//            String pass = "0362351671";
//            String url = "jdbc:sqlserver://LAPTOP-OJ719L1D\\SQLEXPRESS:1433;databaseName=web_bds_v2.0";
//            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
//            connection = DriverManager.getConnection(url, user, pass);
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(url, user, pass);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(DBContext.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(DBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
//    public static void main(String[] args){
//        try {
//            System.out.println(new DBContext().connection);
//        } catch (Exception e) {
//        }
//    }

}

    

//String user="gaclbz1f_webbdsv20";
//            String pass = "ygfme%LoYv[M";
//            String url = "jdbc:mysql://localhost:3306/gaclbz1f_webbdsv20";
        // String url = "jdbc:mysql://reseller001.tenten.vn/gaclbz1f_webbdsv20";

