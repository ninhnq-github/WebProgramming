<%--
  Created by IntelliJ IDEA.
  User: ninhn
  Date: 11/16/2020
  Time: 4:26 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Ninh Website</title>
    <link rel="stylesheet" href="style.css">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Anton&display=swap" rel="stylesheet">
    <link href="img/favicon.ico" rel="icon">
    <link href="https://fonts.googleapis.com/css2?family=Lato&family=Oswald:wght@200;300;400&display=swap" rel="stylesheet">
</head>
<body>
<div class="Header">
    <div class = "title">This is Ninh Web Page</div>
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
        <div class="text"><strong>Dear Ms Mai Anh Tho </strong>
            <br>I'm you student! This is my website and it's also is where I show all my submission to you!
            <br>You can find my submission in "Assignment"! (Each of them is instanced by a card)
            <br>Thanks to you for your instruction!! Without this, I can't finish my project!
            <br>I will really appreciate if you take a little bit of you precious time to leave for me a comment :))
            <br>Best regard!!
            <br>Your student, Ninh Nguyen <br> <br>
        </div>
        <div class="title">Web Introduction</div>
        <div class="text">
            <span><strong>This website was created by Nguyen Quoc Ninh (StudentID: 18110332)</strong></span>
            <ul>
                <li><strong>Languages</strong>: Java EE 8</li>
                <li><strong>Integrated Development Environment:</strong> Intellij IDEA</li>
                <li><strong>Host Server:</strong> Amazone Web Services (Elastic Beanstalk)</li>
                <li><strong>UIFrameWork:</strong> Java Server Page (JSP), Boostrap</li>
                <li><strong>Design Pattern:</strong> Model - Control - View</li>
                <li><strong>Database Management System:</strong> MySQL</li>
            </ul>
        </div>
        <div class="title">How does it work?</div>
        <div class="text">
            <span><strong>This website was designed to have some ability below: </strong></span>
            <ul>
                <li><strong>Online Portfolio</strong>: You can find many things about me (include my CV) </li>
                <li><strong>Web Programming Submission:</strong>Please find all my submission in Assignment</li>
                <li><strong>Algorithms:</strong> This website is where I upload all my activity in competitive programming</li>
            </ul>
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
