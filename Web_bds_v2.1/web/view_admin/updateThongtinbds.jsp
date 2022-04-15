<%-- 
    Document   : updateThongtinbds
    Created on : Mar 15, 2022, 11:25:38 PM
    Author     : 03623
--%>

<%@page import="model.Thongtinbds"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="../client/component/head.jsp" %>
        
        <%
        Thongtinbds thongtinbds1 = (Thongtinbds)request.getAttribute("thongtinbds");
        %>
        
        <script src="../js/insertThongtinbds.js" type="text/javascript"></script>
    </head>
    <body>
        <%@include file="../client/component/header.jsp" %>
        <div class="row" style="width: 101%; background-color: #c1c3c4;">
            <div class="col-md-7 shadow-none p-3 mb-5 bg-light rounded" style=" margin: 25px;">
                <h3>Chỉnh sửa sản Phẩm bất động sản</h3>
                <p>Lưu ý: Không đc để trống</p>
                <c:if test="${requestScope.thongbao2!=null}"> <p style="color: red">${requestScope.thongbao2}</p></c:if>
                <form action="update" method="POST" onsubmit = "return checkForm5()" enctype="multipart/form-data">
                <div class="form-row">
                    <div class="form-group col-md-6">
                        <label for="inputEmail4">Tên bất động sản</label>
                        <input type="text" class="form-control" id="inputEmail4" name="tenbds" value="${requestScope.thongtinbds.tenbds}">
                    </div>
                    <div class="form-group col-md-3">
                        <label for="inputPassword4">Loại bđs</label>
                        <select name="loaibds" id="country" class="bg-light">
                            <option value="#datnen" <%=(thongtinbds1.getLoaibds().equals("#datnen"))?"selected=\"selected\"":"" %>>Đất nền</option>
                            <option value="#canho" <%=(thongtinbds1.getLoaibds().equals("#canho"))?"selected=\"selected\"":"" %>>Căn hộ</option>
                            <option value="#nhapho" <%=(thongtinbds1.getLoaibds().equals("#nhapho"))?"selected=\"selected\"":"" %>>Nhà Phố</option>
                            <option value="#bietthu" <%=(thongtinbds1.getLoaibds().equals("#bietthu"))?"selected=\"selected\"":"" %>>Biệt thự</option>
                        </select>
                    </div>
                    <div class="form-group col-md-3">
                        <label for="inputPassword4">Khu vực </label>
                        <select name="khuvuc" id="country" class="bg-light">
                            <option value="#nhatrang" <%=(thongtinbds1.getKhuvucbds().equals("#nhatrang"))?"selected=\"selected\"":"" %>>Nha Trang</option>
                            <option value="#canlam" <%=(thongtinbds1.getKhuvucbds().equals("#canlam"))?"selected=\"selected\"":"" %>>Cam Lâm</option>
                            <option value="#diemkhanh" <%=(thongtinbds1.getKhuvucbds().equals("#diemkhanh"))?"selected=\"selected\"":"" %>>Diêm Khánh</option>
                            <option value="#khanhvinh" <%=(thongtinbds1.getKhuvucbds().equals("#khanhvinh"))?"selected=\"selected\"":"" %>>Khánh Vĩnh</option>
                            <option value="#camranh" <%=(thongtinbds1.getKhuvucbds().equals("#camranh"))?"selected=\"selected\"":"" %>>Cam Rang</option>
                            <option value="#ninhhoa" <%=(thongtinbds1.getKhuvucbds().equals("#ninhhoa"))?"selected=\"selected\"":"" %>>Ninh Hòa</option>
                            <option value="#vanninh" <%=(thongtinbds1.getKhuvucbds().equals("#vanninh"))?"selected=\"selected\"":"" %>>Vạn Ninh</option>
                            <option value="#khuvuckhac" <%=(thongtinbds1.getKhuvucbds().equals("#khuvuckhac"))?"selected=\"selected\"":"" %>>Khu Vực Khác</option>
                        </select>
                    </div>
                </div>
                <div class="form-group">
                    <label for="exampleFormControlTextarea1">Thông tin sản phẩm bất động sản</label>
                        <textarea class="form-control" id="exampleFormControlTextarea1" rows="5" name="thongtin">${requestScope.thongtinbds.thongtinbds}</textarea>
                </div>
                <div class="form-group col-md-12">
                    <label for="inputEmail4">*Giá bằng chữ</label>
                    <input type="text" class="form-control" id="inputEmail4" name="giachu" value="${requestScope.thongtinbds.giachu}">
                </div>
                <div class="form-group col-md-12">
                    <label for="inputEmail4">*Giá bằng số</label>
                    <input type="number" class="form-control" id="inputEmail4" name="giaso" value="${requestScope.thongtinbds.giaso}">
                </div>
                <div class="form-group col-md-12">
                    <label for="inputEmail4">Link google map <a href="https://themevi.com/cach-lay-iframe-google-maps-de-chen-vao-website/#gsc.tab=0"> Cách lấy link gg map</a> </label>
                    <textarea class="form-control"  rows="2" name="ggmap">${requestScope.thongtinbds.ggmap}</textarea>
                 
                </div>
                <div class="form-group col-md-12">
                    <label for="inputEmail4">Ảnh chính của bđs</label><br>
                    <img src="../view/getImageAvarBDS.jsp?id=${requestScope.thongtinbds.idbds}" class="d-block w-50"/>
                    <input type="file" name="img2" accept=".jpg, .jpeg, .png" placeholder="Image">
                </div>
                <div style="padding-bottom: 25px;"> <button type="submit" class="btn btn-primary btn-lg">Lưu thay đổi</button></div>
                <input type="text" name="idbds" value="${requestScope.thongtinbds.idbds}" style="display: none">
                <!-- thư viện ckeditor 4 -->
                <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
                <script src="//cdn.ckeditor.com/4.18.0/basic/ckeditor.js"></script>
                <script>
                CKEDITOR.replace( 'thongtin' );//name textarea
                </script>
                <!--.... -->
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
