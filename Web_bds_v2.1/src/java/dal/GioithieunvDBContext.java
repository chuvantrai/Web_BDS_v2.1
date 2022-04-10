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
import model.Gioithieunv;

/**
 *
 * @author 03623
 */
public class GioithieunvDBContext extends DBContext{
    public ArrayList<Gioithieunv> getAllgioithieu()
    {
        ArrayList<Gioithieunv> gioithieus = new ArrayList<>();
        try {
            String sql = "SELECT IDnv, Tennv,Chitiet,Img FROM dbo.GioiThieuNV";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while(rs.next())
            {
                Gioithieunv d = new Gioithieunv();
                d.setIdnv(rs.getInt("IDnv"));
                d.setTen(rs.getString("Tennv"));
                d.setChitiet(rs.getString("Chitiet"));
                d.setImg(rs.getBlob("Img"));
                gioithieus.add(d);
            }
        } catch (SQLException ex) {
            Logger.getLogger(AccountDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return gioithieus;
    }
    
    
    
//    public static void main(String[] args){
//
//            GioithieunvDBContext db = new GioithieunvDBContext();
//            ArrayList<Gioithieunv> acc = db.getAllgioithieu();
//            for (Gioithieunv a : acc) {
//                System.out.println(a.getImg());
//                System.out.println(a.getTen());
//            }
//    }
}
