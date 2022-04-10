/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Blob;

/**
 *
 * @author 03623
 */
public class Gioithieunv {
    private int idnv;
    private String ten;
    private String chitiet;
    private Blob img;

    public Gioithieunv() {
    }

    public Gioithieunv(int idnv, String ten, String chitiet, Blob img) {
        this.idnv = idnv;
        this.ten = ten;
        this.chitiet = chitiet;
        this.img = img;
    }

    

    public int getIdnv() {
        return idnv;
    }

    public void setIdnv(int idnv) {
        this.idnv = idnv;
    }

    public String getTen() {
        return ten;
    }

    public void setTen(String ten) {
        this.ten = ten;
    }

    public String getChitiet() {
        return chitiet;
    }

    public void setChitiet(String chitiet) {
        this.chitiet = chitiet;
    }

    public Blob getImg() {
        return img;
    }

    public void setImg(Blob img) {
        this.img = img;
    }

    
    
    
}
