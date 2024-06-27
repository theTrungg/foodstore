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
            <h5 class="card-title text-center">Register</h5>
            <form>
                <!-- UserName input -->
                <div class="form-outline mb-4">
                    <input type="text" id="txtname" class="form-control" />
                    <label class="form-label" for="txtname">UserName</label>
                </div>

                <!-- Password input -->
                <div class="form-outline mb-4">
                    <input type="password" id="txtpassword" class="form-control" />
                    <label class="form-label" for="txtpassword">Password</label>
                </div>

                <div class="form-outline mb-4">
                    <input type="password" id="form1Example2" class="form-control" />
                    <label class="form-label" for="form1Example2">Confirm Password</label>
                </div>
                <!-- Submit button -->
                <button type="submit" class="btn btn-primary btn-block">Register</button>

                <!-- Register link -->
                <div class="mt-3 text-center">
                    <p>Đã có tài khoản ? <a href="login.jsp">Login</a></p>
                </div>
            </form>

        </div>
    </div>
</div>

<%@include file="footer.jsp" %>
