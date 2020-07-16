<%--
  Created by IntelliJ IDEA.
  User: andrewbrought
  Date: 7/15/20
  Time: 9:52 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Background-Color</title>
    <%= request.getParameter("color")%>
    <style>
        body {
            background-color: ${param.color};
        }
    </style>
</head>
<body>

</body>
</html>
