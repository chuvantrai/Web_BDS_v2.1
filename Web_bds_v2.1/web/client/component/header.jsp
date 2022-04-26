<%-- 
    Document   : header
    Created on : Mar 9, 2022, 9:57:54 AM
    Author     : 03623
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!-- navbar-->
<style>
    .css-3d-text {
            font-size: 30px;
            color: #3ba2eb;
            font-family: "Arial Black", Gadget, sans-serif;
            text-shadow: 0px 0px 0 rgb(17,120,193),
                -1px 0px  0 rgb(-19,84,157),
                -2px 0px 1px rgba(30,0,227,0.07),
                -2px 0px 1px rgba(30,0,227,0.5),
                0px 0px 1px rgba(30,0,227,.2);
        }
    @media only screen and (max-width: 900px) {/*chỉnh cho màn dưới 900px*/
        .css-3d-text {
            font-size: 20px;
            color: #3ba2eb;
            font-family: "Arial Black", Gadget, sans-serif;
            text-shadow: 0px 0px 0 rgb(17,120,193),
                -1px 0px  0 rgb(-19,84,157),
                -2px 0px 1px rgba(30,0,227,0.07),
                -2px 0px 1px rgba(30,0,227,0.5),
                0px 0px 1px rgba(30,0,227,.2);
        }
    }

</style>
        
      <nav class="navbar sticky-top navbar-expand-lg navbar-light " style="background-color:#e3f2fd;">
          <a style="font-size: 25px" class="navbar-brand" href="/home"><samp class="css-3d-text" style="">batdongsan89</samp></a>
      <button
        class="navbar-toggler"
        type="button"
        data-toggle="collapse"
        data-target="#navbarNavDropdown"
        aria-controls="navbarNavDropdown"
        aria-expanded="false"
        aria-label="Toggle navigation"
      >
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNavDropdown">
        <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
          <li class="nav-item ">
            <a class="nav-link" href="../../thongtinbds/tatca?Loaibds=&thutu=moinhat&Khuvucbds=&locGia=">Mua bán đất </a>
          </li>
          <li class="nav-item">
              <a class="nav-link" href="../../gioithieu">Giới Thiệu</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="../../tintuc/tatca">Tin Tức</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="../../yeucau">Tư Vấn/Hỗ Trợ</a>
          </li>
          <li class="nav-item dropdown">
            <a
              class="nav-link dropdown-toggle"
              href="#"
              id="navbarDropdownMenuLink"
              data-toggle="dropdown"
              aria-haspopup="true"
              aria-expanded="false"
            >
              Khu Vực BĐS
            </a>
            <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
              <a class="dropdown-item" href="../../thongtinbds/tatca?Loaibds=&thutu=moinhat&Khuvucbds=&locGia=">Tất cả</a>
              <a class="dropdown-item" href="../../thongtinbds/tatca?Loaibds=&thutu=moinhat&Khuvucbds=%23canlam&locGia=">Can Lâm</a>
              <a class="dropdown-item" href="../../thongtinbds/tatca?Loaibds=&thutu=moinhat&Khuvucbds=%23diemkhanh&locGia=">Diên Khánh</a>
              <a class="dropdown-item" href="../../thongtinbds/tatca?Loaibds=&thutu=moinhat&Khuvucbds=%23khanhvinh&locGia=">Khánh Vĩnh</a>
              <a class="dropdown-item" href="../../thongtinbds/tatca?Loaibds=&thutu=moinhat&Khuvucbds=%23nhatrang&locGia=">Nha Trang</a>
              <a class="dropdown-item" href="../../thongtinbds/tatca?Loaibds=&thutu=moinhat&Khuvucbds=%23camrang&locGia=">Cam Rang</a>
              <a class="dropdown-item" href="../../thongtinbds/tatca?Loaibds=&thutu=moinhat&Khuvucbds=%23ninhhoa&locGia=">Ninh Hòa</a>
              <a class="dropdown-item" href="../../thongtinbds/tatca?Loaibds=&thutu=moinhat&Khuvucbds=%23vanninh&locGia=">Vạn Ninh</a>
              <a class="dropdown-item" href="../../thongtinbds/tatca?Loaibds=&thutu=moinhat&Khuvucbds=%23khuvuckhac&locGia=">Khu Vực Khác</a>
            </div>
          </li>
          <li class="nav-item dropdown">
            <a
              class="nav-link dropdown-toggle"
              href="#"
              id="navbarDropdownMenuLink"
              data-toggle="dropdown"
              aria-haspopup="true"
              aria-expanded="false"
            >
              Loại BĐS
            </a>
            <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
              <a class="dropdown-item" href="../../thongtinbds/tatca?Loaibds=&thutu=moinhat&Khuvucbds=&locGia=">Tất cả</a>
              <a class="dropdown-item" href="../../thongtinbds/tatca?Loaibds=%23canho&thutu=moinhat&Khuvucbds=&locGia=">Căn hộ</a>
              <a class="dropdown-item" href="../../thongtinbds/tatca?Loaibds=%23datnen&thutu=moinhat&Khuvucbds=&locGia=">Đất nền</a>
              <a class="dropdown-item" href="../../thongtinbds/tatca?Loaibds=%23nhapho&thutu=moinhat&Khuvucbds=&locGia=">Nhà Phố</a>
              <a class="dropdown-item" href="../../thongtinbds/tatca?Loaibds=%23bietthu&thutu=moinhat&Khuvucbds=&locGia=">Biệt thự</a>
            </div>
          </li>
          <c:set var="num" value="/admin"/>
          <c:if test="${sessionScope.account.vaitro.vaitro==num}">
          <li class="nav-item dropdown">
              <a style="color: blue"
              class="nav-link dropdown-toggle"
              href="#"
              id="navbarDropdownMenuLink"
              data-toggle="dropdown"
              aria-haspopup="true"
              aria-expanded="false"
            >
                Quyền Admin
            </a>
            <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
              <a class="dropdown-item" href="../../listyeucau">Yêu cầu từ khách hàng</a>
              <a class="dropdown-item" href="../../thongtinbds/insert">Thêm bất động sản</a>
              <a class="dropdown-item" href="../../tintuc/insert">Thêm tin tức</a>
            </div>
          </li>
          </c:if>
        </ul>
