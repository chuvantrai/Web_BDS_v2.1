<%-- 
    Document   : allthongtinbds
    Created on : Mar 13, 2022, 9:42:54 PM
    Author     : 03623
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="../client/component/head.jsp" %>
        
        <link href="../css/allthongtinbds.css" rel="stylesheet" type="text/css"/>
        <%
        
        String thutu1 = (String)request.getAttribute("thutu");
        String Loaibds = (String)request.getAttribute("Loaibds");
        String Khuvucbds = (String)request.getAttribute("Khuvucbds");
        String locGia = (String)request.getAttribute("locGia");
        if(thutu1 == null){
            thutu1 = "";
        }
        if(Loaibds == null){
            Loaibds = "";
        }
        if(Khuvucbds == null){
            Khuvucbds = "";
        }
        if(locGia == null){
            locGia = "";
        }
        %>
        <script>
            function submitData()
            {
                document.getElementById("searchFrm").submit();
            }

        </script>
        <!--        file js-->
        <script src="../js/allthongtinbds.js" type="text/javascript"></script>
    </head>
    <body>
        <%@include file="../client/component/header.jsp" %>
        
            <div class="wrapper">
                <form action="tatca" method="GET" id="searchFrm" onchange="submitData();">
        <div class="d-lg-flex align-items-lg-center pt-2">
            <div class="form-inline d-flex align-items-center my-2 mr-lg-2 radio bg-light border"> 
                <label class="options">Đất nền <input type="radio" name="Loaibds" value="#datnen" <%=(Loaibds.equals("#datnen"))?"checked":"" %>> <span class="checkmark"></span> </label> 
                <label class="options">Căn hộ<input type="radio" name="Loaibds" value="#canho" <%=(Loaibds.equals("#canho"))?"checked":"" %>> <span class="checkmark"></span> </label> 
                <label class="options">Nhà Phố <input type="radio" name="Loaibds" value="#nhapho" <%=(Loaibds.equals("#nhapho"))?"checked":"" %>> <span class="checkmark"></span> </label> 
                <label class="options">Biệt thự <input type="radio" name="Loaibds" value="#bietthu" <%=(Loaibds.equals("#bietthu"))?"checked":"" %>> <span class="checkmark"></span> </label> 
                <label class="options">Tất cả <input type="radio" name="Loaibds" value="" <%=(Loaibds.equals(""))?"checked":"" %>> <span class="checkmark"></span> </label> 
            </div>
            <div class="form-inline d-flex align-items-center my-2 checkbox bg-light border mx-lg-2"> 
                <label>Sắp xếp <i class="bi bi-filter-square" style="font-size: 1rem;">  </i> 
                </label>
                 
                <select name="thutu" id="country" class="bg-light">
                    <option value="moinhat" <%=(thutu1.equals("moinhat"))?"selected=\"selected\"":"" %>>Mới nhất</option>
                    <option value="cunhat" <%=(thutu1.equals("cunhat"))?"selected=\"selected\"":"" %>>Cũ-mới</option>
                    <option value="thap-cao" <%=(thutu1.equals("thap-cao"))?"selected=\"selected\"":""%>>Giá từ thấp tới cao</option>
                    <option value="cao-thap" <%=(thutu1.equals("cao-thap"))?"selected=\"selected\"":""%>>Giá từ cao tới thấp</option>
                </select> 
            </div>
                
