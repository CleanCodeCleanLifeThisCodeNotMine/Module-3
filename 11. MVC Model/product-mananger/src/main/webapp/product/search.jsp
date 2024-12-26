<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" href="/css/style.css">
<head>
    <title>Kết quả tìm kiếm</title>
</head>
<body>
<h1>Kết quả tìm kiếm</h1>
<c:if test="${products != null && !products.isEmpty()}">
    <table border="1">
        <thead>
        <tr>
            <th>ID</th>
            <th>Tên sản phẩm</th>
            <th>Giá</th>
            <th>Mô tả</th>
            <th>Nhà sản xuất</th>
            <th>Hành động</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="product" items="${products}">
            <tr>
                <td>${product.id}</td>
                <td>${product.name}</td>
                <td>${product.price}</td>
                <td>${product.description}</td>
                <td>${product.manufacturer}</td>
                <td>
                    <a href="/products?action=view&id=${product.id}">Xem</a>
                    <a href="/products?action=edit&id=${product.id}">Sửa</a>
                    <a href="/products?action=delete&id=${product.id}" onclick="return confirm('Bạn có chắc chắn muốn xóa?');">Xóa</a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</c:if>
<c:if test="${products == null || products.isEmpty()}">
    <p>Không tìm thấy sản phẩm nào phù hợp.</p>
</c:if>
<a href="/products">Quay lại danh sách</a>
</body>
</html>

