<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head><title>Danh Sách Sản Phẩm</title></head>
<body>
<h1>Danh sách sản phẩm</h1>
<a href="/products?action=add">Thêm mới</a>
<table>
  <tr>
    <th>STT</th>
    <th>Name</th>
    <th>Price</th>
    <th>Discount</th>
    <th>Stock</th>
  </tr>
  <c:forEach var="product" items="${products}">
    <tr>
      <td>${product.id}</td>
      <td>${product.name}</td>
      <td>${product.price}</td>
      <td>${product.discount}</td>
      <td>${product.stock}</td>
    </tr>
  </c:forEach>
</table>
</body>
</html>
