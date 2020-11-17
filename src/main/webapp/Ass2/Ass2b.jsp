<%--
  Created by IntelliJ IDEA.
  User: ninhn
  Date: 11/17/2020
  Time: 6:21 AM
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
        <div class="Form" style="align-items: center; display: flex; flex-direction: column">
            <form name="frmPurchase" method="get" action="${pageContext.request.contextPath}/Ass2/Process.jsp">
                <table id="info">
                    <thead>
                    <tr>
                        <td class="table-one-cell"><p style="text-align: center"><b>Processor</b></p></td>
                        <td class="table-one-cell"><p style="text-align: center"><b>Accessories</b></p></td>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td class="table-one-cell">
                            <label>
                                <input type="radio" name="processor" value="Celeron D">
                            </label>Celeron D
                            <br>
                            <label>
                                <input type="radio" name="processor" value="Pentium IV">
                            </label>Pentium IV
                            <br>
                            <label>
                                <input type="radio" name="processor" value="Pentium D">
                            </label>Pentium D
                        </td>
                        <td class="table-one-cell">
                            <label>
                                <input type="checkbox" name="monitor">
                            </label>Monitor
                            <br>
                            <label>
                                <select name="peripherals" size="numvisible" style="font-size: 20px" multiple>
                                    <option value="Camera">Camera</option>
                                    <option value="Printer">Printer</option>
                                    <option value="Scanner">Scanner</option>
                                </select>
                            </label>
                        </td>
                    </tr>
                    </tbody>
                </table>
                <div><br><br></div>
                <input id="btnPurchase" type="submit" value="PURCHASE">
            </form>
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

