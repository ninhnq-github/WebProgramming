<%--
  Created by IntelliJ IDEA.
  User: ninhn
  Date: 11/16/2020
  Time: 9:18 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Web Assignment</title>
</head>
<body>
<div class="Header">
    <div class = "title">This is Ninh Web Page</div>
    <link rel="stylesheet" href="style.css">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Anton&display=swap" rel="stylesheet">
</div>
<div class="Navigation">
    <a style="text-decoration: none" class="link" href="Index.jsp"><div class="Menu">Main Page</div></a>
    <a style="text-decoration: none" class="link" href="./Assignment.jsp"><div class="Menu">Assignment</div></a>
    <a style="text-decoration: none" class="link" href="Aboutme.jsp"><div class="Menu">About me</div></a>
    <a style="text-decoration: none" class="link" href="Contact.jsp"><div class="Menu">Contact</div></a>
</div>
<div class="Main">
    <div class="left">

    </div>
    <div class="mid">
        <div class="title">SUBMISSION FOR WEB PROGRAMMING ASSIGNMENT</div>
        <div class="text">The submissions was divided into each topic in class</div>
        <div class="title">Topic 3 - Introduction to JSP</div>
        <div class="Assign">
            <a class="card-link" href="${pageContext.request.contextPath}/GetSubmission?DestinationPage=Ass1" style="text-decoration: none">
                <div class="card">
                    <div class="card-title"><strong>Assignment 1</strong></div>
                    <img class="card-icon" src="Image/card-icon.png">
                    <img class="card-image" src="Image/Ass1.png">
                </div>
            </a>
        </div>
        <div class="title">Topic 4 - A crash course in HTML5 and CSS3</div>
        <div class="Assign">
            <a class="card-link" href="${pageContext.request.contextPath}/GetSubmission?DestinationPage=Ass2a" style="text-decoration: none">
                <div class="card">
                    <div class="card-title"><strong>Assignment 2a</strong></div>
                    <img class="card-icon" src="Image/card-icon.png">
                    <img class="card-image" src="Image/Ass2a.png">
                </div>
            </a>
            <a class="card-link" href="${pageContext.request.contextPath}/GetSubmission?DestinationPage=Ass2b" style="text-decoration: none">
                <div class="card">
                    <div class="card-title"><strong>Assignment 2b</strong></div>
                    <img class="card-icon" src="Image/card-icon.png">
                    <img class="card-image" src="Image/Ass2b.png">
                </div>
            </a>
        </div>
        <div class="title">Topic 5 - Java Servlets and the and Control-View Architecture</div>
        <div class="note"><strong>In this topic:</strong>
            <br>Assignment 3 was rewrite with Servlet Control,
            <br>Assignment 4 was rewrite with Data Validate (Naive)</div>
        <div class="Assign">
            <a class="card-link" href="${pageContext.request.contextPath}/GetSubmission?DestinationPage=Ass3" style="text-decoration: none">
                <div class="card">
                    <div class="card-title"><strong>Assignment 3</strong></div>
                    <img class="card-icon" src="Image/card-icon.png">
                    <img class="card-image" src="Image/Ass3.png">
                </div>
            </a>
            <a class="card-link" href="${pageContext.request.contextPath}/GetSubmission?DestinationPage=Ass4a" style="text-decoration: none">
                <div class="card">
                    <div class="card-title"><strong>Assignment 4a</strong></div>
                    <img class="card-icon" src="Image/card-icon.png">
                    <img class="card-image" src="Image/Ass4.png">
                </div>
            </a>
            <a class="card-link" href="${pageContext.request.contextPath}/GetSubmission?DestinationPage=Ass4b" style="text-decoration: none">
                <div class="card">
                    <div class="card-title"><strong>Assignment 4b</strong></div>
                    <img class="card-icon" src="Image/card-icon.png">
                    <img class="card-image" src="Image/Ass2b.png">
                </div>
            </a>
            <a class="card-link" href="${pageContext.request.contextPath}/GetSubmission?DestinationPage=Ass4c" style="text-decoration: none">
                <div class="card">
                    <div class="card-title"><strong>Assignment 4c</strong></div>
                    <img class="card-icon" src="Image/card-icon.png">
                    <img class="card-image" src="Image/Ass1.png">
                </div>
            </a>
        </div>
        <div class="title">Topic 6 - Input Validation and Error Handling</div>
        <div class="Assign">
            <a class="card-link" href="${pageContext.request.contextPath}/GetSubmission?DestinationPage=Ass5" style="text-decoration: none">
                <div class="card">
                    <div class="card-title"><strong>Assignment 5</strong></div>
                    <img class="card-icon" src="Image/card-icon.png">
                    <img class="card-image" src="Image/Ass5.png">
                </div>
            </a>
        </div>
        <div class="title">Topic 7 - Introduction to Session</div>
        <div class="note">In this topic Assignment 5 was rewrite with Http Session</div>
        <div class="Assign">
            <a class="card-link" href="${pageContext.request.contextPath}/GetSubmission?DestinationPage=Ass5s" style="text-decoration: none">
                <div class="card">
                    <div class="card-title"><strong>Assignment 5s</strong></div>
                    <img class="card-icon" src="Image/card-icon.png">
                    <img class="card-image" src="Image/Ass5.png">
                </div>
            </a>
        </div>
        <div class="title">Topic 8 - JSTL & EL</div>
        <div class="Assign">
            <span>Sorry teacher I have not finished this yet!! But I will complete it soon!</span>
        </div>
    </div>
    <div class="right">

    </div>
</div>
<div class="Footer">
    <div class="text">Copy right by Ninh Nguyen at HCMUTE 2020</div>
</div>
</body>
</html>
