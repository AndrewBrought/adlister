<%--
  Created by IntelliJ IDEA.
  User: andrewbrought
  Date: 7/15/20
  Time: 10:20 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    if(request.getMethod().equalsIgnoreCase("get")){
        String size = request.getParameter("size");
        String crust = request.getParameter("crust");
        String sauce = request.getParameter("sauce");
        String toppings = request.getParameter  ("toppings");
        if(size != null && crust != null && sauce != null && toppings != null){
            response.sendRedirect("partials/display-order.jsp");
        } else{
            response.setHeader("<h1></h1>", "Please fill in all fields");
        }
    }
%>

<html>
<head>
    <title>Pizza Order</title>
</head>
<body>
    <h1>Pizza Order Form</h1>

    <form action="pizza-order.jsp" method="post">
<%--        size --%>
        <label for="size-dropdown">Select pizza size</label>
        <select id="size-dropdown" name="size">
            <option value="small">Small</option>
            <option value="medium">Medium</option>
            <option value="large">Large</option>
        </select>

    <%--        crust --%>
    <label for="crust-dropdown">Select crust</label>
    <select id="crust-dropdown" name="crust">
        <option value="thin">Thin</option>
        <option value="thick">Thick</option>
        <option value="chicago">Chicago</option>
    </select>

<%--     sauce --%>
        <label for="sauce-dropdown">Select sauce</label>
        <select id="sauce-dropdown" name="sauce">
            <option value="tomato">tomato</option>
            <option value="pesto">pesto</option>
            <option value="oil">oil</option>
        </select>

    <h4>Toppings</h4>
    <input name="toppings" id="pepperoni" type="checkbox" value="pepperoni">
    <label for="pepperoni">Pepperoni</label>

    <input name="toppings" id="sausage" type="checkbox" value="sausage">
    <label for="sausage">Sausage</label>

    <input name="toppings" id="ham" type="checkbox" value="ham">
    <label for="ham">Ham</label>

    <input name="toppings" id="black-olives" type="checkbox" value="black-olives">
    <label for="black-olives">Black-Olives</label>

    <input name="toppings" id="pineapple" type="checkbox" value="pineapple">
    <label for="pineapple">Pineapple</label>

        <button type="submit">submit order</button>
    </form>

    <c:choose>
        <c:when test="${param.size != null && param.crust != null && param.sauce != null && param.toppings != null}" >
            <% response.sendRedirect("partials/display-order.jsp"); %>
            <p>Success!</p>
        </c:when>
            <c:otherwise>
            <h1>Please fill in all fields...</h1>
        <%--        <% response.sendRedirect("/login.jsp"); %>--%>
            </c:otherwise>
    </c:choose>


</body>
</html>
