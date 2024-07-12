<%-- 
    Document   : login
    Created on : Jun 26, 2024, 10:22:30 AM
    Author     : trung
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="header.jsp" %>
<!-- Section: Design Block -->
<section class=" text-center text-lg-start">
    <style>
        .rounded-t-5 {
            border-top-left-radius: 0.5rem;
            border-top-right-radius: 0.5rem;
        }

        @media (min-width: 992px) {
            .rounded-tr-lg-0 {
                border-top-right-radius: 0;
            }

            .rounded-bl-lg-5 {
                border-bottom-left-radius: 0.5rem;
            }
            #loginform {
                margin-top: 200px; 
                margin-bottom: 200px;
            }
        }
    </style>
    <div class="card " id="loginform" >
        <div class="row g-0 d-flex align-items-center">
            <div class="col-lg-3"></div>
            <div class="col-lg-2 d-none d-lg-flex">
                <img src="img/openart-image_yfh4QFPK_1719128796338_raw.jpg" alt="Img"
                     class="w-100 rounded-t-5 rounded-tr-lg-0 rounded-bl-lg-5" />
            </div>
            <div class="col-lg-4">
                <div class="card-body py-5 px-md-5 ">

                    <form action="Login" method="post">
                        <!-- Email input -->
                        <div data-mdb-input-init class="form-outline mb-4">
                            <input type="text" id="username" class="form-control" name="txtname"/>
                            <label class="form-label" for="username">Tên đăng nhập</label>
                        </div>

                        <!-- Password input -->
                        <div data-mdb-input-init class="form-outline mb-4">
                            <input type="password" id="password" class="form-control" name="txtpassword"/>
                            <label class="form-label" for="password">Mật khẩu</label>
                        </div>

                        <!-- 2 column grid layout for inline styling -->
<!--                        <div class="row mb-4">
                            <div class="col d-flex justify-content-center">
                                 Checkbox 
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" value="" id="form2Example31" checked />
                                    <label class="form-check-label" for="form2Example31"> Remember me </label>
                                </div>
                            </div>

                            <div class="col">
                                 Simple link 
                                <a href="#!">Forgot password?</a>
                            </div>
                        </div>-->

                        <!-- Submit button -->
                        <button type="submit" class="btn btn-primary btn-block">Đăng nhập </button>
                        <div class="col text-center">Chưa có tài khoản ?
                            <!-- Simple link -->
                            <a href="register.jsp">Register</a>
                        </div>
                    </form>

                </div>
            </div>
        </div>
    </div>
</section>
<!-- Section: Design Block -->

<%@include file="footer.jsp" %>
