<html>
<link rel="stylesheet" href="/css/style.css">
<head>
  <title>Create Product</title>
</head>
<body>
<h1>Create Product</h1>
<form method="post" action="/products?action=create">
  <label for="name">Name:</label>
  <input type="text" id="name" name="name">
  <br>
  <label for="price">Price:</label>
  <input type="number" id="price" name="price">
  <br>
  <label for="description">Description:</label>
  <textarea id="description" name="description"></textarea>
  <br>
  <label for="manufacturer">Manufacturer:</label>
  <input type="text" id="manufacturer" name="manufacturer">
  <br>
  <button type="submit">Submit</button>
</form>
<a href="/products">Back to list</a>
</body>
</html>
