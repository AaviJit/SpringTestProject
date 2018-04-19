<%--
  Created by IntelliJ IDEA.
  User: dream71
  Date: 19/4/18
  Time: 4:09 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<html>
<head>
    <title>Edit Employee</title>
    <title>Registration</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Registration Page</title>
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

    <sf:form class="form-horizontal"
             action="${pageContext.request.contextPath}/doUpdate"
             method="post" commandName="employee">
        <fieldset>

            <!-- Form Name -->
            <legend>Register Yourself !</legend>

            <!-- Text input-->
            <div class="form-group">
                <label class="col-md-4 control-label" for="name">Name</label>
                <div class="col-md-4">
                    <sf:input id="name" path="name" name="name" type="text"
                              placeholder="name" class="form-control input-md"></sf:input>

                    <sf:errors path="name" cssClass="alert-danger"></sf:errors>

                </div>
            </div>


            <!-- Text input-->
            <div class="form-group">
                <label class="col-md-4 control-label" for="userName">User
                    Name</label>
                <div class="col-md-4">
                    <sf:input id="userName" path="userName" name="userName"
                              type="text" placeholder="username" class="form-control input-md"></sf:input>
                    <sf:errors path="userName" cssClass="alert-danger"></sf:errors>
                </div>
            </div>



            <!-- Text input-->
            <div class="form-group">
                <label class="col-md-4 control-label" for="position">Position
                </label>
                <div class="col-md-4">
                    <sf:input id="position" path="position" name="position"
                              type="text" placeholder="position" class="form-control input-md"></sf:input>
                    <sf:errors path="position" cssClass="alert-danger"></sf:errors>
                </div>
            </div>


            <!-- Text input-->
            <div class="form-group">
                <label class="col-md-4 control-label" for="dob">Date of Birth
                </label>
                <div class="col-md-4">
                    <sf:input id="dob" path="dob" name="dob"
                              type="text" placeholder="dob" class="form-control input-md"></sf:input>
                    <sf:errors path="dob" cssClass="alert-danger"></sf:errors>
                </div>
            </div>

            <!-- Text input-->
            <div class="form-group">
                <label class="col-md-4 control-label" for="mobile">Mobile
                    No</label>
                <div class="col-md-4">
                    <sf:input id="mobile" path="mobile" name="mobile" type="text"
                              placeholder="mobile number" class="form-control input-md"></sf:input>
                    <sf:errors path="mobile" cssClass="alert-danger"></sf:errors>
                </div>
            </div>

            <!-- Text input-->
            <div class="form-group">
                <label class="col-md-4 control-label" for="address">Address</label>
                <div class="col-md-4">
                    <sf:input id="address" path="address" name="address" type="text"
                              placeholder="address" class="form-control input-md"></sf:input>
                    <sf:errors path="address" cssClass="alert-danger"></sf:errors>
                </div>
            </div>

            <!-- Text input-->
            <div class="form-group">
                <label class="col-md-4 control-label" for="password">Password</label>
                <div class="col-md-4">
                    <sf:input id="password" path="password" name="password"
                              type="password" placeholder="password"
                              class="form-control input-md"></sf:input>
                    <sf:errors path="password" cssClass="alert-danger"></sf:errors>
                </div>
            </div>

            <!-- Button -->
            <div class="form-group">
                <label class="col-md-4 control-label" for="register"></label>
                <div class="col-md-4">
                    <button id="register" name="register" class="btn btn-primary">Register</button>
                </div>
            </div>


        </fieldset>
    </sf:form>
</div>
</body>
</html>
