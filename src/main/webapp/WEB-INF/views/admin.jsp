<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:url value="/j_spring_security_logout" var="logoutUrl" />
<c:url value="/add_post" var="postUrl" />
<c:url value="/add_track" var="trackUrl" />
<c:url value="/message" var="messageUrl" />
<c:url value="/add_participant" var="participantUrl" />
<c:url value="/update_about" var="aboutUrl" />
<c:url value="/update_avatar" var="updateAvatarUrl" />
<html>
<head>
    <title>Admin</title>
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
        body{
            background-image: url('https://wallpaperscraft.com/image/field_dawn_sky_beautiful_scenery_87654_1920x1080.jpg');
            background-repeat: no-repeat;
            background-size: cover;
            overflow-x: hidden;
            font-family: 'Raleway', sans-serif;
        }

        .logout{
            color: rgba(227, 227,227, 0.8);
            font-size: x-large;
            padding-top: 50px;
            text-align: right;
        }

        .links{
            font-size: x-large;
            color: rgba(227, 227,227, 0.8);
            text-align: center;
            position: absolute;
            margin: auto;
            top: 235px;
            left: 0;
            right: 0;
            bottom: 0;
        }

        .jumbotron {
            background: rgba(61, 61, 61, 0.8);
            border-radius: 10px!important;
        }

        .myBlock{
            width: 200px;
            height: 280px;
        }

        .myImg{
            width:150px;
            height: 200px;
            position: absolute;
            margin: auto;
            top: -20px;
            left: 0;
            right: 0;
            bottom: 0;
        }
        .body{
            padding-top: 150px;
        }

        a {
            text-decoration: none !important;
        }

        a:hover {
            color: darkgrey;
        }


        .newMessage{
            width: 35px;
            height: 30px;
            position: absolute;
            margin: auto;
            top: 0;
            left: 150px;
            right: 0;
            bottom: 250px;
        }

    </style>
</head>
<body>

<div class="row">
    <div class="col-md-1 col-md-offset-11">
        <a href="${logoutUrl}" class="logout">Log out</a>
    </div>
</div>

<div class="body">
    <div class="row">
    <%--${messages}--%>
        <div class="col-md-2 col-md-offset-3 myBlock jumbotron">
            <img src="http://41.media.tumblr.com/df13d7a8929ed8eb5f3471c59710e840/tumblr_ml2mqqV2qq1r1l60so1_500.jpg" class="myImg">
            <a href="${postUrl}" class="links">Create Post</a>
        </div>
        <div class="col-md-2 col-md-offset-1 myBlock jumbotron">
            <img src="http://40.media.tumblr.com/adcc5307ab2f7dbee42c775827d6618e/tumblr_njhbk42a1b1swsvh0o1_250.jpg" class="myImg">
            <a href="${trackUrl}" class="links">Add track</a>
        </div>
        <div class="col-md-2 col-md-offset-1 myBlock jumbotron">
            <img src="http://40.media.tumblr.com/adcc5307ab2f7dbee42c775827d6618e/tumblr_njhbk42a1b1swsvh0o1_250.jpg" class="myImg">
            <a href="${aboutUrl}" class="links">Update About</a>
        </div>
    </div>
    <div class="row">
        <div class="col-md-2 col-md-offset-3 myBlock jumbotron">
            <img src="http://40.media.tumblr.com/adcc5307ab2f7dbee42c775827d6618e/tumblr_njhbk42a1b1swsvh0o1_250.jpg" class="myImg">
            <a href="${participantUrl}" class="links">Add Participant</a>
        </div>
        <div class="col-md-2 col-md-offset-1 myBlock jumbotron">
            <img src="http://40.media.tumblr.com/adcc5307ab2f7dbee42c775827d6618e/tumblr_njhbk42a1b1swsvh0o1_250.jpg" class="myImg">
            <a href="${updateAvatarUrl}" class="links">Update Avatar</a>
        </div>
        <div class="col-md-5 col-md-offset-1 myBlock jumbotron">
                <c:set var="message" value="${messages}"/>
                <c:if test ="${ message != ''}" >
                <img src="http://icons.iconarchive.com/icons/custom-icon-design/pretty-office-2/256/new-message-icon.png" class="newMessage" >
                </c:if>
                <img src="http://40.media.tumblr.com/70af82317e2556a1573548819ff86517/tumblr_n5bqezRsRL1r94argo1_500.png" class="myImg">
            <a href="${messageUrl}" class="links">Messages</a>
        </div>
    </div>
</div>
</body>
</html>