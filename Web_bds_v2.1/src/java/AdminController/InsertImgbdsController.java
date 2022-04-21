/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package AdminController;

import controller.BaseAuthController;
import dal.ThongtinbdsDBContext;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;
import model.Imgbds;

@MultipartConfig(maxFileSize = 1024 * 1024 * 5, maxRequestSize = 1024 * 1024 * 50)// 5mb 50mb
public class InsertImgbdsController extends BaseAuthController {

    
    @Override
    protected void processGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
//        Part img = request.getPart("img");
////        InputStream is = img.getInputStream();
//        String idbds = request.getParameter("idbds");
////        int id = Integer.parseInt(idbds);
////        Imgbds i = new Imgbds(id, null, 0);
////        ThongtinbdsDBContext db = new ThongtinbdsDBContext();
////        db.insertImgbds(i,is);
////        response.sendRedirect("../thongtinbds/tatca");
//        response.sendRedirect("../thongtinbds/detail?thongtinbdsid="+idbds);
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
          Part img = request.getPart("img");
        InputStream is = img.getInputStream();
        String idbds = request.getParameter("idbds");
        int id = Integer.parseInt(idbds);
        Imgbds i = new Imgbds(id, null, 0);
        ThongtinbdsDBContext db = new ThongtinbdsDBContext();
        db.insertImgbds(i,is);
//        response.sendRedirect("../thongtinbds/tatca");
        response.sendRedirect("../thongtinbds/detail?thongtinbdsid="+idbds);
        
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
