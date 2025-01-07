<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head><title>Thêm Mới Sản Phẩm</title></head>
<body>
<h1>Thêm mới sản phẩm</h1>
<form action="/products" method="post">
  Name: <input type="text" name="name" required><br>
  Price: <input type="number" name="price" required><br>
  Discount: <select name="discount" required>
  <option value="5">5%</option>
  <option value="10">10%</option>
  <option value="15">15%</option>
  <option value="20">20%</option>
</select><br>
  Stock: <input type="number" name="stock" required><br>
  <input type="submit" value="Thêm">
</form>
</body>
</html>
