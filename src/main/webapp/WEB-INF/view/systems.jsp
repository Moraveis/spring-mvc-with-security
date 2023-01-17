<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<html>
    <head>
        <title>Spring MVC + Spring Security</title>
    </head>

    <body>
        <h2>Admin Home Page</h2>

        <hr/>

        <p>
            Some info that only admins should be able to see.
        </p>

        <hr/>

        <p>
            <a href="${pageContext.request.contextPath}/">Back to homepage</a>
        </p>
    </body>
</html>