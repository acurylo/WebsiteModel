<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Message</title>
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
            background-image: url('http://www.freedomwallpaper.com/nature-wallpaper/nature-hd-wallpapers-forest-and-water.jpg');
            background-repeat: no-repeat;
            background-size: cover;
            background-attachment: fixed;
            background-position: center center;
            font-size: x-large;
            color: rgba(227, 227,227, 0.8);
            font-family: 'Raleway', sans-serif;
            padding-top: 100px;
            padding-bottom: 100px;
        }

        .myBody {
            padding-top: 50px;
        }



        .jumbotron {
            background: rgba(61, 61, 61, 0.8);
            border-radius: 10px!important;
        }

        h2{
            text-align: left;
        }


    </style>
</head>
<body>
<div class="myBody container">
    <div class="row">
        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 jumbotron">
            <h2>${message.title}</h2>
            <br/>
            ${message.message}
            <br/><br/>
            ${message.first_name} ${message.last_name}
            <br/>
            ${message.email}
            <br/>
            ${message.date}
            <br/>
        </div>
    </div>
</div>
</body>
</html>
