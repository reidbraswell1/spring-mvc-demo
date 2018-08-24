<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8"> 
        <title>Customer Registration Form</title>
        <spring:url value="/resources/css/theme.css" var="themeCSS" />
        <link href="${themeCSS}" rel="stylesheet" />
        <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet"> 
    </head>
    <body class="background">
        <h3 class="center roboto">Customer Registration Form</h3>
        <br>
        <span class="roboto italics">Fill out the form. Asterisk (*) means required.</span>
        <br>
        <br>
        <form:form action="processForm" modelAttribute="customer">
            <form:label cssClass="roboto" for="firstName" path="firstName">First Name (*): </form:label>
            <form:input id="firstName" path="firstName"/>
            <form:errors cssClass="roboto red" path="firstName" delimiter=", "/>
            <br>
            <br>
            <form:label cssClass="roboto" for="firstName" path="firstName">Last Name (*): </form:label>
            <form:input id="lastName" path="lastName"/>
            <form:errors cssClass="roboto red" path="lastName" delimiter=", "/>
            <br>
            <br>
            <form:label cssClass="roboto" for="freePasses" path="freePasses">Free Passes: </form:label>
            <form:input id="freePasses" path="freePasses"/>
            <form:errors cssClass="roboto red" path="freePasses" delimiter=", "/>
            <br>
            <br>
            <form:label cssClass="roboto" for="postalCode" path="postalCode">Postal Code: </form:label>
            <form:input id="postalCode" path="postalCode"/>
            <form:errors cssClass="roboto red" path="postalCode" delimiter=", "/>
            <br>
            <br>
            <form:label cssClass="roboto" for="courseCode" path="courseCode">Course Code: </form:label>
            <form:input id="courseCode" path="courseCode"/>
            <form:errors cssClass="roboto red" path="courseCode" delimiter=", "/>
            <br>
            <br>
            <input type="submit" value="Submit"/>
        </form:form>
        <br>
        <br>
        <a href="/spring-mvc-demo"><span class="roboto">Hello World Menu</span></a>
    </body>
</html>

