<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:url value="/authentication" var="authenticationUrl" />
<c:url value="/track" var="trackUrl" />
<c:url value="/send_message" var="messageUrl" />
<c:url value="/" var="prevHomeUrl" />
<c:url value="/" var="homeUrl" />
<c:url value="/participants" var="participantUrl" />
<c:url value="/about" var="aboutUrl" />
<c:set var="contextPath" scope="request" value="${pageContext.request.contextPath}" />
<c:url value="/albums" var="albumUrl" />

<html>
<head>
    <title>About</title>
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
    <!-- Optional theme -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css" integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r" crossorigin="anonymous">
    <!-- font -->
    <link href='https://fonts.googleapis.com/css?family=Raleway' rel='stylesheet' type='text/css'>
    <!-- Latest compiled and minified JavaScript -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>


    <style>

        body {
            background-image: url('http://www.mrwallpaper.com/wallpapers/beautiful-beach-sunset-1920x1080.jpg');
            background-repeat: no-repeat;
            background-size: cover;
            background-attachment: fixed;
            background-position: center center;
            font-size: x-large;
            color: rgba(227, 227,227, 0.8);
            font-family: 'Raleway', sans-serif;
            overflow-x: hidden;
            padding-top: 200px;
        }


        .navbarFont{
            font-size: medium;
        }

        .jumbotron {
            background: rgba(61, 61, 61, 0.8);
            border-radius: 10px!important;
            text-align: center;
        }


        a {
            color: rgba(227, 227,227, 0.8);
            text-decoration: none !important;
        }

        a:hover {
            color: darkgrey;
        }

        .photoUrl{
            width: 560px;
            height:315px;
        }


    </style>

</head>
<body >
<header class="navbarFont">
    <div class="row">
        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
            <nav class = "navbar navbar-inverse navbar-fixed-top">
                <div class="row">

                    <div>
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#mainNavBar">
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <div class="col-md-3 col-md-offset-1">
                            <a href="#" class ="navbar-brand">
                                <img width="100" height="30" src="http://cdn2.bigcommerce.com/server300/553e4/product_images/logo400x113_1395364425__72657.png">
                            </a>
                        </div>
                    </div>

                    <div class="col-md-6 col-md-offset-1">
                        <div class = "collapse navbar-collapse" id="mainNavBar">
                            <ul class = "nav navbar-nav navbar-right">
                                <li><a href="${homeUrl}"><span class="glyphicon glyphicon-home"></span> Home</a></li>
                                <li class = "active"><a href="${aboutUrl}">About</a></li>
                                <li><a href="${participantUrl}">Participants</a></li>
                                <li><a href="${messageUrl}"><span class="glyphicon glyphicon-envelope"></span> Contact</a></li>
                                <li><a href="${albumUrl}">Albums</a></li>
                                <li><a href="${authenticationUrl}"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
                            </ul>
                        </div>
                    </div>

                </div>
            </nav>
        </div>
    </div>
</header>




<div id="body" >
    <div class="row">
        <div class="col-md-5 col-md-offset-1 jumbotron">
             <h2>${about.title}</h2>
                     ${about.content1}<br/><br/>
                     ${about.content2}<br/><br/>
                     ${about.content3}<br/><br/>
        </div>

        <div class="col-md-4 col-md-offset-1 ">
            <div class="jumbotron"> <img src="${about.photoUrl1}" class="photoUrl"></div>
            <div class="jumbotron"> <img src="${about.photoUrl2}" class="photoUrl"></div>
            <div class="jumbotron"><img src="${about.photoUrl3}" class="photoUrl"></div>
        </div>
    </div>


</div>
<footer>

</footer>


</body>
</html>