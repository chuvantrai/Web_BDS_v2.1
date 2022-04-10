/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package AdminController;

import controller.BaseAuthController;
import dal.YeucauDBContext;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Yeucau;

/**
 *
 * @author 03623
 */
public class ListyeucauController extends BaseAuthController {

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
    protected void processGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        
        YeucauDBContext db = new YeucauDBContext();
        int pagesize = 4;
        String page = request.getParameter("page");
        if(page ==null || page.trim().length() ==0)
            page= "1";
        int pageindex =Integer.parseInt(page);
        ArrayList<Yeucau> yeucaus = db.getAllyeucaus(pageindex,pagesize);
        request.setAttribute("yeucaus", yeucaus);// list all yeucau
        int count = db.count();
        int totalpage = (count%pagesize==0)?(count/pagesize):(count / pagesize)+1;
        request.setAttribute("totalpage", totalpage);
        request.setAttribute("pageindex", pageindex);
        
//        String thongbao4 = (String)request.getAttribute("thongbao3");
//        request.setAttribute("thongbao4", thongbao4);
        request.getRequestDispatcher("view_admin/listyeucau.jsp").forward(request, response);
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
    protected void processPost(HttpServletRequest request, HttpServletResponse response)
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
