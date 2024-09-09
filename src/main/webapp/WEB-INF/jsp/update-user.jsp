<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Add User</title>
    </head>
    <body>

        <c:url var="update_user_url" value="/update/${user.id}"/>
        <form:form action="${update_user_url}" method="post" modelAttribute="user">
            <form:label path="name">Name: </form:label> <form:input type="text" path="name"/>
            <form:label path="email">Email: </form:label> <form:input type="text" path="email"/>
            <input type="submit" value="submit"/>
        </form:form>
    </body>
</html>