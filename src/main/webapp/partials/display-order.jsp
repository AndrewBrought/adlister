<%--
  Created by IntelliJ IDEA.
  User: andrewbrought
  Date: 7/15/20
  Time: 10:52 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<% request.setAttribute("size", "size"); %>--%>
<%= request.getParameter("size")%>
<html>
<head>
    <title>Order</title>
</head>
<body>
<ul>
    <li>Size: ${param.size}</li>
    <li>Crust: ${param.crust}</li>
    <li>Sauce: ${param.sauce}</li>
    <li>Toppings: ${param.toppings}</li>
</ul>
</body>
</html>
