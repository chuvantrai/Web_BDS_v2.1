/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author Sap-lap
 */
public class Account {
    private int userid;
    private String username;
    private String password;
    private String displayname;
    private Vaitro vaitro;
    private Long sdt;

    public Account(int userid, String username, String password, String displayname, Vaitro vaitro, Long sdt) {
        this.userid = userid;
        this.username = username;
        this.password = password;
        this.displayname = displayname;
        this.vaitro = vaitro;
        this.sdt = sdt;
    }


    public Long getSdt() {
        return sdt;
    }

    public void setSdt(Long sdt) {
        this.sdt = sdt;
    }

    
    
    public int getUserid() {
        return userid;
    }

    public void setUserid(int userid) {
        this.userid = userid;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getDisplayname() {
        return displayname;
    }

    public void setDisplayname(String displayname) {
        this.displayname = displayname;
    }
    
       public Vaitro getVaitro() {
        return vaitro;
    }

    public void setVaitro(Vaitro vaitro) {
        this.vaitro = vaitro;
    }

    public Account() {
    } 

    
    
}
