<%-- 
    Document   : head
    Created on : Mar 9, 2022, 10:12:57 AM
    Author     : 03623
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="utf-8">
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        
        <title>Bất Động Sản Nha Trang (NGOCTRAI92)</title>
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
        

        