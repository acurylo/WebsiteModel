<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Update Post</title>
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
            background-image: url('http://forum.ucweb.com/data/attachment/forum/201312/13/101025uhj4eej4pjunhebv.jpg');
            background-repeat: no-repeat;
            background-size: cover;
            background-attachment: fixed;
            background-position: center center;
            font-size: large;
            color: rgba(227, 227,227, 0.8);
            font-family: 'Raleway', sans-serif;
            padding-top: 200px;
        }

        .myBody {
            padding-top: 50px;
        }

        input{
            background-color: rgba(110, 110, 110, 0.8);
        }

        input[type=title], select {
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

        input[type=message], select {
            width: 100%;
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

            <h2>Update Post</h2><br/>

             <form:form  method="post" commandName="postUpdateForm" >

                    <label>Title:</label><br>
                    <form:input type="title" path = "title" value ="${post.title}"/><br/>

                    <label>Content1:</label><br>
                    <form:textarea name="text" cols="45" rows="5" path = "content1" placeholder ="${post.content1}" /><br/>

                    <label>Content2:</label><br>
                    <form:textarea name="text" cols="45" rows="5" path = "content2" placeholder ="${post.content2}"/><br/>

                    <label>Content3:</label><br>
                    <form:textarea name="text" cols="45" rows="5" path = "content3" placeholder ="${post.content3}" /><br/>

                    <label>Content4:</label><br>
                    <form:textarea name="text" cols="45" rows="5" path = "content4" placeholder ="${post.content4}" /><br/>

                    <label>Content5:</label><br>
                    <form:textarea name="text" cols="45" rows="5" path = "content5" placeholder ="${post.content5}" /><br/>

                    <label>Content6:</label><br>
                    <form:textarea name="text" cols="45" rows="5" path = "content6" placeholder ="${post.content6}" /><br/>

                    <label>Content7:</label><br>
                    <form:textarea name="text" cols="45" rows="5" path = "content7" placeholder ="${post.content7}" /><br/>

                    <label>Content8:</label><br>
                    <form:textarea name="text" cols="45" rows="5" path = "content8" placeholder ="${post.content8}" /><br/>

                    <label>Link:</label><br>
                    <form:input type="link" path = "link" value ="${post.link}" /><br/><br/>

                <input name="submit" type="submit" value="submit" />

            </form:form>
        </div>
    </div>
</div>
</body>
</html>
