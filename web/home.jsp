<%-- 
    Document   : home
    Created on : Jun 28, 2024, 1:11:52 PM
    Author     : trung
--%>

<%@page import="java.util.List"%>
<%@page import="dto.Meal"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="header.jsp" %>
<div id="carouselBanner" class="carousel slide " data-mdb-ride="carousel" data-mdb-carousel-init>
    <div class="carousel-inner">
        <div class="carousel-item active">
            <img src="img/34714452 (1).jpg" class="d-block w-100" alt=""/>
        </div>
        <div class="carousel-item">
            <img src="img/34714452 (2).jpg" class="d-block w-100" alt=""/>
        </div>
        <div class="carousel-item">
            <img src="img/34714452 (3).jpg" class="d-block w-100" alt=""/>
        </div>
    </div>
    <button
        class="carousel-control-prev"
        type="button"
        tabindex="0"
        data-mdb-slide="prev"
        data-mdb-target="#carouselBanner"
        >
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    </button>
    <button
        class="carousel-control-next"
        type="button"
        tabindex="0"
        data-mdb-slide="next"
        data-mdb-target="#carouselBanner"
        >
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
    </button>
</div>
<%
    List<Meal> list1 = (List<Meal>) request.getAttribute("list1");
%>    
<h3 style="text-align: center;" class="my-5">
    <i class="fas fa-utensils" style="font-size: 30px; margin-bottom: 5px;"></i>
    Đồ mặn 
</h3>
<section class="listmeal">

        <div class="wrapper wrapper-list">
            <i id="left" class="fa-solid fa-angle-left"></i>
            <ul class="carousel carousel-list">
                <li class="card">
                    <div class="img"><img src="img/Logo (1).png" alt="img"></div>
                    <h2>Blanche Pearson</h2>
                    <span>Sales Manager</span>
                </li>
                <li class="card">
                    <div class="img"><img src="images/img-2.jpg" alt="img"></div>
                    <h2>Joenas Brauers</h2>
                    <span>Web Developer</span>
                </li>
                <li class="card">
                    <div class="img"><img src="images/img-3.jpg" alt="img" ></div>
                    <h2>Lariach French</h2>
                    <span>Online Teacher</span>
                </li>
                <li class="card">
                    <div class="img"><img src="images/img-4.jpg" alt="img"></div>
                    <h2>James Khosravi</h2>
                    <span>Freelancer</span>
                </li>
                <li class="card">
                    <div class="img"><img src="images/img-5.jpg" alt="img"></div>
                    <h2>Kristina Zasiadko</h2>
                    <span>Bank Manager</span>
                </li>
                <li class="card">
                    <div class="img"><img src="images/img-6.jpg" alt="img" ></div>
                    <h2>Donald Horton</h2>
                    <span>App Designer</span>
                </li>
            </ul>
            <i id="right" class="fa-solid fa-angle-right"></i>
        </div>
</section>

<%
    List<Meal> list2 = (List<Meal>) request.getAttribute("list2");
%>    
<h3 style="text-align: center;" class="my-5">
    <i class="fas fa-carrot" style="font-size: 30px; margin-bottom: 5px;"></i>
    Đồ chay
</h3>
<section class="listmeal">

<!--
        <div class="wrapper">
            <i id="left" class="fa-solid fa-angle-left"></i>
            <ul class="carousel">
                <li class="card">
                    <div class="img"><img src="img/Logo (1).png" alt="img" draggable="false"></div>
                    <h2>Blanche Pearson</h2>
                    <span>Sales Manager</span>
                </li>
                <li class="card">
                    <div class="img"><img src="images/img-2.jpg" alt="img" draggable="false"></div>
                    <h2>Joenas Brauers</h2>
                    <span>Web Developer</span>
                </li>
                <li class="card">
                    <div class="img"><img src="images/img-3.jpg" alt="img" draggable="false"></div>
                    <h2>Lariach French</h2>
                    <span>Online Teacher</span>
                </li>
                <li class="card">
                    <div class="img"><img src="images/img-4.jpg" alt="img" draggable="false"></div>
                    <h2>James Khosravi</h2>
                    <span>Freelancer</span>
                </li>
                <li class="card">
                    <div class="img"><img src="images/img-5.jpg" alt="img" draggable="false"></div>
                    <h2>Kristina Zasiadko</h2>
                    <span>Bank Manager</span>
                </li>
                <li class="card">
                    <div class="img"><img src="images/img-6.jpg" alt="img" draggable="false"></div>
                    <h2>Donald Horton</h2>
                    <span>App Designer</span>
                </li>
            </ul>
            <i id="right" class="fa-solid fa-angle-right"></i>
        </div>-->
</section>

<%
    List<Meal> list3 = (List<Meal>) request.getAttribute("list3");
%>    
<h3 style="text-align: center;" class="my-5">
    <i class="fas fa-wine-bottle" style="font-size: 30px; margin-bottom: 5px;"></i>
    Đồ uống 
</h3>
<section class="listmeal">

<!--        <div class="wrapper">
            <i id="left" class="fa-solid fa-angle-left"></i>
            <ul class="carousel">
                <li class="card">
                    <div class="img"><img src="img/Logo (1).png" alt="img" draggable="false"></div>
                    <h2>Blanche Pearson</h2>
                    <span>Sales Manager</span>
                </li>
                <li class="card">
                    <div class="img"><img src="images/img-2.jpg" alt="img" draggable="false"></div>
                    <h2>Joenas Brauers</h2>
                    <span>Web Developer</span>
                </li>
                <li class="card">
                    <div class="img"><img src="images/img-3.jpg" alt="img" draggable="false"></div>
                    <h2>Lariach French</h2>
                    <span>Online Teacher</span>
                </li>
                <li class="card">
                    <div class="img"><img src="images/img-4.jpg" alt="img" draggable="false"></div>
                    <h2>James Khosravi</h2>
                    <span>Freelancer</span>
                </li>
                <li class="card">
                    <div class="img"><img src="images/img-5.jpg" alt="img" draggable="false"></div>
                    <h2>Kristina Zasiadko</h2>
                    <span>Bank Manager</span>
                </li>
                <li class="card">
                    <div class="img"><img src="images/img-6.jpg" alt="img" draggable="false"></div>
                    <h2>Donald Horton</h2>
                    <span>App Designer</span>
                </li>
            </ul>
            <i id="right" class="fa-solid fa-angle-right"></i>
        </div>-->
</section>
<div class="row container-fluid mt-5">
    <div class="col-md-4 text-center">
        <i class="fas fa-box fa-3x"></i>
        <h4>Giao hàng tận nơi</h4>
    </div>

    <div class="col-md-4  text-center">
        <i class="fas fa-hand-holding-heart fa-3x"></i>
        <h4>Đảm bảo vệ sinh an toàn thực phẩm</h4>
    </div>

    <div class="col-md-4  text-center">
        <i class="fas fa-face-grin-hearts fa-3x"></i>
        <h4>Ngon tuyệt vời !!</h4>
    </div>
</div>





<%@include file="footer.jsp" %>
