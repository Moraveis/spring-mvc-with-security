<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Custom Login Page</title>
    <link rel="stylesheet" type="text/css" href="css/base.css">
</head>
<body>
    <h3>My Custom Log Page</h3>

    <form:form action="${pageContext.request.contextPath}/authenticateTheUser" method="POST">
        <c:if test="${param.error != null}">
            <i class="failed" >Sorry! You provided a invalid username/password.</i>
        </c:if>

        <p>User Name: <input type="text" name="username" /></p>
        <p>Password: <input type="password" name="password" /></p>
        <input type="submit" value="login">
    </form:form>
</body>
</html>