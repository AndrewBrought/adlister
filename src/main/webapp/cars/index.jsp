<%--
  Created by IntelliJ IDEA.
  User: andrewbrought
  Date: 7/20/20
  Time: 12:00 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
   <jsp:include page="/partials/head.jsp">
       <jsp:param name="title" value="Cars Lister"/>
   </jsp:include>
</head>
<body>
    <jsp:include page="/partials/navbar.jsp" />
    <div class="container">
        <h1>Welcome to CarLister!</h1>
        <h4><button><a href="/create">Add a Car</a></button></h4>
        <C:forEach items="${cars}" var="car" >
            <div col-md-6>
                <h3>${car.make} ${car.model}</h3>
                <p>${car.year}</p>
            </div>
        </C:forEach>
    </div>




</body>
</html>
