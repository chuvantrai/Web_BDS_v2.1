<%-- 
    Document   : gioithieu
    Created on : Mar 9, 2022, 10:09:58 AM
    Author     : 03623
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <%@include file="../client/component/head.jsp" %>
    </head>
    <body>
        <%@include file="../client/component/header.jsp" %>
        <style>
            .carousel-inner img{
                width: 80%;
            }
            .news3{
                font-size: 20px;
            }
            .news4{
                font-size: 40px;
            }
            h2{
                color: blueviolet;
            }
        </style>
        
        <c:forEach items="${requestScope.gioithieunvs}" var="g">
      <div class=" row news0">
      <div class="col-lg-12 mb-3  news1">
        <h2>Giới thiệu</h2>
      </div>
      <div class="col-lg-4 mb-3 news2">
        <div class="carousel-inner">
            <img src="img/gioithieu/gioithieu1.jpg" class="d-block" alt="...">
            <div class="carousel-caption d-none d-md-block">
            </div>
          </div>
          
      </div>
          <div class="col-lg-8 mb-3 news3"> 
              Về tôi:<span class="news4">${g.ten}</span>
              <p>${g.chitiet} </p>
      </div> 
      
      </div>
        </c:forEach>
        <%@include file="../client/component/footer_jsboostrap_icon.jsp" %>
    </body>
</html>
