/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package AdminController;

import controller.BaseAuthController;
import dal.ThongtinbdsDBContext;
import dal.TintucDBContext;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;
import model.Thongtinbds;

@MultipartConfig(maxFileSize = 1024 * 1024 * 5, maxRequestSize = 1024 * 1024 * 50)// 5mb 50mb
public class InsertThongtinbds extends BaseAuthController {

    @Override
    protected void processGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("../view_admin/insertThongtinbds.jsp").forward(request, response);
    }


    @Override
    protected void processPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        
        Thongtinbds t = new Thongtinbds();
        t.setIdbds(0);
        String tenbds = request.getParameter("tenbds");
        t.setTenbds(tenbds);
        String loaibds = request.getParameter("loaibds");
        t.setLoaibds(loaibds);
        String khuvuc = request.getParameter("khuvuc");
        t.setKhuvucbds(khuvuc);
        String thongtin = request.getParameter("thongtin");
        t.setThongtinbds(thongtin);
        String giachu = request.getParameter("giachu");
        t.setGiachu(giachu);
        String giaso = request.getParameter("giaso");
        long giaso2 = Long.parseLong(giaso);
        t.setGiaso(giaso2);
        Part img = request.getPart("img");
        InputStream is = img.getInputStream();
        String ggmap = request.getParameter("ggmap");
        t.setGgmap(ggmap);
        t.setRowindex(0);
        long millis=System.currentTimeMillis();    
        java.sql.Date date = new java.sql.Date(millis);
        t.setNgay(date);
        
        ThongtinbdsDBContext db = new ThongtinbdsDBContext();
        db.insertThongtinbds(t,is);
        String thongbao2 = "Đã thêm sản phẩm thành công!";
        request.setAttribute("thongbao2", thongbao2);
        request.getRequestDispatcher("../view_admin/insertThongtinbds.jsp").forward(request, response);
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
