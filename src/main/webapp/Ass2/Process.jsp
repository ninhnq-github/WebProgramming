<%--
  Created by IntelliJ IDEA.
  User: ninhn
  Date: 11/17/2020
  Time: 6:33 AM
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
        <div class="title">This is Assignment 2 Form</div>
        <div class="Form">
            <%
                String processor = request.getParameter("processor");
                String monitor = request.getParameter("monitor");
                String[] accessories = request.getParameterValues("peripherals");
                String message="";
                if (processor == null){
                    processor = "No processor selected";
                } else if (processor.equals("Pentium IV") || processor.equals("Celeron D"))
                    message = "Have you considered a more powerful processor?";

            %>
            <h1 style="text-align: center">Order Summary</h1>
            <table id="order-summary">
                <tr>
                    <td class="table-head table-two-cell"><p style="text-align: center"><b>Processor</b></p></td>
                    <td class="table-two-cell">&nbsp;<%=processor%>
                        <%if (message!=""){%>
                        <div style="color: red"><i>Have you considered a more powerful processor?</i></div><%}%>
                    </td>
                </tr>
                <tr>
                    <td class="table-head table-two-cell"><p style="text-align: center"><b>Accessories</b></p></td>
                    <td class="table-two-cell">
                        <%
                            if (monitor == null && accessories == null)
                            {
                        %>
                        <p>&nbsp;No accessory selected</p>
                        <%
                        }
                        else
                        {
                            if (monitor != null)
                            {
                        %>
                        <p>&nbsp;Monitor
                            <%
                                }
                                if (accessories != null)
                                {
                                    for (int i = 0; i < accessories.length; i++)
                                    {
                            %>
                            &nbsp;<%=accessories[i]%><br>
                            <%
                                        }
                                    }
                                }
                            %>
                        </p>
                    </td>
                </tr>
            </table>
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
