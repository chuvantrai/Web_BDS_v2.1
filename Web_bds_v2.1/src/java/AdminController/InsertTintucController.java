/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package AdminController;

import controller.BaseAuthController;
import dal.TintucDBContext;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Date;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import model.Tintuc;
import model.Yeucau;

@MultipartConfig(maxFileSize = 1024 * 1024 * 5, maxRequestSize = 1024 * 1024 * 50)// 5mb 50mb
public class InsertTintucController extends BaseAuthController {


    @Override
    protected void processGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            request.getRequestDispatcher("../view_admin/insertTintuc.jsp").forward(request, response);
    }


    @Override
    protected void processPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");

        String tieude = request.getParameter("tieude");
        String ngay = request.getParameter("ngay");
        Date ngay2 = Date.valueOf(ngay);
        String noidung = request.getParameter("noidung");
//        String img = request.getParameter("img");
        Part img = request.getPart("img");
        String thongbao2=null;
        if(img!=null){
        
        InputStream is = img.getInputStream();
        TintucDBContext db = new TintucDBContext();
        Tintuc t = new Tintuc();
        t.setId(1);
        t.setTieude(tieude);
        t.setNgay(ngay2);
        t.setNoidung(noidung);
        t.setImgavar(null);
        db.insertTintuc(t,is);
        thongbao2 = "Đã thêm tin tức thành công!";
        }else{
            thongbao2 = "Thêm tin tức thất bại!";
        }
        
        
        request.setAttribute("thongbao2", thongbao2);
        request.getRequestDispatcher("../view_admin/insertTintuc.jsp").forward(request, response);
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
