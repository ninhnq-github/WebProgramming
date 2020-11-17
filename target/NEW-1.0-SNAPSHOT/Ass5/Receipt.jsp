<%--
  Created by IntelliJ IDEA.
  User: ninhn
  Date: 11/17/2020
  Time: 8:58 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Order Confirmation</title>
</head>
<body>
<div class="Header">
    <div class = "title">This is Ninh Web Page</div>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/style.css">
    <link rel="stylesheet" href="style.css">
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
        <div class="title">This is Assignment 5 Form</div>
        <div class="Form">
            <%
                String name = request.getParameter("customerName");
                String email = request.getParameter("customerEmail");
                String quantity = request.getParameter("quantity");
                String totalCost = (String)request.getAttribute("cost");
                String pricePerUnit = (String)request.getAttribute("pricePerUnit");
            %>
            <h1 style="text-align: center">Order Confirmation</h1>
            <p class="message">Thank you for your order of <%=quantity%> widgets, <%=name%>!</p>
            <p class="message">At $<%=pricePerUnit%>, your bill will be $<%=totalCost%>.</p>
            <p class="message">You will shortly receive an email confirmation at <%=email%>.</p>
            <p class="message"><b>Your Order complete at <%=LocalDate.now()%></b></p>
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
