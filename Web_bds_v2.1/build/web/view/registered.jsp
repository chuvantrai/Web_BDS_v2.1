<%-- 
    Document   : registered
    Created on : Mar 1, 2022, 10:58:33 PM
    Author     : 03623
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Đăng Ký</title>
        <!-- Favicons -->
        <link href="img/logo/logo-nha-dat.png" rel="icon">
        
        <link href="css/style_login.css" rel="stylesheet" type="text/css"/>
        <script src="js/login.js" type="text/javascript"></script>
        <!-- css bootstrap5 -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    </head>
    <body>
<!--        <form action="registered" method="POST" onsubmit = "return checkForm()">
            Tên Đăng Nhập: <input type="text" name="username" maxlength="10" id="dk1"/>(ít nhất 5 kí tự và tối đa 10 kí tự)
            <br/>
            Mật Khẩu: <input type="text" name="password" maxlength="10" id="dk2"/>(ít nhất 5 kí tự và tối đa 10 kí tự)
            <br/>
            Tên người dùng: <input type="text" name="displayname" maxlength="16" id="dk3"/>(ít nhất 5 kí tự và tối đa 16 kí tự)
            <br/>
            <input type="submit" value="Đăng Ký" id="dk5" />
        </form>
            <br/>
            <p>${requestScope.thongbao}</p>-->
         
            <div class="container">
        <div class="row">
          <div class="col-sm-9 col-md-7 col-lg-5 mx-auto">
            <div class="card border-0 shadow rounded-3 my-5">
              <div class="card-body p-4 p-sm-5">
                <h5 class="card-title text-center mb-5 fw-light fs-5">Đăng Ký Tài Khoản</h5>
                <p class="thongbao1">${requestScope.thongbao}</p>
                <form action="registered" method="POST" onsubmit = "return checkForm()"> 
                  <div class="form-floating mb-3">
                    <input type="text" name="username" class="form-control dk1" id="floatingInput" placeholder="Username" maxlength="10">
                    <label for="floatingInput">Tên đăng nhập</label>
                  </div>
                    <p class="thongbao2">(ít nhất 5 kí tự và tối đa 10 kí tự)</p>
                  <div class="form-floating mb-3">
                    <input type="text" name="password" class="form-control dk2" id="floatingPassword" placeholder="Password" maxlength="10">
                    <label for="floatingInput">Mật khẩu</label>
                  </div>
                    <p class="thongbao2">(ít nhất 5 kí tự và tối đa 10 kí tự)</p>
                  <div class="form-floating mb-3">
                    <input type="text" name="displayname" class="form-control dk3" id="floatingInput" placeholder="Displayname"maxlength="16">
                    <label for="floatingInput">Tên người dùng</label>
                  </div>
                    <p class="thongbao2">(ít nhất 5 kí tự và tối đa 16 kí tự)</p>
                  <div class="form-floating mb-3">
                      <input type="number" name="sdt" class="form-control dk4" id="floatingInput" placeholder="Sdt" maxlength="10">
                    <label for="floatingInput">Số điện thoại</label>
                  </div>
                    <p class="thongbao2">(nhập vào 10 chữ số)</p>
                  <div class="d-grid">
                        <button class="btn btn-primary btn-login text-uppercase fw-bold" type="submit">Đăng Ký</button>
                  </div>
                  </form>
                  <hr class="my-4">
                  <form action="login" method="GET"> 
                  <div class="d-grid mb-2">
                    <button class="btn btn-google btn-login text-uppercase fw-bold" type="submit">
                       Đăng Nhập
                    </button>
                  </div>
                  </form>
                  <form action="home"> 
                  <div class="d-grid">
                    <button class="btn btn-facebook btn-login text-uppercase fw-bold" type="submit" onclick="DN1()">
                       Về trang chủ
                    </button>
                  </div>
                  </form>
              </div>
            </div>
          </div>
        </div>
      </div>
    </body>
</html>
