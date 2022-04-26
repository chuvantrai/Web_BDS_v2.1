<%-- 
    Document   : head
    Created on : Mar 9, 2022, 10:12:57 AM
    Author     : 03623
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="utf-8">
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        
        
        
        <c:if test = "${requestScope.titlethongtinbds != null}">
            <title>${requestScope.titlethongtinbds}</title>
        </c:if>
        <c:if test = "${requestScope.titletintuc != null}">
            <title>${requestScope.titletintuc}</title>
        </c:if>
        <c:if test = "${requestScope.tilealltintuc != null}">
            <title>${requestScope.tilealltintuc}</title>
        </c:if>
        <title>Website Bất Động Sản số 1 Nha Trang (batdongsan89)| Mua bán nhà đất Nha Trang Khánh Hòa #1, giá đất Nha Trang Khánh Hòa cập nhật liên tục</title>
        
        <!-- Favicons -->
        <link href="../img/logo/logo-nha-dat.png" rel="icon">
        <link href="img/logo/logo-nha-dat.png" rel="icon">
        <!-- css bootstrap 4 -->
            <link
              rel="stylesheet"
              href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css"
              integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn"
              crossorigin="anonymous"
            />
        <%@page import="model.Account"%>
        <%Account account = (Account)session.getAttribute("account");%>
        
        <!-- font chữ -->
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Cabin&display=swap');
        body{
        font-family: 'Cabin', sans-serif;
        }
    </style>
        

        