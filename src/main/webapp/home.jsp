<%--
  Created by IntelliJ IDEA.
  User: andrewbrought
  Date: 7/14/20
  Time: 2:29 PM
  To change this template use File | Settings | File Templates.
--%>
<%--JSTL Library Link To Give Us Access--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%!String firstname = "Andrew"; %>
<%!String lastname = "Brought"; %>
<html>
<head>
    <title>Home</title>
<%--    This will be the file that has all the links to our css stylesheets--%>
    <%@ include file="partials/head.jsp"%>
</head>
<body>
<h1>Welcome! </h1>
    <%@ include file="partials/navbar.jsp"%>
<%--<h1>Hello, <%= firstname + " " + lastname %></h1>--%>
<h3>What Would You Like To Do?</h3>

<h3>View Your Profile</h3>
<form action="partials/user-profile.jsp" method="get">
    <input type="hidden" id="username" name="username" value="Andrew">
    <input type="hidden" id="lastname" name="lastname" value="Thomas">
    <button type="submit">Go There</button>
</form>

<h3>Add a To Do</h3>
<form action="partials/todo.jsp" method="post">
    <input type="text" id="item" name="item">
    <button type="submit">Add to List</button>
</form>
    <%@ include file="partials/footer.jsp"%>

</body>
</html>
