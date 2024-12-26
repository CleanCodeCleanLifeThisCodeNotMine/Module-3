<!-- File: delete.jsp -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" href="/css/style.css">
<head>
  <title>Delete Product</title>
</head>
<body>
<h1>Confirm Deletion</h1>
<p>Are you sure you want to delete the following product?</p>
<p><strong>ID:</strong> ${product.id}</p>
<p><strong>Name:</strong> ${product.name}</p>
<p><strong>Price:</strong> ${product.price}</p>
<p><strong>Description:</strong> ${product.description}</p>
<p><strong>Manufacturer:</strong> ${product.manufacturer}</p>
<form action="/products?action=delete" method="post">
  <input type="hidden" name="id" value="${product.id}">
  <button type="submit">Confirm</button>
  <a href="/products">Cancel</a>
</form>
</body>
</html>
