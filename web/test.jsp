<%-- 
    Document   : test
    Created on : Jul 7, 2024, 1:14:22 AM
    Author     : trung
--%>

<%@page import="java.util.List"%>
<%@page import="dto.Meal"%>
<%@page import="dao.MealDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="/WEB-INF/tlds/mytags" prefix="t" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LittleHometown</title>
        <!-- Font Awesome -->
        <link
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"
            rel="stylesheet"
            />
        <!-- Google Fonts -->
        <link
            href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap"
            rel="stylesheet"
            />
        <!-- MDB -->
        <link
            href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/7.3.2/mdb.min.css"
            rel="stylesheet"
            />
        <link href="css/newcss.css" rel="stylesheet" />
        <link href="css/menucss.css" rel="stylesheet" />
        <link href="css/home.css" rel="stylesheet" />
        <script src="js/checkpass.js" defer></script>
        <script src="js/carousel.js" defer></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
        <style>
            body {

                /*                background-image: url('img/openart-image_yfh4QFPK_1719128796338_raw.jpg');
                                background-size: cover;
                                background-repeat: no-repeat;
                                background-attachment: fixed;
                                padding-top: 100px;*/
            }
        </style>
    </head>
    <body>
        <nav class="navbar navbar-expand-md navbar-light bg-body-tertiary fixed-top">
            <div class="container">
                <!-- Brand -->
                <a class="navbar-brand me-auto" href="home.jsp">
                    <img
                        src="img/bg.ai_1719131872236.png"
                        height="60"
                        alt="Logo"
                        loading="lazy"
                        />
                </a>
                <!-- Brand-->

                <button
                    data-mdb-collapse-init
                    class="navbar-toggler"
                    type="button"
                    data-mdb-target="#navbarToggler"
                    aria-controls="navbarToggler"
                    aria-expanded="false"
                    aria-label="Toggle navigation"
                    >
                    <i class="fas fa-bars"></i>
                </button>
                <div class="collapse navbar-collapse justify-content-evenly " id="navbarToggler">

                    <ul class="navbar-nav mb-2 mb-lg-0">
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="menu.jsp">Menu</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Link</a>
                        </li>
                        <li class="nav-item dropdown">
                            <a
                                data-mdb-dropdown-init
                                class="nav-link dropdown-toggle"
                                href="#"
                                id="navbarDropdown"
                                role="button"
                                aria-expanded="false"
                                >
                                Plan
                            </a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <li>
                                    <a class="dropdown-item" href="#">Recommend Plan</a>
                                </li>
                                <li><hr class="dropdown-divider" /></li>
                                <li>
                                    <a class="dropdown-item" href="#">Personal Plan</a>
                                </li>
                            </ul>           
                        </li>

                    </ul>
                    <form class="d-flex input-group w-auto" action=""  method="post">
                        <input
                            id="txtinput"
                            type="text"
                            name="txt"
                            value="${txtS}"
                            class="form-control"
                            placeholder="Meal name"
                            aria-label="Search"
                            oninput="searchByName()"
                            />
                        <button
                            data-mdb-ripple-init
                            class="btn btn-outline-primary"
                            type="button"
                            data-mdb-ripple-color="dark"
                            >
                            Search
                        </button>
                    </form>
                </div>

                <div class="d-flex align-items-center ">
                    <t:Avatar></t:Avatar>
                    </div>
                </div>
            </nav>
            <section id="menu" class="p-5">
                <div class="container">
                    <h2 class="mb-4 text-center">Our Menu</h2>
                    <div class="menu-container row">
                        <!-- Sidebar -->
                        <div class="sidebar col-md-3">
                            <h5>Filters</h5>
                            <!-- Search Bar -->
                            <div class="input-group mb-3">
                                <input type="text" class="form-control" placeholder="Search for dishes..." aria-label="Search for dishes" aria-describedby="button-addon2">
                                <button class="btn btn-outline-secondary" type="button" id="button-addon2">Search</button>
                            </div>
                            <!-- Filter by Type -->
                            <h6>Type</h6>
                            <select class="form-select mb-3" aria-label="Filter by type">
                                <option selected>All Types</option>
                                <option value="1">Appetizers</option>
                                <option value="2">Main Courses</option>
                                <option value="3">Desserts</option>
                            </select>
                            <!-- Filter by Price -->
                            <h6>Price</h6>
                            <div class="row mb-3">
                                <div class="col">
                                    <input type="number" class="form-control" placeholder="Min price" aria-label="Min price">
                                </div>
                                <div class="col">
                                    <input type="number" class="form-control" placeholder="Max price" aria-label="Max price">
                                </div>
                            </div>
                            <button class="btn btn-primary btn-block">Apply Filters</button>
                        </div>
                        <!-- Sidebar -->
                    <% MealDAO d = new MealDAO();
                        List<Meal> list = d.getMealByName("ga");
                    %>

                    <!-- Menu Content -->
                    <div class="menu-content col-md-9" >
                        <div class="row" id="testsearch">
                            
                            <c:forEach var="meal" items="<%=list%>">
                                <div class="col-md-4 menu-item">
                                    <div class="card ">
                                        <img src="${meal.address}" alt="img">
                                        <a href="#"></a>
                                        <div class="card-body">
                                            <h5 class="card-title">${meal.name}</h5>
                                            <p class="card-text"><strong>${meal.price}</strong></p>
                                            <a href="#!" class="btn btn-primary" data-mdb-ripple-init>Thêm vào giỏ hàng</a>
                                        </div>
                                    </div>
                                </div>
                            </c:forEach>
                        </div>
                    </div>
                    <!-- Menu Content -->
                </div>
            </div>
        </section>
                    <div id="testdiv">
                        
                    </div>
                    
        <footer class="text-center text-lg-start bg-body-tertiary text-muted ">
            <!-- Section: Social media -->
            <section class="d-flex justify-content-center justify-content-lg-between p-4 border-bottom">
                <!-- Left -->
                <div class="me-5 d-none d-lg-block">
                    <span>Liên hệ với chúng tôi qua:</span>
                </div>
                <!-- Left -->

                <!-- Right -->
                <div>
                    <a href="" class="me-4 text-reset">
                        <i class="fab fa-facebook-f"></i>
                    </a>
                    <a href="" class="me-4 text-reset">
                        <i class="fab fa-google"></i>
                    </a>
                    <a href="" class="me-4 text-reset">
                        <i class="fab fa-github"></i>
                    </a>
                </div>
                <!-- Right -->
            </section>
            <!-- Section: Social media -->

            <!-- Section: Links  -->
            <section class="">
                <div class="container text-center text-md-start mt-5">
                    <!-- Grid row -->
                    <div class="row mt-3">
                        <!-- Grid column -->
                        <div class="col-md-3 col-lg-4 col-xl-3 mx-auto mb-4">
                            <!-- Content -->
                            <h6 class="text-uppercase fw-bold mb-4">
                                <i class="fas fa-gem me-3"></i>Little Hometown
                            </h6>
                            <p>
                                Sologan ở đây 
                            </p>
                        </div>
                        <!-- Grid column -->

                        <!-- Grid column -->
                        <div class="col-md-2 col-lg-2 col-xl-2 mx-auto mb-4">
                            <!-- Links -->
                            <h6 class="text-uppercase fw-bold mb-4">
                                CHƯA BIẾT
                            </h6>
                        </div>
                        <!-- Grid column -->

                        <!-- Grid column -->
                        <div class="col-md-3 col-lg-2 col-xl-2 mx-auto mb-4">
                            <h6>THANH TOÁN</h6>

                        </div>
                        <!-- Grid column -->

                        <!-- Grid column -->
                        <div class="col-md-4 col-lg-3 col-xl-3 mx-auto mb-md-0 mb-4">
                            <!-- Links -->
                            <h6 class="text-uppercase fw-bold mb-4">lIÊN HỆ</h6>
                            <p><i class="fas fa-home me-3"></i> Tp.Hồ Chí Minh, Việt Nam</p>
                            <p>
                                <i class="fas fa-envelope me-3"></i>
                                thetrung2701@gmail.com
                            </p>
                            <p><i class="fas fa-phone me-3"></i> 091 317 3378</p>
                        </div>
                        <!-- Grid column -->
                    </div>
                    <!-- Grid row -->
                </div>
            </section>
            <!-- Section: Links  -->

            <!-- Copyright -->
            <div class="text-center p-4" style="background-color: rgba(0, 0, 0, 0.05);">
                © 2024 Copyright:
                <a class="text-reset fw-bold" href="">TheTrung</a>
            </div>
            <!-- Copyright -->
        </footer>
    </body>
</html>
<!--<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>-->
<script>
    function test() {
    alert("Test ajax")
    }
//    function searchByName(param) {
//    var txtSearch = param.value;
//    $.ajax({
//    url: "/FoodStore/SearchServlet",
//            type: "GET",
//            data: {
//            txt: txtSearch
//            }
//    success: function (data) {
//    var row = document.getElementById("testsearch");
//    row.innerHTML = data;
//    }
//    });
//    }
function searchByName() {
    var txtSearch =document.getElementById("txtinput").value;
//    window.location.href = "/FoodStore/Search?txt=canh"
    $.ajax({
        url: "/FoodStore/Search",
        type: 'GET',
        data: {
            txt: txtSearch
        },
        success: function (data) {
            var row = document.getElementById("testsearch");
            row.innerHTML += data;
        },         
        error: function (xhr, status, error) {
            console.error("AJAX error: " + status + " - " + error);
        }
        });
}
function testdiv() {
        var text = document.getElementById("testdiv");
        text.innerHTML += "Trung va Khoa"

}
</script>