<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<html>
    <head>
        <title>Spring MVC + Spring Security</title>
    </head>

    <body>
        <h2>Home Page</h2>

        <p>
            User: <security:authentication property="principal.username"/>
            <hr><br>
            Role(s): <security:authentication property="principal.authorities"/>
        </p>

        <form:form action="${pageContext.request.contextPath}/logout" method="POST">
            <input type="submit" value="Logout" />
        </form:form>
    </body>
</html>