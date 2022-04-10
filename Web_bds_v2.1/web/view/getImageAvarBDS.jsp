
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
        Thongtinbds anh1 = db.getThongtinbdstheoid(Integer.parseInt(id));
            byte byteArray[] = anh1.getImgavar().getBytes(1, (int) anh1.getImgavar().length());
            response.setContentType("image/gif");
            OutputStream os = response.getOutputStream();
            os.write(byteArray);
            os.flush();
            os.close();
    } catch (Exception e) {
        out.println(e);
    }
%>
