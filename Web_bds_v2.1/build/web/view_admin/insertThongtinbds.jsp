<%-- 
    Document   : insertThongtinbds
    Created on : Mar 15, 2022, 9:40:39 PM
    Author     : 03623
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="../client/component/head.jsp" %>

        <script src="../js/insertThongtinbds.js" type="text/javascript"></script>
    </head>
    <body>
        <%@include file="../client/component/header.jsp" %>
        <div class="row" style="width: 101%; background-color: #c1c3c4;">
            <div class="col-md-7 shadow-none p-3 mb-5 bg-light rounded" style=" margin: 25px;">
                <h3>Thêm sản Phẩm bất động sản mới vào trang web</h3>
                <p>Lưu ý: Không đc để trống</p>
                <c:if test="${requestScope.thongbao2!=null}"> <p style="color: red">${requestScope.thongbao2}</p></c:if>
                <form action="insert" method="POST" onsubmit = "return checkForm4()" enctype="multipart/form-data">
                <div class="form-row">
                    <div class="form-group col-md-6">
                        <label for="inputEmail4">Tên bất động sản</label>
                        <input type="text" class="form-control" id="inputEmail4" name="tenbds">
                    </div>
                    <div class="form-group col-md-3">
                        <label for="inputPassword4">Loại bđs</label>
                        <select name="loaibds" id="country" class="bg-light">
                            <option value="#datnen" >Đất nền</option>
                            <option value="#canho" >Căn hộ</option>
                            <option value="#nhapho" >Nhà Phố</option>
                            <option value="#bietthu" >Biệt thự</option>
                        </select>
                    </div>
                    <div class="form-group col-md-3">
                        <label for="inputPassword4">Khu vực </label>
                        <select name="khuvuc" id="country" class="bg-light">
                            <option value="#nhatrang" >Nha Trang</option>
                            <option value="#canlam" >Cam Lâm</option>
                            <option value="#diemkhanh" >Diêm Khánh</option>
                            <option value="#khanhvinh" >Khánh Vĩnh</option>
                            <option value="#camranh" >Cam Rang</option>
                            <option value="#khánhon" >Khánh Sơn</option>
                            <option value="#ninhhoa" >Ninh Hòa</option>
                            <option value="#vanninh" >Vạn Ninh</option>
                            <option value="#khuvuckhac" >Khu Vực Khác</option>
                        </select>
                    </div>
                </div>
                <div class="form-group">
                    <label for="exampleFormControlTextarea1">Thông tin sản phẩm bất động sản (xuống dòng thêm <samp style="color: #50bedb">&lt;br&gt;</samp>)</label>
                        <textarea class="form-control" id="exampleFormControlTextarea1" rows="5" name="thongtin"></textarea>
                </div>
                <div class="form-group col-md-12">
                    <label for="inputEmail4">*Giá bằng chữ</label>
                    <input type="text" class="form-control" id="inputEmail4" name="giachu">
                </div>
                <div class="form-group col-md-12">
                    <label for="inputEmail4">*Giá bằng số</label>
                    <input type="number" class="form-control" id="inputEmail4" name="giaso">
                </div>   
                <div class="form-group col-md-12">
                    <label for="inputEmail4">Link google map (nếu có)<a href="https://themevi.com/cach-lay-iframe-google-maps-de-chen-vao-website/#gsc.tab=0"> Cách lấy link gg map</a> </label>
                    <input type="text" class="form-control" id="inputEmail4" name="ggmap">
                </div>
                <div class="form-group col-md-12">
                    <label for="inputEmail4">Ảnh chính của bđs </label><br>
                    <input type="file" name="img" accept=".jpg, .jpeg, .png" placeholder="Image">
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
