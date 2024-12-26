<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<link rel="stylesheet" href="/css/style.css">
<head>
  <title>Product List</title>
</head>
<body>
<h1>Product List</h1>
<a href="/products?action=create">Create New Product</a>
<form method="get" action="/products">
  <input type="text" name="name" placeholder="Search by name">
  <input type="hidden" name="action" value="search">
  <button type="submit">Search</button>
</form>
<table border="1">
  <tr>
    <th>ID</th>
    <th>Name</th>
    <th>Price</th>
    <th>Description</th>
    <th>Manufacturer</th>
    <th>Actions</th>
  </tr>
  <c:forEach items="${products}" var="product">
    <tr>
      <td>${product.id}</td>
      <td>${product.name}</td>
      <td>${product.price}</td>
      <td>${product.description}</td>
      <td>${product.manufacturer}</td>
      <td>
        <a href="/products?action=edit&id=${product.id}">Edit</a>
        <a href="/products?action=delete&id=${product.id}" onclick="return confirm('Are you sure?')">Delete</a>
      </td>
    </tr>
  </c:forEach>
</table>
</body>
</html>