<%--
  Created by IntelliJ IDEA.
  User: andrewbrought
  Date: 7/18/20
  Time: 10:08 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Settings" />
    </jsp:include>
    <%@ include file="/WEB-INF/partials/theme-preference.jsp" %>
</head>
<body>
    <h1>Here are your Settings</h1>

    <form action="/settings" method="post">
        <label for="light">Light Mode</label>
        <input type="radio" name="theme" id="light" value="light" checked="checked">

        <label for="dark">Dark Mode</label>
        <input type="radio" name="theme" id="dark" value="dark">

        <button type="submit">Make Changes</button>
    </form>

    <form action="/settings" method="post">
        <h3>Reset your preferences instead?</h3>
        <input type="hidden" name="reset">
        <button type="submit">Reset</button>
    </form>
</body>
</html>
