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
public class Imgbds {
    private int idbds;
    private Blob imgbds;
    private int idimg;

    public Imgbds() {
    }

    public Imgbds(int idbds, Blob imgbds, int idimg) {
        this.idbds = idbds;
        this.imgbds = imgbds;
        this.idimg = idimg;
    }

    

    public int getIdimg() {
        return idimg;
    }

    public void setIdimg(int idimg) {
        this.idimg = idimg;
    }

    

    public int getIdbds() {
        return idbds;
    }

    public void setIdbds(int idbds) {
        this.idbds = idbds;
    }

    public Blob getImgbds() {
        return imgbds;
    }

    public void setImgbds(Blob imgbds) {
        this.imgbds = imgbds;
    }

    
    
    
}
