<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="partials/head.jsp">
        <jsp:param name="title" value="Your Profile" />
    </jsp:include>
    <%@ include file="partials/theme-preference.jsp"%>
</head>
<body>
    <jsp:include page="partials/navbar.jsp" />

    <div class="container">
        <h1>Viewing your profile.</h1>
        <form action="/settings" method="get">
            <button>Update Your Settings</button>
        </form>
    </div>

</body>
</html>