<!--                <div class="form-inline  align-items-center my-2 checkbox bg-light border mx-lg-2 loc2"> 
                <label>Khu vực:</label>
                <select name="Khuvucbds" id="country" >
                    <option value="" <%=(Khuvucbds.equals(""))?"selected=\"selected\"":"" %>>--</option>
                    <option value="#nhatrang" <%=(Khuvucbds.equals("#nhatrang"))?"selected=\"selected\"":"" %>>Nha Trang</option>
                    <option value="#canlam" <%=(Khuvucbds.equals("#canlam"))?"selected=\"selected\"":"" %>>Cam Lâm</option>
                    <option value="#diemkhanh" <%=(Khuvucbds.equals("#diemkhanh"))?"selected=\"selected\"":"" %>>Diên Khánh</option>
                    <option value="#khanhvinh" <%=(Khuvucbds.equals("#khanhvinh"))?"selected=\"selected\"":"" %>>Khánh Vĩnh</option>
                    <option value="#camrang" <%=(Khuvucbds.equals("#camrang"))?"selected=\"selected\"":"" %>>Cam Ranh</option>
                    <option value="#ninhhoa" <%=(Khuvucbds.equals("#ninhhoa"))?"selected=\"selected\"":"" %>>Ninh Hòa</option>
                    <option value="#vanninh" <%=(Khuvucbds.equals("#vanninh"))?"selected=\"selected\"":"" %>>Vạn Ninh</option>
                    <option value="#khuvuckhac" <%=(Khuvucbds.equals("#khuvuckhac"))?"selected=\"selected\"":"" %>>Khu Vực Khác</option>
                </select>
                <label>Giá:</label>
                <select name="locGia" id="country">
                    <option value="" <%=(locGia.equals(""))?"selected=\"selected\"":"" %>>--</option>
                    <option value="<500" <%=(locGia.equals("<500"))?"selected=\"selected\"":"" %>>< 500 triệu</option>
                    <option value="500-800" <%=(locGia.equals("500-800"))?"selected=\"selected\"":"" %>>500-800tr</option>
                    <option value="800-1t" <%=(locGia.equals("800-1t"))?"selected=\"selected\"":"" %>>800tr-1tỷ</option>
                    <option value="1-3t" <%=(locGia.equals("1-3t"))?"selected=\"selected\"":"" %>>1 - 3 tỷ</option>
                    <option value="3-7t" <%=(locGia.equals("3-7t"))?"selected=\"selected\"":"" %>>3 - 7 tỷ</option>
                    <option value="7-10t" <%=(locGia.equals("7-10t"))?"selected=\"selected\"":"" %>>7 - 10 tỷ</option>
                    <option value="10-20t" <%=(locGia.equals("10-20t"))?"selected=\"selected\"":"" %>>10 - 20 tỷ</option>
                    <option value=">20t" <%=(locGia.equals(">20t"))?"selected=\"selected\"":"" %>>≥ 20 tỷ</option>
                </select>
            </div>-->
        </div>
        <div class="d-sm-flex align-items-sm-center pt-2 " style=" width: 80%;">
            <div id="paggertop" class="pagger col-lg-12" style="margin-left: 30%;clear: both;"> </div>
        </div>
