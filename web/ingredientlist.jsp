<%-- 
    Document   : ingredientlist
    Created on : Jul 6, 2024, 11:59:50 AM
    Author     : trung
--%>
<%@page import="java.util.List"%>
<%@page import="dto.Account"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="dashboard.jsp" %>
<link href="css/list.css" rel="stylesheet" >
<div class="content w-100">
    <h1>Danh sách nguyên liệu</h1>
    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>ID Loại</th>
                <th>Tên</th>
                <th>Giá</th>
                <th>Số lượng</th>
                <th>Trạng thái</th>
                <th>Cập nhật</th>
            </tr>
        </thead>
        <tbody>

            <c:forEach var="ingre" items="${requestScope.ListIngredient}">
                <tr>
                    <td>${ingre.id}</td>
                    <td>${ingre.icate}</td>
                    <td>${ingre.name}</td>
                    <td>${ingre.price}</td>
                    <td>${ingre.quantity}</td>
                    <td>${ingre.status}</td>
                    <td class="action-links">
                        <c:url value="#" var="statusUrl">
                            <c:param name="accId" value="${ingre.id}" />
                        </c:url>
                        <a href="${statusUrl}">Cập nhật</a>
                    </td>
                </tr>
            </c:forEach>

        </tbody>
    </table>
</div>
</div>
<script
    type="text/javascript"
    src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/7.3.2/mdb.umd.min.js"
></script>
</body>
</html>
