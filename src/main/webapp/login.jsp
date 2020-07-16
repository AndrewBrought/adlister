<%--
  Created by IntelliJ IDEA.
  User: andrewbrought
  Date: 7/15/20
  Time: 10:33 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<% request.setAttribute("username", "admin"); %>--%>
<%--<% request.setAttribute("password", "password"); %>--%>
<html>
<head>
    <title>Login</title>
</head>
<body>
<h3>Login:</h3>
<form action="login.jsp" method="post">
    <label for="username">Username</label>
    <input type="text" id="username" name="testname">

    <label for="password">Password</label>
    <input type="password" id="password" name="testpassword">
    <button type="submit">login</button>
</form>

<c:choose>
    <c:when test="${param.testname.equalsIgnoreCase('admin') && param.testpassword.equalsIgnoreCase('password123')}" >
        <% response.sendRedirect("/partials/profile.jsp"); %>
        <p>You are viewing this as an Admin.</p>
        <%@ include file="/partials/adminnav.jsp"%>
    </c:when>
<%--    <c:otherwise>--%>

<%--&lt;%&ndash;        <% response.sendRedirect("/login.jsp"); %>&ndash;%&gt;--%>
<%--    </c:otherwise>--%>
</c:choose>



</body>
</html>
