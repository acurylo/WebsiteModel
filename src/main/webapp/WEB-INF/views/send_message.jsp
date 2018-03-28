<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:url value="/authentication" var="authenticationUrl" />
<c:url value="/track" var="trackUrl" />
<c:url value="/send_message" var="messageUrl" />
<c:url value="/" var="homeUrl" />
<html>
<head>
    <title>Contact</title>
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
    <!-- Optional theme -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css" integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r" crossorigin="anonymous">
    <!-- Font -->
    <link href='https://fonts.googleapis.com/css?family=Raleway' rel='stylesheet' type='text/css'>
    <!-- Latest compiled and minified JavaScript -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>

    <style>


    body {
        background-image: url('http://images.123hdwallpapers.com/20150730/river-sunshine-trees-plants-nature-1920x1080.jpg');
        background-repeat: no-repeat;
        background-size: cover;
        background-attachment: fixed;
        background-position: center center;
        font-size: large;
        color: rgba(227, 227,227, 0.8);
        font-family: 'Raleway', sans-serif;
        padding-top: 100px;
        padding-bottom: 100px;
    }


    .jumbotron {
        background: rgba(61, 61, 61, 0.8);
        border-radius: 10px!important;
    }

    .myBody {
        padding-top: 50px;
    }

    input{
        background-color: rgba(110, 110, 110, 0.8);
    }

    input[type=name], select {
        width: 200px;
        padding: 12px 20px;
        margin: 8px 0;
        display: inline-block;
        border: 1px solid #ccc;
        border-radius: 4px;
        box-sizing: border-box;
    }

    input[type=title], select {
        width: 400px;
        padding: 12px 20px;
        margin: 8px 0;
        display: inline-block;
        border: 1px solid #ccc;
        border-radius: 4px;
        box-sizing: border-box;
    }

    input[type=email], select {
        width: 300px;
        padding: 12px 20px;
        margin: 8px 0;
        display: inline-block;
        border: 1px solid #ccc;
        border-radius: 4px;
        box-sizing: border-box;
    }

    input[type=message], select {
           width: 100%;
           padding: 12px 20px;
           margin: 8px 0;
           display: inline-block;
           border: 1px solid #ccc;
           border-radius: 4px;
           box-sizing: border-box;
       }

    textarea{
        background-color: rgba(110, 110, 110, 0.7);
        width: 100%;
        padding: 12px 20px;
        margin: 8px 0;
        display: inline-block;
        border: 1px solid #ccc;
        border-radius: 4px;
        box-sizing: border-box;
        resize: none;
    }

    </style>

</head>
<body>
<div class="myBody container">
    <div class="row">
        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 jumbotron">
            <form:form  method="post" commandName="messageForm" >

                <label>First Name:</label><br>
                <form:input type="name" path = "first_name" /><br>

                <label>Last Name:</label><br>
                <form:input type="name" path = "last_name" /><br>

                <label>E-mail:</label><br>
                <form:input type="email" path = "email" /><br>

                <label>Title:</label><br>
                <form:input type="title" path = "title"/><br>

                <label for="textarea">Message:</label><br>
                <form:textarea name="text" id="textarea" cols="45" rows="5" path = "message"/><br>

                <input name="submit" type="submit" value="submit" /><br>

            </form:form>
        </div>
    </div>
</div>
</body>
</html>
