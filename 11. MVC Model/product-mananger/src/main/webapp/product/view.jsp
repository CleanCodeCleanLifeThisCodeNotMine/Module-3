<!-- File: view.jsp -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" href="/css/style.css">
<head>
  <title>View Product</title>
</head>
<body>
<h1>Product Details</h1>
<p><strong>ID:</strong> ${product.id}</p>
<p><strong>Name:</strong> ${product.name}</p>
<p><strong>Price:</strong> ${product.price}</p>
<p><strong>Description:</strong> ${product.description}</p>
<p><strong>Manufacturer:</strong> ${product.manufacturer}</p>
<a href="/products">Back to List</a>
</body>
</html>
