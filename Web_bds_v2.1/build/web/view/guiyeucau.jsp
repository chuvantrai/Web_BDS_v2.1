<%-- 
    Document   : guiyeucau
    Created on : Mar 14, 2022, 4:16:57 PM
    Author     : 03623
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="../client/component/head.jsp" %>

        <script src="js/yeucau.js" type="text/javascript"></script>
    </head>
    <body>
        <%@include file="../client/component/header.jsp" %>
        
        
        <div class="row" style="width: 101%; background-color: #c1c3c4;">
            <div class="col-md-7 shadow-none p-3 mb-5 bg-light rounded" style=" margin: 25px;">
                <h3>LIÊN HỆ CHU VĂN NGỌC</h3>
                <p>Liên hệ ngay với Chu Văn Ngọc - Chuyên viên tư vấn Bất Động Sản hàng đầu Nha Trang - chuyên nghiệp - nhanh chóng - chính xác.</p>
                <c:if test="${requestScope.thongbao2!=null}"> <p style="color: red">${requestScope.thongbao2}</p></c:if>
                <form action="yeucau" method="POST" onsubmit = "return checkForm2()">
                <div class="form-row">
                    <div class="form-group col-md-6">
                        <label for="inputEmail4">* Họ và tên</label>
                        <input type="name" class="form-control" id="inputEmail4" name="hoten" value="${sessionScope.account.displayname}">
                    </div>
                    <div class="form-group col-md-6">
                        <label for="inputPassword4">* Điện thoại</label>
                        <input type="number" class="form-control" id="inputPassword4" name="sdt" maxlength="11" value="${sessionScope.account.sdt}">
                    </div>
                </div>
                <div class="form-group">
                    <label for="exampleFormControlTextarea1">Anh/chị đang quan tâm sản phẩm nào?</label>
                    <textarea class="form-control" id="exampleFormControlTextarea1" rows="5" name="noidung"></textarea>
                </div>
                    <div style="padding-bottom: 25px;"><button type="submit" class="btn btn-primary btn-lg">Gửi Yêu cầu</button> </div>
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
