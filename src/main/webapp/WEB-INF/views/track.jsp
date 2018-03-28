<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<c:url value="/track/${track.id}/delete" var="deleteUrl" />
<c:url value="/track/${track.id}/update" var="updateUrl" />
<c:url value="/authentication" var="authenticationUrl" />
<c:url value="/track" var="trackUrl" />
<c:url value="/send_message" var="messageUrl" />
<c:url value="/" var="homeUrl" />

<html>
<head>
    <title>Track</title>
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
            background-image: url('http://www.desktopwallpaperhd.net/wallpapers/6/d/wallpaper-games-forest-magic-pictures-63725.jpg');
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

<%--<header>--%>
    <%--<div class="row">--%>
        <%--<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">--%>
            <%--<nav class = "navbar navbar-inverse navbar-fixed-top">--%>
                <%--<div class="row">--%>

                    <%--<div>--%>
                        <%--<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#mainNavBar">--%>
                            <%--<span class="icon-bar"></span>--%>
                            <%--<span class="icon-bar"></span>--%>
                            <%--<span class="icon-bar"></span>--%>
                        <%--</button>--%>
                        <%--<div class="col-md-3 col-md-offset-1">--%>
                            <%--<a href="#" class ="navbar-brand">--%>
                                <%--<img width="100" height="30" src="http://cdn2.bigcommerce.com/server300/553e4/product_images/logo400x113_1395364425__72657.png">--%>
                            <%--</a>--%>
                        <%--</div>--%>
                    <%--</div>--%>

                    <%--<div class="col-md-6 col-md-offset-1">--%>
                        <%--<div class = "collapse navbar-collapse" id="mainNavBar">--%>
                            <%--<ul class = "nav navbar-nav navbar-right">--%>
                                <%--<li><a href="${homeUrl}"><span class="glyphicon glyphicon-home"></span> Home</a></li>--%>
                                <%--<li><a href="#">About</a></li>--%>
                                <%--<li><a href="${messageUrl}"><span class="glyphicon glyphicon-envelope"></span> Contact</a></li>--%>
                                <%--<li><a href="${trackUrl}">Tracks</a></li>--%>
                                <%--<li><a href="${authenticationUrl}"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>--%>
                            <%--</ul>--%>
                        <%--</div>--%>
                    <%--</div>--%>

                <%--</div>--%>
            <%--</nav>--%>
        <%--</div>--%>
    <%--</div>--%>
<%--</header>--%>



<div class="mybody container">
    <div class="row">
        <div class="col-md-12 jumbotron">
           <h2>${track.title}</h2>
            <br/><br/>
            <h3>Lyrics</h3><br/>
            ${track.lyrics}
            <br/><br/>
            <h3>Description</h3><br/>
            ${track.description}
            <br/><br/>
            ${track.date}
            <br/><br/>
            <iframe width="420" height="315"
                    src="${track.link}"
                    frameborder="0" allowfullscreen>
            </iframe>
            <br/>
            <br/>
            <sec:authorize access="hasRole('ROLE_ADMIN')">
                <a href="${deleteUrl}" onclick="return confirm('Delete track?')" class="btn btn-default">Delete</a>
            </sec:authorize>

            <sec:authorize access="hasRole('ROLE_ADMIN')">
                <a href="${updateUrl}" class="btn btn-default">Update</a>
            </sec:authorize>
        </div>
    </div>
</div>
</body>
</html>
