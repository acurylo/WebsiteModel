<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:url value="/authentication" var="authenticationUrl" />
<c:url value="/track" var="trackUrl" />
<c:url value="/send_message" var="messageUrl" />
<c:url value="/participants/${id+1}" var="nextUrl" />
<c:url value="/participants/${id-1}" var="prevUrl" />
<c:url value="/participants" var="prevParticipantsUrl" />
<c:url value="/" var="homeUrl" />
<c:url value="/participants" var="participantUrl" />
<c:url value="/about" var="aboutUrl" />
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<c:set var="contextPath" scope="request" value="${pageContext.request.contextPath}" />

<html>
<head>
    <title>Home</title>
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
    <!-- Optional theme -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css" integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r" crossorigin="anonymous">
    <!-- font -->
    <link href='https://fonts.googleapis.com/css?family=Raleway' rel='stylesheet' type='text/css'>
    <!-- Latest compiled and minified JavaScript -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>





    <script>
        jQuery(document).ready(function() {
            jQuery( '.carousel-inner').find('.item:first' ).addClass( 'active' );
        });
    </script>

    <script>
        $(document).ready(function(){
            var list = document.getElementsByClassName("read")[0];
            for(var j =0; j < 3; j++ ) {
                var readMoreHtml = list.getElementsByClassName("read-more")[j].innerHTML;
                var lastChar;
                var lessText;
                if (readMoreHtml.length > 500) {
                    for (var i = 500; i > 0; i--) {
                        lastChar = readMoreHtml.charAt(i);
                        if (lastChar == " ") {
                            lessText = readMoreHtml.substr(0, i).concat("...");
                            list.getElementsByClassName("read-more")[j].innerHTML = lessText;
                            break;
                        }
                    }
                }
            }
        });
    </script>

    <style>

        body {
            background-image: url('http://best-wallpaper.net/wallpaper/1920x1080/1211/Beach-sea-water-fire-red-clouds-sky-beautiful-sunset-views_1920x1080.jpg');
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
        }

        .jumbotronLeft{
            width: 760px;
            margin-left: 160px!important;
            margin-right: 80px!important;
        }

        .jumbotronRight{
            width: 760px;
            margin-right: 0!important;
            margin-left: 0!important;
        }

        .jumbotronLower{
            width: 1600px;
            margin-right: 160px!important;
            margin-left: 160px!important;
        }

        a {
            color: rgba(227, 227,227, 0.8);
            text-decoration: none !important;
        }

        a:hover {
            color: darkgrey;
        }

        .photo{
            width: 280px;
            height: 350px;
        }

        .lowestPhoto{
            margin-left: 63px;
        }

        .lowestText{
            margin-left: 36px;
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
                                <li><a href="${aboutUrl}">About</a></li>
                                <li class = "active"><a href="${participantUrl}">Participants</a></li>
                                <li><a href="${messageUrl}"><span class="glyphicon glyphicon-envelope"></span> Contact</a></li>
                                <li><a href="${trackUrl}">Tracks</a></li>
                                <li><a href="${authenticationUrl}"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
                            </ul>
                        </div>
                    </div>

                </div>
            </nav>
        </div>
    </div>
</header>


<div id="body">
    <div class="row">
        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
            <c:set var="iter" value="1"/>
            <c:forEach items="${participants}" var="participant">

                <c:if test ="${ iter == '3'}" >
                    <div class= "col-md-6 jumbotron jumbotronLower">

                                <img src="${participant.photoUrl}" align="left" class="photo lowestPhoto">
                                <div class="lowestText">
                                    ${participant.firstName} ${participant.lastName}<br/><br/>
                                    ${participant.information1}<br/><br/>
                                    ${participant.information2}

                                    ${participant.information2}<br/>
                                </div>
                        <sec:authorize access="hasRole('ROLE_ADMIN')">
                            <a href="/participant/${participant.id}/delete" onclick="return confirm('Delete participant?')" class="btn btn-default">Delete</a>
                        </sec:authorize>

                        <sec:authorize access="hasRole('ROLE_ADMIN')">
                            <a href="/participant/${participant.id}/update" class="btn btn-default">Update</a>
                        </sec:authorize>
                    </div>
                </c:if>

                <c:if test ="${ iter == '2'}" >
                    <div class= "col-md-6 jumbotron jumbotronRight">
                        <div class="row">
                            <div class= "col-md-5 col-md-offset-1" >
                                ${participant.firstName} ${participant.lastName}<br/><br/>
                                ${participant.information1}<br/><br/>
                            </div>
                            <div class= "col-md-5" >
                                <img src="${participant.photoUrl}" class="photo">
                            </div>
                        </div>
                            <div class="row">
                                <div class="col-md-10 col-md-offset-1">
                                        ${participant.information2}<br/>
                                </div>
                            </div>
                            <sec:authorize access="hasRole('ROLE_ADMIN')">
                                <a href="/participant/${participant.id}/delete" onclick="return confirm('Delete participant?')" class="btn btn-default">Delete</a>
                            </sec:authorize>

                            <sec:authorize access="hasRole('ROLE_ADMIN')">
                                <a href="/participant/${participant.id}/update" class="btn btn-default">Update</a>
                            </sec:authorize>
                    </div>
                    <c:set var="iter" value="3"/>
                </c:if>

                <c:if test ="${ iter == '1'}" >
                    <div class= "col-md-6 jumbotron jumbotronLeft">
                        <div class="row">
                            <div class= "col-md-5 col-md-offset-1" >
                                <img src="${participant.photoUrl}" class="photo">
                            </div>
                            <div class= "col-md-5" >
                                ${participant.firstName} ${participant.lastName}<br/><br/>
                                ${participant.information1}<br/><br/>
                             </div>
                        </div>
                        <div class="row">
                            <div class="col-md-10 col-md-offset-1">
                                 ${participant.information2}<br/>
                            </div>
                        </div>
                            <sec:authorize access="hasRole('ROLE_ADMIN')">
                                <a href="/participant/${participant.id}/delete" onclick="return confirm('Delete participant?')" class="btn btn-default">Delete</a>
                            </sec:authorize>

                            <sec:authorize access="hasRole('ROLE_ADMIN')">
                                <a href="/participant/${participant.id}/update" class="btn btn-default">Update</a>
                            </sec:authorize>
                    </div>
                <c:set var="iter" value="2"/>
                </c:if>

            </c:forEach>

        </div>
    </div>

            <ul class="pager">
                <c:set var="id" value="${id}"/>
                <c:if test ="${ id != 1 && id != 2 }" >
                    <li><a href="${prevUrl}">Previous</a></li>
                </c:if>
                <c:if test ="${ id == 2}" >
                    <li><a href="${prevParticipantsUrl}">Previous</a></li>
                </c:if>
                <c:if test ="${ id < lastPage}" >
                    <li><a href="${nextUrl}">Next</a></li>
                </c:if>
            </ul>
</div>
<footer>

</footer>


</body>
</html>


