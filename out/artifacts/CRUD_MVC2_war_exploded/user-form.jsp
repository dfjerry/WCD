<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 3/19/21
  Time: 8:48 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>form</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">

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
<div class="contaier col-md-5">
    <div class="card">
        <div class="card-body">
            <c:if test="${user != null}">
                <form action="update" method="post">
                    </c:if>
                    <c:if test="${user == null}">
                        <form action="insert" method="post">
                            </c:if>
                            <caption>
                                <h2>
                                    <c:if test="${user != null}">
                                        edit user
                                    </c:if>
                                    <c:if test="${user == null}">
                                        add new user
                                    </c:if>
                                </h2>
                            </caption>
                            <c:if test="${user != null}">
                                <input type="hidden" name="id" value="<c:out value="${user.id}"/>">
                            </c:if>
                            <fieldset class="form-group">
                                <label> name</label>
                                <input type="text" name="name" class="form-control" value="<c:out value="${user.name}"/>">
                            </fieldset>
                            <fieldset class="form-group">
                                <label> email</label>
                                <input type="text" name="email" class="form-control"  value="<c:out value="${user.email}"/>">
                            </fieldset>
                            <fieldset class="form-group">
                                <label> country</label>
                                <input type="text" name="country" class="form-control"  value="<c:out value="${user.country}"/>">
                            </fieldset>
                            <button type="submit" class="btn btn-success">save</button>
                </form>

        </div>
    </div>
</div>
</body>
</html>
