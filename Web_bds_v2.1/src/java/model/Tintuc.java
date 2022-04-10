/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Blob;
import java.sql.Date;

/**
 *
 * @author 03623
 */
public class Tintuc {
    private int id;
    private String tieude;
    private String noidung;
    private Date ngay;
    private Blob imgavar;

    public Tintuc() {
    }

    public Tintuc(int id, String tieude, String noidung, Date ngay, Blob imgavar) {
        this.id = id;
        this.tieude = tieude;
        this.noidung = noidung;
        this.ngay = ngay;
        this.imgavar = imgavar;
    }

    public Blob getImgavar() {
        return imgavar;
    }

    public void setImgavar(Blob imgavar) {
        this.imgavar = imgavar;
    }
    
    
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTieude() {
        return tieude;
    }

    public void setTieude(String tieude) {
        this.tieude = tieude;
    }

    public String getNoidung() {
        return noidung;
    }

    public void setNoidung(String noidung) {
        this.noidung = noidung;
    }

    public Date getNgay() {
        return ngay;
    }

    public void setNgay(Date ngay) {
        this.ngay = ngay;
    }
    
    
    
    
}
