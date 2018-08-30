<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Notes</title>
        <spring:url value="/resources/css/theme.css" var="themeCSS" />
        <link href="${themeCSS}" rel="stylesheet" />
        <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet"> 
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head>
    <body class="background">
        <h3 class="center roboto">Notes</h3>
        <br>
        <br>
        <br>
        <a href="/spring-mvc-demo"><span style="color:black;" class="roboto">Hello World Menu</span></a>
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
                        <td>CustomerController</td>
                        <td>@Controller<br>
                            @RequestMapping("/customer")<br>
                            public class CustomerController {<hr>
                            @RequestMapping("/showForm")<br>
                            public String showForm(Model model)<hr>
                            @RequestMapping("/processForm")<br>
                            public String processForm(<br>
                            @Valid @ModelAttribute("student") Customer customer,<br>
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
                        <td>@NotEmpty()<br>@Size(min=1, message="min 1 character")</td>
                    </tr>
                    <tr>
                        <td>Last Name</td>
                        <td>@NotEmpty()<br>@Size(min=1, message="min 1 character")</td>
                    </tr>
                    <tr>
                        <td>Free Passes</td>
                        <td>@Min(value=0, message="must be greater than or equal to zero")<br>@Max(value=10, message="must be less than or equal to 10")</td>
                    </tr>
                    <tr>
                        <td>Postal Code</td>
                        <td>@Pattern(regexp="^[a-z,A-Z,0-9]{5}", message="only 5 chars/digits")</td>
                    </tr>
                    <tr>
                        <td>Course Code</td>
                        <td>@CourseCode - Custom Validator</td>
                    </tr>
                </tbody>
            </table>
        </div>
    </body>
</html>

