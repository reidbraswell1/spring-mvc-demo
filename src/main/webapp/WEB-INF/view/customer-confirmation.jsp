<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8"> 
        <title>Customer Confirmation</title>
        <spring:url value="/resources/css/theme.css" var="themeCSS" />
        <link href="${themeCSS}" rel="stylesheet" />
        <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet"> 
    </head>
    <body class="background">
        <h3 class="center roboto">Customer Confirmation</h3>
        <br>
        <span class="roboto underline">The customer is confirmed: </span><span class="roboto red">&nbsp; '${customer.firstName} ${customer.lastName}'</span>
        <br>
        <br>
        <span class="roboto underline">Free Passes: </span><span class="roboto red">&nbsp; '${customer.freePasses}'</span>
        <br>
        <br>
        <span class="roboto underline">Postal Code: </span><span class="roboto red">&nbsp; '${customer.postalCode}'</span>
        <br>
        <br>
        <span class="roboto underline">Course Code: </span><span class="roboto red">&nbsp; '${customer.courseCode}'</span>
        <br>
        <br>
        <a href="/spring-mvc-demo/customer/showForm"><span class="roboto">Customer Form</span></a>
        <br>
        <br>
        <a href="/spring-mvc-demo"><span class="roboto">Hello World Menu</span></a>
    </body>
</html>
