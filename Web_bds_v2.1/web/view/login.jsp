<%-- 
    Document   : login
    Created on : Mar 1, 2022, 10:17:32 PM
    Author     : 03623
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Đăng Nhập</title>
        <!-- Favicons -->
        <link href="img/logo/logo-nha-dat.png" rel="icon">
        
        <link href="css/style_login.css" rel="stylesheet" type="text/css"/>
        <script src="js/login.js" type="text/javascript"></script>

        <!-- css bootstrap5 -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    </head>
    <body>
        
        <div class="container">
        <div class="row">
          <div class="col-sm-9 col-md-7 col-lg-5 mx-auto">
            <div class="card border-0 shadow rounded-3 my-5">
              <div class="card-body p-4 p-sm-5">
                <h5 class="card-title text-center mb-5 fw-light fs-5">Đăng Nhập</h5>
                <p class="thongbao1">${requestScope.thongbao}</p>
                <form action="login" method="POST"> 
                  <div class="form-floating mb-3">
                    <input type="text" name="username" class="form-control" id="floatingInput" placeholder="Username">
                    <label for="floatingInput">Tên Đăng Nhập</label>
                  </div>
                  <div class="form-floating mb-3">
                    <input type="password" name="password" class="form-control" id="floatingPassword" placeholder="Password">
                    <label for="floatingPassword">Mật Khẩu</label>
                  </div>
                  <div class="d-grid">
                        <button class="btn btn-primary btn-login text-uppercase fw-bold" type="submit">Đăng Nhập</button>
                  </div>
                  </form>
                  <hr class="my-4">
                  <form action="registered" method="GET"> 
                  <div class="d-grid mb-2">
                    <button class="btn btn-google btn-login text-uppercase fw-bold" type="submit">
                       Đăng Ký
                    </button>
                  </div>
                  </form>
                  <form action="home" method="GET"> 
                  <div class="d-grid">
                    <button class="btn btn-facebook btn-login text-uppercase fw-bold" type="submit">
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
