<%--
  Created by IntelliJ IDEA.
  User: ninhn
  Date: 11/17/2020
  Time: 6:17 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Assignment 2</title>
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
        <div class="title">This is Assignment 2.1 Form</div>
        <div class="Form">
            <%@ page import="java.time.LocalDate"%>
            <%@ page import="java.time.DateTimeException" %>
            <%
                String name = request.getParameter("customerName");
                String email = request.getParameter("customerEmail");
                String quantity = request.getParameter("quantity");
                double pricePerUnit=9.95;
                int quantityNumber = Integer.parseInt(quantity);
                double totalCost = quantityNumber*pricePerUnit;
            %>
            <h2>Order Confirmation</h2>
            <p>Thank you for your order of <%= quantity %> widgets, <%= name %>. <br></p>
            <p>At $<%= pricePerUnit %>, your bill will be $<%= totalCost %>.</p>
            <p>You will shortly receive an email confirmation at <%= email %>. <br></p>
            <p>Your Order complete at <%=LocalDate.now()%></p>
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


