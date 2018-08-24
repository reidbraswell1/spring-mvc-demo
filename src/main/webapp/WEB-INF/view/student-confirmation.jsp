<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8"> 
        <title>Student Confirmation</title>
        <spring:url value="/resources/css/theme.css" var="themeCSS" />
        <link href="${themeCSS}" rel="stylesheet" />
        <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet"> 
    </head>
    <body class="background">
        <h3 class="center roboto">Student Confirmation</h3>
        <br>
        <span class="roboto underline">The student is confirmed: </span><span class="roboto red">&nbsp; '${student.firstName} ${student.lastName}'</span>
        <br>
        <br>
        <span class="roboto underline">Country: </span><span class="roboto red">&nbsp; '${student.country}'</span>
        <br>
        <br>
        <span class="roboto underline">Favorite Language: </span><span class="roboto red">&nbsp; '${student.favoriteLanguage}'</span>
        <br>
        <br>
        <span class="roboto underline">Date: </span><span class="roboto red">&nbsp; '${student.someDateString}'</span>
        <br>
        <br>
        <span class="roboto underline">Operating Systems: </span>
        <br>
        <br>
        <ul>
            <c:forEach var="temp" items="${student.operatingSystems}">
                <li class="roboto">${temp}</li>
                </c:forEach>
        </ul>
        <br>
        <br>
        <a href="/spring-mvc-demo/student/showForm"><span class="roboto">Student Form</span></a>
        <br>
        <br>
        <a href="/spring-mvc-demo"><span class="roboto">Hello World Menu</span></a>
    </body>
</html>
