/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dal.ThongtinbdsDBContext;
import dal.TintucDBContext;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Thongtinbds;
import model.Tintuc;

/**
 *
 * @author 03623
 */
public class HomeController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        
        TintucDBContext db = new TintucDBContext();
        ArrayList<Tintuc> tintucs = db.getAllTintuc();  
        request.setAttribute("tintucs", tintucs);// list all tintuc
        
        // lít all thongtinbds
        ThongtinbdsDBContext dbtt = new ThongtinbdsDBContext();
        ArrayList<Thongtinbds> thongtinbds = dbtt.getAllthongtinbds();  
        request.setAttribute("thongtinbds", thongtinbds); 
        int count= dbtt.count();
        int pagesize = 3;
        int totalpage = (count%pagesize==0)?(count/pagesize):(count / pagesize)+1;
        request.setAttribute("totalpage", totalpage);
        
        // lít thongtinbds loại #canho
        ArrayList<Thongtinbds> thongtinbdscanho = dbtt.getAllthongtinbdstheoloai("#canho");  
        request.setAttribute("thongtinbdscanho", thongtinbdscanho); 
        int countcanho= dbtt.countloai("#canho");
        int totalpagecanho = (countcanho%pagesize==0)?(countcanho/pagesize):(countcanho / pagesize)+1;
        request.setAttribute("totalpagecanho", totalpagecanho);
        
        // lít thongtinbds loại #datnen
        ArrayList<Thongtinbds> thongtinbdsdatnen = dbtt.getAllthongtinbdstheoloai("#datnen");  
        request.setAttribute("thongtinbdsdatnen", thongtinbdsdatnen); 
        int countdatnen= dbtt.countloai("#datnen");
        int totalpagedatnen = (countdatnen%pagesize==0)?(countdatnen/pagesize):(countdatnen / pagesize)+1;
        request.setAttribute("totalpagedatnen", totalpagedatnen);
                
        // lít thongtinbds loại #nhapho
        ArrayList<Thongtinbds> thongtinbdsnhapho = dbtt.getAllthongtinbdstheoloai("#nhapho");  
        request.setAttribute("thongtinbdsnhapho", thongtinbdsnhapho); 
        int countnhapho= dbtt.countloai("#nhapho");
        int totalpagenhapho = (countnhapho%pagesize==0)?(countnhapho/pagesize):(countnhapho / pagesize)+1;
        request.setAttribute("totalpagenhapho", totalpagenhapho);
        
        // lít thongtinbds loại #bietthu
        ArrayList<Thongtinbds> thongtinbdsbietthu = dbtt.getAllthongtinbdstheoloai("#bietthu");  
        request.setAttribute("thongtinbdsbietthu", thongtinbdsbietthu); 
        int countbietthu= dbtt.countloai("#bietthu");
        int totalpagebietthu = (countbietthu%pagesize==0)?(countbietthu/pagesize):(countbietthu / pagesize)+1;
        request.setAttribute("totalpagebietthu", totalpagebietthu);
        
          
        request.getRequestDispatcher("view/home.jsp").forward(request, response);
    }

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
        processRequest(request, response);
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
        processRequest(request, response);
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
