<%--
  Created by IntelliJ IDEA.
  User: ninhn
  Date: 11/17/2020
  Time: 7:07 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Assignment 4</title>
</head>
<body>
<div class="Header">
    <div class = "title">This is Ninh Web Page</div>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/style.css">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Anton&display=swap" rel="stylesheet">
</div>
<div class="Navigation">
    <a style="text-decoration: none" class="link" href="${pageContext.request.contextPath}/Index.jsp"><div class="Menu">Main Page</div></a>
    <a style="text-decoration: none" class="link" href="${pageContext.request.contextPath}/Assignment.jsp"><div class="Menu">Assignment</div></a>
    <a style="text-decoration: none" class="link" href="${pageContext.request.contextPath}/Aboutme.jsp"><div class="Menu">About me</div></a>
    <a style="text-decoration: none" class="link" href="${pageContext.request.contextPath}/Contact.jsp"><div class="Menu">Contact</div></a>
</div>
<div class="Main">
    <div class="left">

    </div>
    <div class="mid" style="align-items: center; display: flex; flex-direction: column">
        <div class="title">This is Assignment 4 Form</div>
        <div class="Form">
            <div class="text" style="color: red">Something went wrong with your supply info! <br>Please follow <a href="${pageContext.request.contextPath}/Ass4/Ass4a.jsp">this link</a> and try again!</div>
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
