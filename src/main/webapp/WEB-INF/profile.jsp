<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Your Profile" />
    </jsp:include>
    <%@ include file="/WEB-INF/partials/theme-preference.jsp"%>
</head>
<body>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />

    <div class="container">
        <h1>Viewing your profile.</h1>
        <h3>Welcome, ${sessionScope['user']}</h3>
        <form action="/settings" method="get">
            <button>Update Your Settings</button>
        </form>
    </div>

</body>
</html>
