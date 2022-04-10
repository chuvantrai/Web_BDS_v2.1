<%-- 
    Document   : listyeucau
    Created on : Mar 15, 2022, 12:24:03 AM
    Author     : 03623
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="../client/component/head.jsp" %>
<!--        file js-->
<script src="js/listyeucau.js" type="text/javascript"></script>
        
                <style>
            body {
                background: #eee
            }

            .ratings i {
                font-size: 16px;
                color: red
            }

            .strike-text {
                color: red;
                text-decoration: line-through
            }

            .product-image {
                width: 100%
            }

            .dot {
                height: 7px;
                width: 7px;
                margin-left: 6px;
                margin-right: 6px;
                margin-top: 3px;
                background-color: blue;
                border-radius: 50%;
                display: inline-block
            }

            .spec-1 {
                color: #938787;
                font-size: 15px
            }

            h5 {
                font-weight: 400
            }

            .para {
                font-size: 16px
            }
        </style>
    </head>
    <body>
        <%@include file="../client/component/header.jsp" %>
        
        <div class="container mt-5 mb-5">
            <div class="d-flex justify-content-center row">
                <div class="col-md-10">
                    <div id="paggertop" class="pagger"> </div><br>
                    <c:if test="${requestScope.thongbao2!=null}"> <p style="color: red">${requestScope.thongbao4}</p></c:if>
                    <c:forEach items="${requestScope.yeucaus}" var="t"> 
                        <div class="row p-2 bg-white border rounded">
                            <div class="col-md-10 mt-1">
                                <h5> <span style="color: #50bedb; font-size: 15px;">Khách hàng: &nbsp;</span>${t.hoten}</h5>
                                
                                <p> <span style="color: #50bedb; font-size: 15px;">SĐT: &nbsp;</span> ${t.sdt}
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<ion-icon name="calendar-outline"></ion-icon>  ${t.date}
                                </p>

                                <p class="">${t.noidung}</p>
                            </div>
                            <div class="align-items-center align-content-center col-md-2 border-left mt-1" style="float: right;">
                                <div class="d-flex flex-column mt-4"><a class="btn btn-outline-primary" href="yeucau/delete?idyc=${t.idyc}" role="button">Xóa yêu cầu</a></div>
                            </div>
                        </div>

                   </c:forEach>
                   
                    <br>
                    <div id="paggerbot" class="pagger"> </div>
                </div>
            </div>
        </div>
        
        
        
        <script> 
            pagger("paggertop",${requestScope.pageindex},${requestScope.totalpage},2);
            pagger("paggerbot",${requestScope.pageindex},${requestScope.totalpage},2);
//            pagger3("pagger3");
        </script>
        <%@include file="../client/component/footer_jsboostrap_icon.jsp" %>
    </body>
</html>
