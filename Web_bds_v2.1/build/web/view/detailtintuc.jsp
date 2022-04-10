<%-- 
    Document   : detail_tintuc
    Created on : Mar 10, 2022, 12:13:28 AM
    Author     : 03623
--%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.Tintuc"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <%@include file="../client/component/head.jsp" %>
        
        <% Tintuc tintuc = (Tintuc)request.getAttribute("tintuc");
            ArrayList<Tintuc> tintucs = (ArrayList<Tintuc>)request.getAttribute("tintucs");
            int index = 0;
        %>
    </head>
    <body>
        <%@include file="../client/component/header.jsp" %>
        
        <style>
       .fakeimg {
      height: 200px;
      background: #aaa;
    }
    .chitiet img{
        width: 100%;
    }
    .chitiet2 img{
        width: 100%;
    }
   </style>
      <div class="container" style="margin-top:30px">
        <div class="row">
            <div class="col-sm-8 chitiet">
                <h2>${requestScope.tintuc.tieude}</h2>
                <p>ngày: ${requestScope.tintuc.ngay}</p>
                <img src="../view/getImageTintuc.jsp?id=${requestScope.tintuc.id}" alt="">
                <br><br>
                <p>${requestScope.tintuc.noidung}</p>
              </div>

          <div class="col-sm-4 shadow-none p-3 mb-5 bg-light rounded chitiet2">
            <h2>Các tin đang hot</h2>
            <%for (Tintuc t : tintucs) {
                if(t.getId()!=tintuc.getId()&&index<3){
                    index +=1;%>
                    <div class="shadow-sm p-3 mb-5 bg-white rounded">
                    <a href="detail?tintucid=<%=t.getId()%>" class="text-decoration-none">
                        <img src="../view/getImageTintuc.jsp?id=<%=t.getId()%>" alt="">
                        <h5><%=t.getTieude()%></h5>
                    <p><ion-icon name="calendar-outline"></ion-icon><%=t.getNgay()%></p>
                    </a>
                </div>
            <%}}%>
          </div>
          
        </div>
      </div>
        
        <%@include file="../client/component/footer_jsboostrap_icon.jsp" %>
    </body>
</html>
