/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dal.AccountDBContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import model.Account;

/**
 *
 * @author 03623
 */
public class RegisteredController extends HttpServlet {



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
        request.getRequestDispatcher("view/registered.jsp").forward(request, response);
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
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        
        AccountDBContext db = new AccountDBContext();
        ArrayList<Account> accounts = db.getAllaccount();
        
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String displayname = request.getParameter("displayname");
        String sdt = request.getParameter("sdt");
        
        Account a = new Account();
        a.setUsername(username);
        a.setPassword(password);
        a.setDisplayname(displayname);
        a.setSdt(Long.parseLong(sdt));
        boolean t = true;
        String thongbao="";
        for (Account acc : accounts) {// check xem acc (username) có trùng chưa
            if(a.getUsername().equals(acc.getUsername())){
                t=false;
            }
        }
        
        if(t){// check xong trả về thông báo
            db.insertAccount(a);
            thongbao = "Bạn đã Đăng Ký thành công!";
            request.setAttribute("thongbao", thongbao);
            request.getRequestDispatcher("view/login.jsp").forward(request, response);
        }else{
            thongbao = "Tên Đăng Nhập đã có người dùng!";
            request.setAttribute("thongbao", thongbao);
            request.getRequestDispatcher("view/registered.jsp").forward(request, response);
        }
        
        
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
