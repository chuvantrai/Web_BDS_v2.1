<%-- 
    Document   : insertTintuc
    Created on : Mar 15, 2022, 4:02:57 PM
    Author     : 03623
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="../client/component/head.jsp" %>

        <script src="../js/insertTintuc.js" type="text/javascript"></script>
    </head>
    <body>
        <%@include file="../client/component/header.jsp" %>
        <div class="row" style="width: 101%; background-color: #c1c3c4;">
            <div class="col-md-7 shadow-none p-3 mb-5 bg-light rounded" style=" margin: 25px;">
                <h3>Thêm Tin Tức mới vào trang web</h3>
                <p>Lưu ý: Không đc để trống</p>
                <c:if test="${requestScope.thongbao2!=null}"> <p style="color: red">${requestScope.thongbao2}</p></c:if>
                <form action="insert" method="POST" onsubmit = "return checkForm3()" enctype="multipart/form-data">
                <div class="form-row">
                    <div class="form-group col-md-6">
                        <label for="inputEmail4">Tiêu đề tin tức</label>
                        <input type="text" class="form-control" id="inputEmail4" name="tieude">
                    </div>
                    <div class="form-group col-md-6">
                        <label for="inputPassword4">Ngày của tin tức</label>
                        <input type="date" class="form-control" id="inputPassword4" name="ngay">
                    </div>
                </div>
                <div class="form-group">
                    <label for="exampleFormControlTextarea1">Nội dung tin tức (xuống dòng thêm <samp style="color: #50bedb">&lt;br&gt;</samp>)<br>
                        Thêm ảnh vào giữa đoạn văn VD: <br>
                        Cách 1: <samp style="color: #50bedb">&lt;img src="https://drive.google.com/uc?export=view&id=<samp style="color: red">ABC</samp>"&gt;</samp> Thay id link ảnh driver vào chữ đỏ
                        <br>
                        <samp style="color: #50bedb">https://drive.google.com/file/d/<samp style="color: red">ABC</samp>/view</samp>  Chữ đỏ là id của link ảnh driver
                        <br>
                        Cách 2: <samp style="color: #50bedb">&lt;img src="<samp style="color: red">địa chỉ liên kết của ảnh</samp>"&gt;</samp> Thay địa chỉ liên kết của ảnh vào chữ đỏ
                    </label>
                        <textarea class="form-control" id="exampleFormControlTextarea1" rows="5" name="noidung"></textarea>
                </div>
                <div class="form-group col-md-12">
                    <label for="inputEmail4">Ảnh chính của tin tức </label><br>
                    <input type="file" name="img" accept=".jpg, .jpeg, .png" placeholder="Image"/>
                </div>
                <div style="padding-bottom: 25px;"> <button type="submit" class="btn btn-primary btn-lg">Thêm</button></div>
                </form>
            </div>
            <div class="col-6 col-md-4 shadow-none p-3 mb-5 bg-light rounded" style=" margin: 25px;">
                <h3>Thông tin liên hệ nhanh:</h3>
                <p>Nếu quý khách cần thông tin nhanh nhất, hãy liên hệ trực tiếp với Chu Văn Ngọc:</p>
                <div class="">

                    <!-- Links -->
                    <hr class="deep-purple accent-2 mb-4 mt-0 d-inline-block mx-auto" style="width: 60px;">
                    <p style="font-size: 20px;">
                        <i class="bi bi-geo-alt-fill" style="font-size: 2rem; color: cornflowerblue;"></i>NV27,Khu đô thị Phước Long, Nha Trang</p>
                    <p style="font-size: 20px;">
                        <i class="bi bi-telephone-fill" style="font-size: 2rem; color: cornflowerblue;"></i> 𝟎𝟖𝟕𝟗.𝟖𝟒𝟗.𝟖𝟖𝟖</p>
                    <p style="font-size: 20px;">
                        <i class="bi bi-envelope-fill" style="font-size: 2rem; color: cornflowerblue;"></i>chuvanngoc1@gmail.com</p>
                    <p >
                        <a href="https://www.facebook.com/profile.php?id=100038788150960" style="font-size: 20px;"><i class="bi bi-facebook" style="font-size: 2rem; color: cornflowerblue;"></i>Facebook</a></p>

                </div>
            </div>
        </div>

        <%@include file="../client/component/footer_jsboostrap_icon.jsp" %>
    </body>
</html>
