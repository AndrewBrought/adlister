<%--
  Created by IntelliJ IDEA.
  User: andrewbrought
  Date: 7/15/20
  Time: 9:51 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Pick-Color</title>
</head>
<body>
    <h1>Welcome to color picker!</h1>
    <form action="partials/back-ground-color.jsp" method="post">
        <label for="color">choose a color</label>
        <input type="text" id="color" name="color">

        <button type="submit">submit color</button>
    </form>

</body>
</html>
