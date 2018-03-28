<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:url value="/j_spring_security_check" var="loginUrl" />
<c:url value="/authentication" var="authenticationUrl" />
<c:url value="/track" var="trackUrl" />
<c:url value="/send_message" var="messageUrl" />
<c:url value="/" var="homeUrl" />
<html>
<head>
    <title>Login</title>
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

        input[type=text], select {
            width: 100%;
            padding: 12px 20px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }

        input[type=password], select {
            width: 100%;
            padding: 12px 20px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }

        body {
            background-image: url('http://www.wallpapersf.com/wp-content/uploads/2015/02/Nature-Wallpaper-14.jpg');
            background-repeat: no-repeat;
            background-size: cover;
            background-attachment: fixed;
            background-position: center center;
            font-size: large;
            color: rgba(227, 227,227, 0.8);
            font-family: 'Raleway', sans-serif;
            padding-top: 200px;
            padding-bottom: 100px;
            padding-left: 700px;
            padding-right: 700px;
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


        .msg{
            color: red;
        }


    </style>
</head>
<body>

<div class="myBody">
    <div class="row">
        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 jumbotron">
            <h2>Login</h2>
            <div class="msg">
            ${msg}
            ${error}
            </div>
            <form action="${loginUrl}" method="post">

                <label for="fname">User:</label><br>
                <input type='text' name='j_username' id="fname" value=''/><br>

                <label for="fpass">Password:</label><br>
                <input type='password' name='j_password' id="fpass"/><br><br>


                <input name="submit" type="submit" value="submit" />

            </form>
        </div>
    </div>
</div>
</body>
</html>