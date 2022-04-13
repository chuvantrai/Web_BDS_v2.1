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
import model.Yeucau;

/**
 *
 * @author 03623
 */
public class YeucauDBContext extends DBContext{
    public ArrayList<Yeucau> getAllyeucaus(int pageindex,int pagesize)
    {
        ArrayList<Yeucau> yeucaus = new ArrayList<>();
        try {
            String sql = "SELECT IDyeucau,Tennguoigui,Sdt, Noidung,Ngaygui, UserID \n" +
                    "FROM (SELECT * ,(ROW_NUMBER() OVER (ORDER BY IDyeucau DESC)) as row_index FROM yeucau) y\n" +
                    "WHERE y.row_index >= (? -1)*?+1 AND y.row_index <= ? * ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, pageindex);
            stm.setInt(2, pagesize);
            stm.setInt(3, pageindex);
            stm.setInt(4, pagesize);
            ResultSet rs = stm.executeQuery();
            while(rs.next())
            {
                Yeucau y = new Yeucau();
                y.setIdyc(rs.getInt("IDyeucau"));
                y.setHoten(rs.getString("Tennguoigui"));
                y.setSdt(rs.getLong("Sdt"));
                y.setNoidung(rs.getString("Noidung"));
                y.setDate(rs.getDate("Ngaygui"));
                y.setUserid(rs.getInt("UserID"));
                yeucaus.add(y);
            }
        } catch (SQLException ex) {
            Logger.getLogger(YeucauDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return yeucaus;
    }
    
    public int count() {
        try {
            String sql = "SELECT COUNT(*) as Total\n" +
                        "FROM (SELECT * ,(ROW_NUMBER() OVER (ORDER BY IDyeucau ASC)) as row_index "
                    + "FROM yeucau) y";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            if (rs.next()) {
                return rs.getInt("Total");
            }
        } catch (SQLException ex) {
            Logger.getLogger(TintucDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return -1;
    }
    
    public void insertYeucau(Yeucau a)
    {
        String sql = "INSERT INTO `yeucau`( `tennguoigui`, `sdt`, `noidung`, `ngaygui`, `userid`) "
                + "VALUES (?,?,?,?,?)";
        PreparedStatement stm = null;
        try {
            stm = connection.prepareStatement(sql);
            stm.setString(1, a.getHoten());
            stm.setLong(2, a.getSdt());
            stm.setString(3, a.getNoidung());
            stm.setDate(4, a.getDate());
            stm.setInt(5, a.getUserid());
            stm.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(YeucauDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        finally
        {
            if(stm != null)
            {
                try {
                    stm.close();
                } catch (SQLException ex) {
                    Logger.getLogger(YeucauDBContext.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
            
            if(connection !=null)
            {
                try {
                    connection.close();
                } catch (SQLException ex) {
                    Logger.getLogger(YeucauDBContext.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }
    }
    
     public void deleteYeucau(int id)
    {
        String sql = "DELETE FROM `yeucau` WHERE idyeucau =? ";
        PreparedStatement stm = null;
        try {
            stm = connection.prepareStatement(sql);
            stm.setInt(1, id);
            stm.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(YeucauDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        finally
        {
            if(stm != null)
            {
                try {
                    stm.close();
                } catch (SQLException ex) {
                    Logger.getLogger(YeucauDBContext.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
            
            if(connection !=null)
            {
                try {
                    connection.close();
                } catch (SQLException ex) {
                    Logger.getLogger(YeucauDBContext.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }
    }
    
//        public static void main(String[] args){
//
//            YeucauDBContext db = new YeucauDBContext();
//            db.deleteYeucau(13);
////            Yeucau y = new Yeucau();
////                y.setIdyc(1);
////                y.setHoten("hh");
////                y.setSdt(123L);
////                y.setNoidung("noidunggggg");
////                long millis=System.currentTimeMillis();    
////        java.sql.Date date = new java.sql.Date(millis); 
////                y.setDate(date);
////                y.setUserid(9);
////            db.insertYeucau(y);
////            ArrayList<Yeucau> acc = db.getAllyeucaus(2, 3);
////            for (Yeucau a : acc) {
////                System.out.println(a.getDate());
////                System.out.println(a.getSdt());
////                System.out.println(a.getUserid());
////            }
//    }
}
