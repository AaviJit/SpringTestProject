<%--
  Created by IntelliJ IDEA.
  User: dream71
  Date: 16/4/18
  Time: 3:05 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<html>
<head>
    <title>Login</title>
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
    <div class="col-sm-3"></div>

    <h1>Login Page !!</h1>


    <sf:form class="form-horizontal" method="post"
             action="${pageContext.request.contextPath}/checkLogin"
             commandName="message">
        <fieldset>

            <!-- Form Name -->
            <!-- Text input-->
            <div class="form-group">
                <label class="col-md-4 control-label" for="textinput">User
                    Name</label>
                <div class="col-md-4">
                    <input id="textInput" name="userName" type="text"
                           placeholder="userName" class="form-control input-md">

                    <sf:errors path="userName" cssClass="alert-danger"></sf:errors>
                </div>
            </div>
            <!-- Password input-->
            <div class="form-group">
                <label class="col-md-4 control-label" for="password">Password</label>
                <div class="col-md-4">
                    <input id="password" name="password" type="password"
                           placeholder="password" class="form-control input-md">

                    <sf:errors path="password" cssClass="alert-danger"></sf:errors>
                </div>
            </div>
            <!-- Button -->
            <div class="form-group">
                <label class="col-md-4 control-label" for="login"></label>
                <div class="col-md-4">
                    <button id="login" name="login" class="btn btn-primary">Login</button>
                </div>
            </div>

        </fieldset>

    </sf:form>

    <p>
        <a href="${pageContext.request.contextPath}/register">Register
            Here !</a>
    </p>
</div>

</body>
</html>
