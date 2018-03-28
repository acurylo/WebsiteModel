<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<c:url value="/post/${post.id}/delete" var="deleteUrl" />
<c:url value="/post/${post.id}/update" var="updateUrl" />
<c:url value="/authentication" var="authenticationUrl" />
<c:url value="/track" var="trackUrl" />
<c:url value="/send_message" var="messageUrl" />
<c:url value="/" var="homeUrl" />

<html>
<head>
    <title>Post</title>
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
            background-image: url('http://wallpaper4k.info/wp-content/uploads/2016/03/4343-mountain-reflection-in-the-water-1920x1080-nature-wallpaper.jpeg');
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

        /*.homeImg {*/
            /*padding-top: 50px;*/
            /*background-position: center;*/
            /*background-size: cover;*/
        /*}*/

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


<%--<div class="row">--%>
    <%--<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">--%>
        <%--<img src="http://vignette1.wikia.nocookie.net/pokerhero/images/7/76/VERVOLG_IMAGE_1920x300_25.jpg/revision/latest?cb=20141103063642&path-prefix=zh" class="homeImg">--%>
    <%--</div>--%>
<%--</div>--%>

<div class="myBody container">
    <div class="row">
        <div class="col-md-12 jumbotron">

           <h2>${post.title}</h2>
            <br/><br/>
            <div>
                <c:set var="content" value="${post.content1}"/>
                <c:if test ="${ content != ''}" >
                ${post.content1}
                <br/><br/>
                </c:if>

                <c:set var="content" value="${post.content2}"/>
                <c:if test ="${ content != ''}" >
                ${post.content2}
                <br/><br/>
                </c:if>

                <c:set var="content" value="${post.content3}"/>
                <c:if test ="${ content != ''}" >
                ${post.content3}
                <br/><br/>
                </c:if>

                <c:set var="content" value="${post.content4}"/>
                <c:if test ="${ content != ''}" >
                ${post.content4}
                <br/><br/>
                </c:if>

                <c:set var="content" value="${post.content5}"/>
                <c:if test ="${ content != ''}" >
                ${post.content5}
                <br/><br/>
                </c:if>

                <c:set var="content" value="${post.content6}"/>
                <c:if test ="${ content != ''}" >
                ${post.content6}
                <br/><br/>
                </c:if>

                <c:set var="content" value="${post.content7}"/>
                <c:if test ="${ content != ''}" >
                ${post.content7}
                <br/><br/>
                </c:if>

                <c:set var="content" value="${post.content8}"/>
                <c:if test ="${ content != ''}" >
                ${post.content8}
                <br/><br/>
                </c:if>
            </div>
            Written by ${post.author}
            <br/>
            <br/>
            ${post.date}
            <br/>
            <br/>

            <%--<c:set var="content" value="${post.editDate}"/>--%>
            <%--<c:if test ="${ content != ''}" >--%>
            <%--${post.editDate}--%>
            <%--</c:if>--%>

            <c:set var="content" value="${post.link}"/>
            <c:if test ="${ content != ''}" >
            <iframe width="420" height="315"
                    src="${post.link}"
                    frameborder="0" allowfullscreen>
            </iframe>
            <br/>
            <br/>
            </c:if>


            <sec:authorize access="hasRole('ROLE_ADMIN')">
                <a href="${deleteUrl}" onclick="return confirm('Delete post?')" class="btn btn-default">Delete   </a>
            </sec:authorize>
            <sec:authorize access="hasRole('ROLE_ADMIN')">
                <a href="${updateUrl}" class="btn btn-default">   Update</a>
            </sec:authorize>
        </div>
    </div>
</div>
</body>
</html>




