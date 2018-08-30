<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Student Registration Form</title>
        <spring:url value="/resources/css/theme.css" var="themeCSS" />
        <link href="${themeCSS}" rel="stylesheet" />
        <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
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
            <form:select class="selectpicker roboto" path="country">
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
            <form:label cssClass="roboto" path="favoriteLanguage">Favorite Language: &nbsp;</form:label>
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
            <form:label cssClass="roboto" path="operatingSystems">Favorite Operating System: &nbsp;</form:label>
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
        <a href="/spring-mvc-demo"><span style="color: black;" class="roboto">Hello World Menu</span></a>
        <br>
        <br>
        <div class="container">
            <h2>Controller</h2>
            <table class="table table-striped">
                <thead>
                    <tr>
                        <th>Controller</th>
                        <th>Mapping</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>StudentController</td>
                        <td>@Controller<br>
                            @RequestMapping("/student")<br>
                            public class StudentController {<hr>
                            @RequestMapping("/showForm")<br>
                            public String showForm(Model model)<hr>
                            @RequestMapping("/processForm")<br>
                            public String processForm(<br>
                            @Valid @ModelAttribute("student") Student student,<br>
                            BindingResult bindingResult)</td>
                    </tr>
                </tbody>
            </table>
            <h2>Validation</h2>
            <table class="table table-striped">
                <thead>
                    <tr>
                        <th>Field</th>
                        <th>Validation</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>First Name</td>
                        <td>@NotEmpty(message="First Name required")<br>@Length(min=2, message="At least 2 characters")</td>
                    </tr>
                    <tr>
                        <td>Last Name</td>
                        <td>@NotEmpty(message="Last Name required")<br>@Length(min=2, message="At least 2 characters")</td>
                    </tr>
                    <tr>
                        <td>Country</td>
                        <td>None Use value from select box.</td>
                    </tr>
                    <tr>
                        <td>Date</td>
                        <td>@NotNull(message="Date required")<br>@DateTimeFormat(pattern = "yyyy-MM-dd")</td>
                    </tr>
                </tbody>
            </table>
        </div>
    </body>
</html>
