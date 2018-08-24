<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8"> 
        <spring:url value="/resources/css/theme.css" var="themeCSS" />
        <link href="${themeCSS}" rel="stylesheet" />
        <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet"> 
    </head>
    <body class="background">
        <h4 class="roboto center">Hello World of Spring!</h4>

        <br>

        <span class="bold roboto">Student Name: </span> <span class="green roboto"> ${param.studentName} </span>

        <br><br>

        <span class="bold roboto">The Message: </span> <span class="red roboto"> ${message} </span>
        
        <br>
        <br>
        <a href="showForm"><span class="roboto">Hello World Form</span></a>
        <br>
        <br>
        <a href="/spring-mvc-demo"><span class="roboto">Hello World Menu</span></a>
    </body>
</html>