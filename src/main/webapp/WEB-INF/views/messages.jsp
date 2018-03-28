<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Messages</title>
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
        background-image: url('https://wallpapersinside.com/wallpapers/l/1920x1080/3/fantasy-nature-trees-forest-seasons-bridges-reality-kr-1920x1080-2924.jpg');
        background-repeat: no-repeat;
        background-size: cover;
        background-attachment: fixed;
        background-position: center center;
        font-size: x-large;
        color: rgba(227, 227,227, 0.8);
        font-family: 'Raleway', sans-serif;
        padding-top: 200px;
    }

    .myBody {
        padding-top: 50px;
    }



    .jumbotron {
        background: rgba(61, 61, 61, 0.8);
        border-radius: 10px!important;
    }

    h2{
        text-align: center;
        font-size: 52px;
    }

    a {
        text-decoration: none !important;
    }

    a:hover {
        color: darkgrey;
    }

    .date{
        text-align: right;
    }

    .innerJumbotron{
        background: rgba(31, 31, 31, 0.8)!important;
        border-radius: 10px!important;
    }

    .links{
        color: rgba(227, 227,227, 0.8);
    }

    .myImg{
        width: 30px;
        height:30px;
    }


</style>
</head>
<body>
<div class="myBody container">
    <div class="row">
        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 jumbotron">
            <h2>Messages</h2><br/>
            <c:forEach items="${messages}" var="message">
                <div class="row innerJumbotron">
                    <div class="col-md-6">
                        <c:set var="author" value="${author}"/>
                        <c:set var="received1" value="${message.received_by_admin1}"/>
                        <c:set var="received2" value="${message.received_by_admin2}"/>
                        <c:if test ="${ author == 1}" >
                             <c:if test ="${ received1 == true}" >
                            <img src="http://fumair.co.uk/wp-content/uploads/2012/02/green-tick.png" class="myImg">
                             </c:if>
                            <c:if test ="${ received1 == false}" >
                            <img src="https://medschoolappstest.ucr.edu/images/red_cross_in_circle.png" class="myImg">
                            </c:if>
                        </c:if>
                        <c:if test ="${ author == 2}" >
                            <c:if test ="${ received2 == true}" >
                                <img src="http://fumair.co.uk/wp-content/uploads/2012/02/green-tick.png" class="myImg">
                            </c:if>
                            <c:if test ="${ received2 == false}" >
                                <img src="https://medschoolappstest.ucr.edu/images/red_cross_in_circle.png" class="myImg">
                            </c:if>
                        </c:if>
                        <a href="/message/${message.id}" class="links"> ${message.title}</a>
                    </div>
                    <div class="col-md-6 date">
                        ${message.date}
                    </div>
                </div>
                <br/>
            </c:forEach>

        </div>
    </div>
</div>

</body>
</html>
