<%--
  Created by IntelliJ IDEA.
  User: andrewbrought
  Date: 7/14/20
  Time: 3:27 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>User-Profile.JSP</title>
</head>
<body>
<h1>Hi! <%= request.getParameter("username")%></h1>
<%--EL using param--%>
<h1>Hi!, ${param.username}</h1>
<h1>${param.lastname}</h1>
<h3>${paramValues}</h3>

</body>
</html>
