<%--
  Created by IntelliJ IDEA.
  User: dream71
  Date: 17/4/18
  Time: 4:14 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Welcome Page</title>
</head>
<body>
<p>Welcome buddy !</p>
<a href="${pageContext.request.contextPath}/memberList">Member List !!</a>&nbsp;&nbsp;&nbsp;<a
        href="${pageContext.request.contextPath}/logout">Logout</a>
</body>
</html>
