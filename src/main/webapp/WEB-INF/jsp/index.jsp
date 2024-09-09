<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<html>
    <head>
        <title>Users</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.1/css/all.css" integrity="sha384-5sAR7xN1Nv6T6+dT2mhtzEpVJvfS3NScPQTrOxhwjIuvcA67KV2R5Jz6kr4abQsz" crossorigin="anonymous">
        <link rel="stylesheet" href="/static/css/common.css">

    </head>
    <body >
        <p class="my-5"><a href="/signup" class="btn btn-primary"><i class="fas fa-user-plus ml-2"></i></a></p>
        <style>
            th   {color: blue;}
            p    {color: red;}
        </style>
        <table>
            <thead>
                <tr>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Edit</th>
                    <th>Delete</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${users}" var="user">
                    <tr>
                        <td>${user.name}</td>
                        <td>${user.email}</td>
                        <td><a href="/edit/${user.id}" class="btn btn-primary"><i class="fas fa-user-edit ml-2"></i></a></td>
                        <td><a href="/delete/${user.id}" class="btn btn-primary"><i class="fas fa-user-times ml-2"></i></a></td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </body>
</html>