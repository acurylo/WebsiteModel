<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<c:url value="/authentication" var="authenticationUrl" />
<c:url value="/albums" var="albumUrl" />
<c:url value="/send_message" var="messageUrl" />
<c:url value="/${id+1}" var="nextUrl" />
<c:url value="/${id-1}" var="prevUrl" />
<c:url value="/" var="prevHomeUrl" />
<c:url value="/" var="homeUrl" />
<c:url value="/participants" var="participantUrl" />
<c:url value="/about" var="aboutUrl" />
<c:url value="/admin" var="adminUrl" />
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

    .post{
        background: rgba(31, 31, 31, 0.8)!important;
        border-radius: 10px!important;
    }

    .carousel{
        width: 560px ;
        height: 315px;
        margin: auto;
        top: 0;
        left: 0;
        right: 0;
        bottom: 0;
    }


    body {
        background-image: url('http://www.beautiful-views.net/views/sunrise-sea-morning-beaches.jpg');
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

    a {
        color: rgba(227, 227,227, 0.8);
        text-decoration: none !important;
    }

    a:hover {
        color: darkgrey;
    }

    .writtenBy{
        font-size: small;
        font-family: cursive;
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
                                        <li class = "active"><a href="${homeUrl}"><span class="glyphicon glyphicon-home"></span> Home</a></li>
                                        <li><a href="${aboutUrl}">About</a></li>
                                        <li><a href="${participantUrl}">Participants</a></li>
                                        <li><a href="${messageUrl}"><span class="glyphicon glyphicon-envelope"></span> Contact</a></li>
                                        <li><a href="${albumUrl}">Albums</a></li>
                                        <%--<li><a href="${authenticationUrl}"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>--%>
                                        <sec:authorize access="hasRole('ROLE_ANONYMOUS')">
                                            <li><a href="${authenticationUrl}"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
                                        </sec:authorize>
                                        <sec:authorize access="hasRole('ROLE_ADMIN')">
                                            <li><a href="${adminUrl}"><span class="glyphicon glyphicon-log-in"></span>Login</a></li>
                                        </sec:authorize>


                                    </ul>
                                </div>
                            </div>

                    </div>
            </nav>
        </div>
    </div>
</header>


<%--<div class="row">--%>
    <%--<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">--%>
        <%--<img src="http://arrowheadrvresort.com/wp-content/uploads/2014/05/Beautiful-Minnesota-Lake-Pano-1920x400-25337366.jpg" class="homeImg">--%>
    <%--</div>--%>
<%--</div>--%>

<div id="body">
    <div class="row">
        <div class="col-md-5 col-md-offset-1 jumbotron">
            <div class="read">
                <h2>Latest Posts</h2>
                <c:forEach items="${posts}" var="post">
                <div class="jumbotron post">
                    <div class="row">
                        <div class="col-md-2 ">
                            <h4>${post.date}</h4>
                        </div>
                        <div class="col-md-8 ">
                            <h3>${post.title}</h3>
                            <div class="writtenBy"> Written by ${post.author}</div>
                        </div>
                        <div class="col-md-2">
                            <img src="${post.avatarUrl}" width="60" height="60">
                        </div>
                    </div>
                    <div class="read-more">
                         <p>${post.content1}</p>
                         <p>${post.content2}</p>
                         <p>${post.content3}</p>
                         <p>${post.content4}</p>
                         <p>${post.content5}</p>
                         <p>${post.content6}</p>
                         <p>${post.content7}</p>
                         <p>${post.content8}</p>
                    </div>
                    <a href="/post/${post.id}">Read More</a>
                    <br/>
                </div>
            </c:forEach>
            </div>
        </div>

        <div class="col-md-4 col-md-offset-1 jumbotron">
                <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">

                    <!-- Wrapper for slides -->
                    <div class="carousel-inner" role="listbox">
                        <c:forEach items="${tracks}" var="track">
                        <div class="item">
                            <iframe width="560" height="315"
                                    src="${track.link}"
                                    frameborder="0" allowfullscreen>
                            </iframe>
                            <div class="carousel-caption">
                            </div>
                        </div>
                        </c:forEach>
                    </div>
                    <!-- Controls -->
                    <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                        <span class="sr-only">Next</span>
                    </a>
                </div>
        </div>
    </div>

        <ul class="pager">
            <c:set var="id" value="${id}"/>
        <c:if test ="${ id != 1 && id != 2 }" >
        <li><a href="${prevUrl}">Previous</a></li>
        </c:if>
        <c:if test ="${ id == 2}" >
            <li><a href="${prevHomeUrl}">Previous</a></li>
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