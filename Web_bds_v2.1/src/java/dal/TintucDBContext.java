/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import java.io.InputStream;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Tintuc;

/**
 *
 * @author 03623
 */
public class TintucDBContext extends DBContext{
    public ArrayList<Tintuc> getAllTintuc() //ngày gần nhất
    {
        ArrayList<Tintuc> tintucs = new ArrayList<>();
        try {
            String sql = "SELECT ID,Tieude,Noidung,ngay,imgAvar FROM dbo.TinTuc1\n" +
                            "ORDER BY ngay DESC";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while(rs.next())
            {
                Tintuc t = new Tintuc();
                t.setId(rs.getInt("ID"));
                t.setTieude(rs.getString("Tieude"));
                t.setNoidung(rs.getString("Noidung"));
                t.setNgay(rs.getDate("ngay"));
                t.setImgavar(rs.getBlob("imgAvar"));
                tintucs.add(t);
            }
        } catch (SQLException ex) {
            Logger.getLogger(TintucDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return tintucs;
    }
    
    public Tintuc getTintuctheoid(int id)
    {
        try {
            String sql = "SELECT ID,Tieude,Noidung,ngay,imgAvar FROM dbo.TinTuc1\n" +
                            "WHERE ID=?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, id);
            ResultSet rs = stm.executeQuery();
            if(rs.next())
            {
                Tintuc t = new Tintuc();
                t.setId(rs.getInt("ID"));
                t.setTieude(rs.getString("Tieude"));
                t.setNoidung(rs.getString("Noidung"));
                t.setNgay(rs.getDate("ngay"));
                t.setImgavar(rs.getBlob("imgAvar"));
                return t;
            }
        } catch (SQLException ex) {
            Logger.getLogger(ThongtinbdsDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
    public ArrayList<Tintuc> getTintuctheopage(int pageindex,int pagesize) {
        ArrayList<Tintuc> Tintucs = new ArrayList<>();
        try {
            String sql = "SELECT ID , Tieude,t.Noidung,t.ngay,t.imgAvar FROM (SELECT * ,(ROW_NUMBER() OVER (ORDER BY ngay DESC)) as row_indexFROM FROM dbo.TinTuc1) t\n" +
                    "WHERE t.row_indexFROM >=(? -1)*? + 1 AND t.row_indexFROM <= ? * ?";
            
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, pageindex);
            stm.setInt(2, pagesize);
            stm.setInt(3, pageindex);
            stm.setInt(4, pagesize);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Tintuc t = new Tintuc();
                t.setId(rs.getInt("ID"));
                t.setTieude(rs.getString("Tieude"));
                t.setNoidung(rs.getString("Noidung"));
                t.setNgay(rs.getDate("ngay"));
                t.setImgavar(rs.getBlob("imgAvar"));
                Tintucs.add(t);
            }
        } catch (SQLException ex) {
            Logger.getLogger(TintucDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return Tintucs;
    }
    
    public int count() {
        try {
            String sql = "SELECT COUNT(*) as Total FROM dbo.TinTuc1";
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
    public void insertTintuc(Tintuc a,InputStream is)
    {
        String sql = "INSERT INTO [TinTuc1]\n" +
                    "           ([Tieude]\n" +
                    "           ,[Noidung]\n" +
                    "           ,[ngay]\n" +
                    "           ,[imgAvar])\n" +
                    "     VALUES\n" +
                    "           (?\n" +
                    "           ,?\n" +
                    "           ,?\n" +
                    "           ,?)";
        PreparedStatement stm = null;
        try {
            stm = connection.prepareStatement(sql);
            stm.setString(1, a.getTieude());
            stm.setString(2, a.getNoidung());
            stm.setDate(3, a.getNgay());
            stm.setBlob(4, is);
            stm.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(TintucDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        finally
        {
            if(stm != null)
            {
                try {
                    stm.close();
                } catch (SQLException ex) {
                    Logger.getLogger(TintucDBContext.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
            
            if(connection !=null)
            {
                try {
                    connection.close();
                } catch (SQLException ex) {
                    Logger.getLogger(TintucDBContext.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }
    }
    
    public void deleteTintuc(int id)
    {
        String sql = "DELETE FROM [TinTuc1]\n" +
                "      WHERE ID = ?";
        PreparedStatement stm = null;
        try {
            stm = connection.prepareStatement(sql);
            stm.setInt(1, id);
            stm.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(TintucDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        finally
        {
            if(stm != null)
            {
                try {
                    stm.close();
                } catch (SQLException ex) {
                    Logger.getLogger(TintucDBContext.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
            
            if(connection !=null)
            {
                try {
                    connection.close();
                } catch (SQLException ex) {
                    Logger.getLogger(TintucDBContext.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }
    }
    public void updateTintuc(Tintuc t, InputStream is, int check)
    {
        String sql = "UPDATE [TinTuc1]\n" +
                    "   SET [Tieude] = ?\n" +
                    "      ,[Noidung] = ?\n" +
                    "      ,[ngay] = ?\n" +
                    "      ,[imgAvar] = ?\n" +
                    " WHERE ID = ?";
        PreparedStatement stm = null;
        try {
            stm = connection.prepareStatement(sql);
            stm.setInt(5, t.getId());
            stm.setString(1, t.getTieude());
            stm.setString(2, t.getNoidung());
            stm.setDate(3, t.getNgay());
            
            if(check != 0){
                stm.setBlob(4, is);
            }else{
                stm.setBlob(4, t.getImgavar());
            }
            
            stm.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(TintucDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        finally
        {
            if(stm != null)
            {
                try {
                    stm.close();
                } catch (SQLException ex) {
                    Logger.getLogger(TintucDBContext.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
            
            if(connection !=null)
            {
                try {
                    connection.close();
                } catch (SQLException ex) {
                    Logger.getLogger(TintucDBContext.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }
    }

//        public static void main(String[] args){
//
//            TintucDBContext db = new TintucDBContext();
////            long millis=System.currentTimeMillis();    
////        java.sql.Date date = new java.sql.Date(millis);
////            Tintuc a = new Tintuc(6, "tét2", "test2", date, "tset2");
////            db.getTintuctheoid(1);
//                Tintuc t = db.getTintuctheoid(1);
//                System.out.println(t.getTieude());
//                System.out.println(t.getImgavar());
//    }
}
