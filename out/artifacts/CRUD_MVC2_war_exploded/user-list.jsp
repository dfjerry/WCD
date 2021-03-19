<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 3/19/21
  Time: 8:49 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Title</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
    <!-- JavaScript Bundle with Popper -->
</head>
<body>
    <header>
        <nav class="navbar navbar-expand-md navbar-dark">
            <div>
                <a href="" class="navbar-brand">
                    User manager app
                </a>
            </div>
            <ul class="navbar-nav">
                <li><a href="<%= request.getContextPath()%>/list" class="nav-link">Users</a></li>
            </ul>
        </nav>
    </header>
    <br>
    <div class="col-md-6">
        <div class="row">
            <div class="container col-md-8">
                <h3 class="text-center">List of users</h3>
                <hr>
                <a href="<%=request.getContextPath()%>/new" class="btn btn-success">Add new users</a>
                <table class="table table-bordered">
                    <thead>
                    <tr>
                        <td>id</td>
                        <td>name</td>
                        <td>email</td>
                        <td>country</td>
                        <td>action</td>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach var="user" items="${listUser}">
                        <tr>
                            <td><c:out value="${user.id}"/> </td>
                            <td><c:out value="${user.name}"/> </td>
                            <td><c:out value="${user.email}"/> </td>
                            <td><c:out value="${user.country}"/> </td>
                            <td>
                                <a href="edit?id=<c:out value="${user.id}"/>">Edit</a>
                                <a href="delete?id=<c:out value="${user.id}"/>">Delete</a>
                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>

        </div>

    </div>
</body>
</html>
