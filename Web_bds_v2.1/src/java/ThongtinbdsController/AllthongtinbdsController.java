/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ThongtinbdsController;

import dal.ThongtinbdsDBContext;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Thongtinbds;

/**
 *
 * @author 03623
 */
public class AllthongtinbdsController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */


    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        
        ThongtinbdsDBContext db = new ThongtinbdsDBContext();
        
        String Loaibds = request.getParameter("Loaibds");
        String Khuvucbds = request.getParameter("Khuvucbds");
        String locGia = request.getParameter("locGia");
        long Giasobe2 = 0L;
        long Giasolon2 = 1000000000000L;
        
        
        String thutu = request.getParameter("thutu");
        
        String Loaibds2 = "";
        String Khuvucbds2 =  "";
        if(Loaibds == null || Loaibds.trim().length()==0){
            Loaibds2 = "NOT LIKE '' ";
        }else{
            Loaibds2 = "LIKE '"+Loaibds+"'";
        }
        if(Khuvucbds == null || Khuvucbds.trim().length() == 0 ){
            Khuvucbds2 = "NOT LIKE ''";
        }else{
            Khuvucbds2 = "LIKE '"+Khuvucbds+"'";
        }
        // loc giá
        if(locGia!=null&&locGia.equals("<500")){Giasobe2= 0L; Giasolon2 = 500000000L;}
        if(locGia!=null&&locGia.equals("500-800") ){Giasobe2= 500000000L; Giasolon2 = 800000000L;}
        if(locGia!=null&&locGia.equals("800-1t") ){Giasobe2= 800000000L; Giasolon2 = 1000000000L;}
        if(locGia!=null&&locGia.equals("1-3t") ){Giasobe2= 1000000000L; Giasolon2 = 3000000000L;}
        if(locGia!=null&&locGia.equals("3-7t") ){Giasobe2= 3000000000L; Giasolon2 = 7000000000L;}
        if(locGia!=null&&locGia.equals("7-10t") ){Giasobe2= 7000000000L; Giasolon2 = 10000000000L;}
        if(locGia!=null&&locGia.equals("10-20t") ){Giasobe2= 10000000000L; Giasolon2 = 20000000000L;}
        if(locGia!=null&&locGia.equals(">20t") ){Giasobe2= 20000000000L; Giasolon2 = 1000000000000L;}
        int pagesize = 6;
        String page = request.getParameter("page");
        if(page ==null || page.trim().length() ==0){
            page= "1";}
        int pageindex =Integer.parseInt(page);
        
        String thutu2="";
        if(thutu==null || thutu.trim().length() ==0||thutu.equals("moinhat")){thutu2 = "IDbds DESC";//moi nhat
        }
        if(thutu!=null&&thutu.equals("cunhat") ){thutu2 = "IDbds ASC";}// cũ nhất
        if(thutu!=null&&thutu.equals("thap-cao") ){thutu2 = "Giaso ASC";}// giá thap-cao
        if(thutu!=null&&thutu.equals("cao-thap") ){thutu2 = "Giaso DESC";}// giá cao-thap
        
        ArrayList<Thongtinbds> thongtinbds = db.getThongtinbdsphanpage(Loaibds2, Khuvucbds2, Giasobe2, Giasolon2, pageindex, pagesize, thutu2);
        request.setAttribute("thongtinbds", thongtinbds);
//        ArrayList<Thongtinbds> thongtinbds2 = db.getAllthongtinbds();
//        request.setAttribute("thongtinbds2", thongtinbds2);
        
        int count = db.countloaipage(Loaibds2, Khuvucbds2, Giasobe2, Giasolon2, pageindex, pagesize, thutu2);

        int totalpage = (count%pagesize==0)?(count/pagesize):(count / pagesize)+1;
        request.setAttribute("Loaibds", Loaibds);
        request.setAttribute("Khuvucbds", Khuvucbds);
        request.setAttribute("locGia", locGia);
        request.setAttribute("thutu", thutu);
        
        request.setAttribute("totalpage", totalpage);
        request.setAttribute("pageindex", pageindex);
        request.getRequestDispatcher("../view/allthongtinbds.jsp").forward(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
