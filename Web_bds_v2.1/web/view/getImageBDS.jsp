<%-- 
    Document   : getImageBDS
    Created on : Apr 8, 2022, 1:04:45 PM
    Author     : 03623
--%>

<%@page import="model.Imgbds"%>
<%@page import="model.Thongtinbds"%>
<%@page import="dal.ThongtinbdsDBContext"%>
<%@page import="model.Tintuc"%>
<%@page import="dal.TintucDBContext"%>
<%@page import="dal.DBContext"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.Blob"%>
<%@page import="java.io.OutputStream"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
    String id = request.getParameter("id");
//    String id = "1";
    try {
        ThongtinbdsDBContext  db = new ThongtinbdsDBContext();
        Imgbds anh1 = db.getImgbdstheoidimg(Integer.parseInt(id));
            byte byteArray[] = anh1.getImgbds().getBytes(1, (int) anh1.getImgbds().length());
            response.setContentType("image/gif");
            OutputStream os = response.getOutputStream();
            os.write(byteArray);
            os.flush();
            os.close();
    } catch (Exception e) {
        out.println(e);
    }
%>
