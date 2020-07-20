<%--
  Created by IntelliJ IDEA.
  User: andrewbrought
  Date: 7/20/20
  Time: 12:30 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add a Car</title>
</head>
<body>
<div class="container">
    <h3>Add a Car</h3>
    <form action="/create" method="POST">
        <div class="form-group">
            <label for="make">Make</label>
            <input id="make" name="make" class="form-control" type="text">
            <label for="model">Model</label>
            <input id="model" name="model" class="form-control" type="text">
            <label for="year">Year</label>
            <input id="Year" name="Year" class="form-control" type="text">
        </div>
    </form>
</div>

</body>
</html>
