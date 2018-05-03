<%--
  Created by IntelliJ IDEA.
  User: dream71
  Date: 19/4/18
  Time: 11:44 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Member List!</title>

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
            integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
            crossorigin="anonymous"></script>
    <script
            src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"
            integrity="sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ"
            crossorigin="anonymous"></script>
    <script
            src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"
            integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm"
            crossorigin="anonymous"></script>
    <link rel="stylesheet"
          href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css"
          integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4"
          crossorigin="anonymous">
</head>
<body>

<div class="container">
    <div class="col-md-12 col-md-offset-3">
        <table class="table table-striped">
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>User Name</th>
                <th>Address</th>
                <th>Mobile</th>
                <th>Date of Birth</th>
                <th>Position</th>
                <th>Setting</th>
            </tr>
            <c:forEach var="list" items="${list}">
                <tr>
                    <td><c:out value="${list.id}"></c:out></td>
                    <td><c:out value="${list.name}"></c:out></td>
                    <td><c:out value="${list.userName}"></c:out></td>
                    <td><c:out value="${list.address}"></c:out></td>
                    <td><c:out value="${list.mobile}"></c:out></td>
                    <td><c:out value="${list.dob}"></c:out></td>
                    <td><c:out value="${list.position}"></c:out></td>
                    <td><a
                            href="${pageContext.request.contextPath}/editEmployee/userName=${list.userName}">Edit</a>
                        | <a href="#"
                             onclick="confirmRemoveQuestion('${pageContext.request.contextPath}/deleteMember/${list.id}')">

                            Delete</a>
                        <script>
                            function confirmRemoveQuestion(link) {
                                if (show_confirm()) {
                                    window.location = link;
                                    this.hide();
                                } else {
                                    this.hide();
                                }
                            }

                            function show_confirm() {
                                return confirm("Are you sure you want to do this?");
                            }
                        </script>
                    </td>

                </tr>
            </c:forEach>
        </table>
    </div>
</div>

</body>
</html>
