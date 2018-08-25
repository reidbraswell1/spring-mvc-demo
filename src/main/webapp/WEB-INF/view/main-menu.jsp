<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <!--
        <meta name="viewport" content="width=device-width, initial-scale=1">
        -->
        <spring:url value="/resources/css/theme.css" var="themeCSS" />
        <link href="${themeCSS}" rel="stylesheet" />
        <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head>
    <body class="background">
        <h1 class="roboto center">Spring MVC Demo - Home Page</h1>
        <br>
        <br>
        <!-- Wrapper for slides -->
        <div class="container">
            <div id="myCarousel" class="carousel slide" data-ride="carousel">
                <div class="carousel-inner">
                    <div class="item active">
                        <h2 style="color:white;background-color:red;font-weight:bold;font-size:5em;text-align:center;">SPRING MVC DEMO</h2>
                    </div>

                    <div class="item">
                        <h2 style="color:white;background-color:green;font-weight:bold;font-size:5em;text-align:center;">SPRING MVC DEMO</h2>
                    </div>

                    <div class="item">
                        <h2 style="color:white;background-color:blue;font-weight:bold;font-size:5em;text-align:center;">SPRING MVC DEMO</h2>
                    </div>
                </div>
                <!-- Left and right controls -->
                <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="right carousel-control" href="#myCarousel" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
        </div>

        <br>
        <br>
        <div>
            <ol>
                <li>
                    <a href="hello/showForm"><span style="color:black;">Hello World Form</span></a>
                </li>
                <br>
                <br>
                <li>
                    <a href="student/showForm"><span style="color:black;">Student Form</span></a>
                </li>
                <br>
                <br>
                <li>
                    <a href="customer/showForm"><span style="color:black;">Customer Form</span></a>
                </li>
            </ol>
        </div>
    </body>
</html>
