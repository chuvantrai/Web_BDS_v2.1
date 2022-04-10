<%-- 
    Document   : alltintuc
    Created on : Mar 13, 2022, 12:06:29 AM
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
<script src="../js/alltintuc.js" type="text/javascript"></script>

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
                    <c:forEach items="${requestScope.tintuc}" var="t">
                        <div class="row p-2 bg-white border rounded">
                            <div class="col-md-3 mt-1"><img class="img-fluid img-responsive rounded product-image" src="../view/getImageTintuc.jsp?id=${t.id}" style="height: 100%;"></div>
                            <div class="col-md-6 mt-1">
                                <h5>${t.tieude}</h5>
                                <div class="d-flex flex-row">
                                    <div class="ratings mr-2"><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i></div>
                                </div>

                                <p class="text-justify text-truncate para mb-0"><ion-icon name="calendar-outline"></ion-icon>  ${t.ngay}<br><br></p>
                            </div>
                            <div class="align-items-center align-content-center col-md-3 border-left mt-1">

                                <h6 style="color: red;">Đang HOT!</h6>
                                <div class="d-flex flex-column mt-4"><a class="btn btn-outline-primary" href="detail?tintucid=${t.id}" role="button">Xem ngay</a></div>
                                <c:set var="num" value="/admin"/>
                                <c:if test="${sessionScope.account.vaitro.vaitro==num}"> 
                                    <div class="mt-4">
                                        <a class="btn btn-outline-success" href="update?tintucid=${t.id}" role="button">Sửa</a>
                                        <a class="btn btn-outline-danger" href="delete?tintucid=${t.id}" role="button">Xóa tin</a>
                                    </div>
                                </c:if>
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