<!--        <form class="form-inline my-2 my-lg-0">-->
           <%if(account == null){%>
               <button onclick="window.location.href='/registered'" class="btn btn-outline-secondary my-2 my-sm-0" type="submit">
                Đăng ký
               </button>
               <button onclick="window.location.href='/login'" class="btn btn-outline-secondary my-2 my-sm-0" type="submit">
                Đăng Nhập
               </button>
          <%}else{%>
               
          <h5> <samp style="color: rgb(75, 92, 205);">Xin Chào</samp> ${sessionScope.account.displayname}   </h5>
          <button onclick="window.location.href='/logout'" class="btn btn-outline-secondary my-2 my-sm-0" type="submit">
                  Đăng Xuất
               </button>
           <%}%>
      </div>
    </nav>

      
<!--    icon sđt báo giá  -->
<style>
    .lienhe1{
        position: fixed;
        bottom:66px;
        left: 8px;
        padding: 10px 15px 10px 15px;
        color: #fe9d15;
        transition: all ease 0.4s;
        background: #abdbe3;
        border-radius: 40px;
        z-index: 999;
        border: 1px solid #9999ff;
    }
    .lienhe2{
        position: fixed;
        bottom: 12px;
        left: 8px;
        padding: 10px 15px 10px 15px;
        
        transition: all ease 0.4s;
        background: #abdbe3;
        border-radius: 40px;
        z-index: 999;
        font-size: 17px;
        border: 1px solid #9999ff; 
    }
    @media only screen and (max-width: 900px) {/*chỉnh cho màn dưới 900px*/
    .lienhe1{
        position: fixed;
        bottom:50px;
        left: 8px;
        padding: 5px 5px 5px 5px;
        color: #fe9d15;
        transition: all ease 0.4s;
        background: #abdbe3;
        border-radius: 40px;
        z-index: 999;
    }
    .lienhe1 span{
        font-size: 10px;
    }
    .lienhe2{
        position: fixed;
        bottom: 12px;
        left: 8px;
        padding: 5px 5px 5px 5px;
        
        transition: all ease 0.4s;
        background: #abdbe3;
        border-radius: 40px;
        z-index: 999;
        font-size: 13px;
    }
  }
</style>
      <div
      class="topcontact lienhe1"
      style="">
      <b><a data-bs-toggle="modal"  data-bs-target="#exampleModal" style="color: #000">
          <span class="fa fa-comment-dots" aria-hidden="true"></span>
          <span class="text" style="color: #cc3300;"><i class="bi bi-telephone-fill"></i> 𝟎𝟖𝟕𝟗.𝟖𝟒𝟗.𝟖𝟖𝟖</span>
        </a></b>
    </div>
    <div
      class="topcontact lienhe2"
      style="">
      <b><a data-bs-toggle="modal"  data-bs-target="#exampleModal" style="color: #000" href="../../yeucau">
          <span class="fa fa-comment-dots" aria-hidden="true"></span>
          <span class="text" style="color: #0066ff;"><i class="bi bi-chat-left-dots-fill"></i> Nhận báo giá</span>
        </a></b>
    </div>




<style>
    #btn-back-to-top {
position: fixed;
bottom: 20px;
right: 20px;
display: none;
z-index: 999;
padding: 5px 8px 5px 8px;
}
</style>

<!-- Back to top button -->
<button type="button" class="btn btn-floating btn-lg" id="btn-back-to-top" style="background-color: #9999ff">
    <i class="bi bi-arrow-up-short" style="color: white;"></i>
</button>


<script>
    //Get the button
let mybutton = document.getElementById("btn-back-to-top");

// When the user scrolls down 20px from the top of the document, show the button
window.onscroll = function () {
scrollFunction();
};

function scrollFunction() {
if (
document.body.scrollTop > 20 ||
document.documentElement.scrollTop > 20
) {
mybutton.style.display = "block";
} else {
mybutton.style.display = "none";
}
}
// When the user clicks on the button, scroll to the top of the document
mybutton.addEventListener("click", backToTop);

function backToTop() {
document.body.scrollTop = 0;
document.documentElement.scrollTop = 0;
}
</script>