<!--        <div class="filters"> <button class="btn btn-success" type="button" data-toggle="collapse" data-target="#mobile-filter" aria-expanded="true" aria-controls="mobile-filter">Filter<span class="px-1 fas fa-filter"></span></button> </div>-->
<!--        <div class="content py-md-0 py-3">-->
            <section id="sidebar">
                <div class="py-3">
                    <h5 class="font-weight-bold">Khu vực BDS</h5>
                    <ul class="list-group">
                    <label class="options">Tất cả <input type="radio" name="Khuvucbds" value="" <%=(Khuvucbds.equals(""))?"checked":"" %>> <span class="checkmark"></span> </label> 
                    <label class="options">Nha Trang <input type="radio" name="Khuvucbds" value="#nhatrang" <%=(Khuvucbds.equals("#nhatrang"))?"checked":"" %>> <span class="checkmark"></span> </label> 
                    <label class="options">Cam Lâm <input type="radio" name="Khuvucbds" value="#canlam" <%=(Khuvucbds.equals("#canlam"))?"checked":"" %>> <span class="checkmark"></span> </label> 
                    <label class="options">Diên Khánh <input type="radio" name="Khuvucbds" value="#diemkhanh" <%=(Khuvucbds.equals("#diemkhanh"))?"checked":"" %>> <span class="checkmark"></span> </label> 
                    <label class="options">Khánh Vĩnh <input type="radio" name="Khuvucbds" value="#khanhvinh" <%=(Khuvucbds.equals("#khanhvinh"))?"checked":"" %>> <span class="checkmark"></span> </label> 
                    <label class="options">Cam Ranh <input type="radio" name="Khuvucbds" value="#camrang" <%=(Khuvucbds.equals("#camrang"))?"checked":"" %>> <span class="checkmark"></span> </label> 
                    <label class="options">Ninh Hòa <input type="radio" name="Khuvucbds" value="#ninhhoa" <%=(Khuvucbds.equals("#ninhhoa"))?"checked":"" %>> <span class="checkmark"></span> </label> 
                    <label class="options">Vạn Ninh <input type="radio" name="Khuvucbds" value="#vanninh" <%=(Khuvucbds.equals("#vanninh"))?"checked":"" %>> <span class="checkmark"></span> </label> 
                    <label class="options">Khu Vực Khác <input type="radio" name="Khuvucbds" value="#khuvuckhac" <%=(Khuvucbds.equals("#khuvuckhac"))?"checked":"" %>> <span class="checkmark"></span> </label> 
                    </ul>
                </div>
                <div class="py-3">
                    <h5 class="font-weight-bold">Mức giá</h5>
                    <ul class="list-group">
                        <label class="options">Tất cả <input type="radio" name="locGia" value="" <%=(locGia.equals(""))?"checked":"" %>>  <span class="checkmark"></span> </label> 
                        <label class="options">< 500 triệu <input type="radio" name="locGia" value="<500" <%=(locGia.equals("<500"))?"checked":"" %>> <span class="checkmark"></span> </label> 
                        <label class="options">500 - 800 triệu <input type="radio" name="locGia" value="500-800" <%=(locGia.equals("500-800"))?"checked":"" %>> <span class="checkmark"></span> </label> 
                        <label class="options">800 triệu - 1 tỷ <input type="radio" name="locGia" value="800-1t" <%=(locGia.equals("800-1t"))?"checked":"" %>> <span class="checkmark"></span> </label> 
                        <label class="options">1 - 3 tỷ <input type="radio" name="locGia" value="1-3t" <%=(locGia.equals("1-3t"))?"checked":"" %>> <span class="checkmark"></span> </label> 
                        <label class="options">3 - 7 tỷ <input type="radio" name="locGia" value="3-7t" <%=(locGia.equals("3-7t"))?"checked":"" %>> <span class="checkmark"></span> </label> 
                        <label class="options">7 - 10 tỷ <input type="radio" name="locGia" value="7-10t" <%=(locGia.equals("7-10t"))?"checked":"" %>> <span class="checkmark"></span> </label> 
                        <label class="options">10 - 20 tỷ <input type="radio" name="locGia" value="10-20t" <%=(locGia.equals("10-20t"))?"checked":"" %>> <span class="checkmark"></span> </label> 
                        <label class="options">≥ 20 tỷ<input type="radio" name="locGia" value=">20t" <%=(locGia.equals(">20t"))?"checked":"" %>> <span class="checkmark"></span> </label> 
                        </ul>
                </div>
                
            </section> <!-- Products Section -->
            
            </form>
                        <div class="col-mb-12" >
            <section id="products">
                <div class="container py-3">
                    <div class="row">
                        <c:forEach items="${requestScope.thongtinbds}" var="t">
                                
                            <div class="col-lg-4  col-sm-10 offset-md-0 offset-sm-1 pt-md-0  sanpham1">
                                <div class="card"> <img class="card-img-top" src="../view/getImageAvarBDS.jsp?id=${t.idbds}" >
                                <div class="card-body" style="height: 185px;">
                                    <%for (int j = 0; j < 5; j++) {%> <i class="bi bi-star-fill" style="color: #feba45"></i><%}%>
                                    <span style="color: #aaa;float: right; font-size: 14px"><i class="bi bi-geo-alt-fill"></i> ${t.khuvucbds} </span>
                                    <h6 class="font-weight-bold pt-1">
                                        <div style="height: 58px;overflow:hidden;">
                                        #${t.idbds}.${t.tenbds}</div>
                                    </h6>
                                    <div class="d-flex align-items-center product"> <span class="fas fa-star"></span> <span class="fas fa-star"></span> <span class="fas fa-star"></span> <span class="fas fa-star"></span> <span class="far fa-star"></span> </div>
                                    <div class="d-flex align-items-center justify-content-between pt-3">
                                        <div class="d-flex flex-column">
                                            <div class="h6 font-weight-bold">${t.giachu} <i class="bi bi-cash-coin" style="color: #49be25"></i></div> 
                                            
                                        </div>
                                            <a href="../../Web_bds_v2.1/thongtinbds/detail?thongtinbdsid=${t.idbds}" style="text-decoration: none;"><div class="btn btn-outline-primary">Chi tiết</div></a>
                                            <c:set var="num" value="/admin"/>
                                            <c:if test="${sessionScope.account.vaitro.vaitro==num}">
                                            <a href="../../Web_bds_v2.1/thongtinbds/delete?thongtinbdsid=${t.idbds}" style="text-decoration: none;" class="btn btn-outline-danger">xóa</a>
                                            <a href="../../Web_bds_v2.1/thongtinbds/update?thongtinbdsid=${t.idbds}" style="text-decoration: none;" class="btn btn-outline-success">Sửa</a>
                                            </c:if>
                                    </div>
                                </div>
                            </div>
                        </div>
                        </c:forEach>
                    </div>
                </div>
            </section>
            </div>
<!--        </div>-->
    </div>
        
             
           
        <script> 
            pagger("paggertop",${requestScope.pageindex},${requestScope.totalpage},2);
//            pagger("paggerbot",${requestScope.pageindex},${requestScope.totalpage},2);
            
        </script>
        <%@include file="../client/component/footer_jsboostrap_icon.jsp" %>
    </body>
</html>
