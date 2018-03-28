<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Update Participant</title>
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
            background-image: url('http://www.imgbase.info/images/safe-wallpapers/photography/mountains/57336_mountains_beautiful_mountain_lake_view.jpg');
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

        .myBody {
            padding-top: 50px;
        }

        input{
            background-color: rgba(110, 110, 110, 0.8);
        }

        input[type=name], select {
            width: 400px;
            padding: 12px 20px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }


        input[type=link], select {
            width: 600px;
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


        .jumbotron {
            background: rgba(61, 61, 61, 0.8);
            border-radius: 10px!important;
        }

        h2{
            text-align: center;
            font-size: xx-large;
        }

    </style>
</head>
<body>
<div class="myBody container">
    <div class="row">
        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 jumbotron">

            <h2>Update Participant</h2><br/>

            <form:form  method="post" commandName="participantForm" >

                <label>First Name:</label><br>
                <form:input type="name" path = "firstName" value="${participant.firstName}"/><br>

                <label>Last Name:</label><br>
                <form:input type="name"  path = "lastName" value="${participant.lastName}" /><br>

                <label>Information1:</label><br>
                <form:textarea  name="text" cols="45" rows="10" path = "information1" placeholder="${participant.information1}" /><br>

                <label>Information2:</label><br>
                <form:textarea  name="text" cols="45" rows="10" path = "information2" placeholder="${participant.information2}"/><br><br>

                <label>Photo:</label><br>
                <form:input type="link" path = "photoUrl" value="${participant.photoUrl}"/><br><br>

                <input name="submit" type="submit" value="submit" /><br>

            </form:form>

        </div>
    </div>
</div>
</body>
</html>
