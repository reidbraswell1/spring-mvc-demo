<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
    <head>
        <spring:url value="/resources/css/theme.css" var="themeCSS" />
        <link href="${themeCSS}" rel="stylesheet" />
        <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet"> 
    </head>
    <body class="background">
        <h2 class="roboto center">Spring MVC Demo - Home Page</h2>
        <ol>
            <li>
                <a href="hello/showForm"><span class="roboto">Hello World Form</span></a>
            </li>
            <br>
            <br>
            <li>
                <a href="student/showForm"><span class="roboto">Student Form</span></a>
            </li>
            <br>
            <br>
            <li>
                <a href="customer/showForm"><span class="roboto">Customer Form</span></a>
            </li>
        </ol>
    </body>
</html>
