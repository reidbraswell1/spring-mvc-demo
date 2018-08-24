<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
    <head>
        <spring:url value="/resources/css/theme.css" var="themeCSS" />
        <link href="${themeCSS}" rel="stylesheet" />
        <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet"> 
        <title>Hello World - Input Form</title>
    </head>
    <body class="background">
        <h3 class="center roboto">Hello World - Input Form</h3>
        <form action="processFormVersionThree" method="POST">

            <input type="text" name="studentName" placeholder="What's your name"  />

            <input type='submit' class="roboto" />

        </form>
        <br>
        <br>
        <a href="/spring-mvc-demo"><span class="roboto">Hello World Menu</span></a>
    </body>
</html>
