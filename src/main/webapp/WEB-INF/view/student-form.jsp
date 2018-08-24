<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8"> 
        <title>Student Registration Form</title>
        <spring:url value="/resources/css/theme.css" var="themeCSS" />
        <link href="${themeCSS}" rel="stylesheet" />
        <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet"> 
    </head>
    <body class="background">
        <h3 class="center roboto">Student Registration Form</h3>
        <br>
        <form:form action="processForm" modelAttribute="student" >
            <form:label cssClass="roboto" for="firstName" path="firstName">First Name</form:label>
            <form:input id="firstName" path="firstName"/>
            <form:errors cssClass="roboto red" delimiter=", " path="firstName" />
            <br>
            <br>
            <form:label cssClass="roboto" for="lastName" path="lastName">Last Name</form:label>
            <form:input id="lastName" path="lastName"/>
            <form:errors cssClass="roboto red" delimiter=", " path="lastName" />
            <br>
            <br>
            <form:label cssClass="roboto" for="country" path="country">Country</form:label>
            <form:select path="country">
                <!--
                <form:option value="Brazil" label="Brazil"/>
                <form:option value="France" label="France"/>
                <form:option value="Germany" label="Germany"/>
                <form:option value="India" label="India"/>
                -->
                <form:options items="${theCountryOptions}"/>
            </form:select>
            <br>
            <br>
            <form:label cssClass="roboto" for="java" path="favoriteLanguage">Java</form:label>
            <form:radiobutton id="java" path="favoriteLanguage" value="Java" />
            <form:label cssClass="roboto" for="c#" path="favoriteLanguage">C#</form:label>
            <form:radiobutton id="c#" path="favoriteLanguage" value="C#" />
            <form:label cssClass="roboto" for="php" path="favoriteLanguage">PHP</form:label>
            <form:radiobutton id="php" path="favoriteLanguage" value="PHP" />
            <form:label cssClass="roboto" for="ruby" path="favoriteLanguage">Ruby</form:label>
            <form:radiobutton id="ruby" path="favoriteLanguage" value="Ruby" />
            <form:errors cssClass="roboto red" delimiter=", " path="favoriteLanguage" />
            <br>
            <br>
            <form:label cssClass="roboto" for="linux" path="operatingSystems">Linux</form:label>
            <form:checkbox id="linux" path="operatingSystems" value="Linux" />
            <form:label cssClass="roboto" for="macos" path="operatingSystems">Mac OS</form:label>
            <form:checkbox id="macos" path="operatingSystems" value="Mac OS" />
            <form:label cssClass="roboto" for="mswindows" path="operatingSystems">MS Windows</form:label>
            <form:checkbox path="operatingSystems" value="MS Windows" />
            <form:errors cssClass="roboto red" delimiter=", " path="operatingSystems" />
            <br>
            <br>
            <form:label cssClass="roboto" for="date" path="someDate">Date</form:label> 
            <form:input id="date" type="date" path="someDate"/>
            <form:errors cssClass="roboto red" delimiter=", " path="someDate" />
            <br>
            <br>
            <input type="submit" value="Submit"/>
        </form:form>
        <br>
        <br>
        <a href="/spring-mvc-demo"><span class="roboto">Hello World Menu</span></a>
    </body>
</html>
