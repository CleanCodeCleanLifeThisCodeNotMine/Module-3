<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Money converter</title>
</head>
<body>
<h1>Converter</h1>
<form action="converter.jsp" method="get">
<label>Rate: </label>
<br>
    <input type="number" name="rate" placeholder="Rate" value="22000"><br>
    <label>USD</label> <br>
    <input type="number" name="usd" placeholder="USD" value="0"><br>
    <input type="submit" value="Converter" id="submit">
</form>
</body>
</html>