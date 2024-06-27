<%-- 
    Document   : login
    Created on : Jun 26, 2024, 10:22:30 AM
    Author     : trung
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="header.jsp" %>
    <div class="container d-flex justify-content-center align-items-center vh-100 login-container">
        <div class="card" style="width: 20rem;">
            <div class="card-body">
                <h5 class="card-title text-center">Login</h5>
                <form action="Login" method="post">
                    <!-- User Name input -->
                    <div class="form-outline mb-4">
                        <input type="text" id="userName" class="form-control" name="txtname" />
                        <label class="form-label" for="userName">User Name</label>
                    </div>

                    <!-- Password input -->
                    <div class="form-outline mb-4">
                        <input type="password" id="password" class="form-control" name="txtpassword" />
                        <label class="form-label" for="password">Password</label>
                    </div>

                    <!-- Submit button -->
                    <button type="submit" class="btn btn-primary btn-block">Login</button>

                    <!-- Register link -->
                    <div class="mt-3 text-center">
                        <p>Chưa có tài khoản ? <a href="register.jsp">Register</a></p>
                    </div>
                </form>          
            </div>
        </div>
    </div>

<%@include file="footer.jsp" %>
