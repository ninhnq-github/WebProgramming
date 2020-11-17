<%--
  Created by IntelliJ IDEA.
  User: ninhn
  Date: 11/17/2020
  Time: 8:49 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String name = request.getParameter("customerName");
    String email = request.getParameter("customerEmail");
    String quantity = request.getParameter("quantity");
    String phone = request.getParameter("phone");
    String credit = request.getParameter("CreditsNumber");
    String credit_expmonth = request.getParameter("expMonth");
    String credit_expyear = request.getParameter("expYear");
    String processor = request.getParameter("processor");
    String monitor = request.getParameter("monitor");
    String[] accessories = request.getParameterValues("peripherals");
    if (accessories==null) accessories = new String[1];
    if (name==null) name="";
    if (email==null) email="";
    if (quantity==null) quantity="";
    if (phone==null) phone="";
    if (credit==null) credit="";
    if (processor==null) processor="";
    int cremonth = 1, creyear = 1;
    if (credit_expmonth==null) credit_expmonth=""; else cremonth=Integer.parseInt(credit_expmonth);
    if (credit_expyear==null) credit_expmonth=""; else creyear=Integer.parseInt(credit_expmonth);
%>
<html>
<head>
    <title>Assignment 5</title>
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
        <div class="title">This is Assignment 5: Order Form</div>
        <div class="Form" style=" min-width: 600px; align-items: center; display: flex; flex-direction: column">
            <div >
                <%--Set initial request--%>
                <form name="purchase" method="get" action="${pageContext.request.contextPath}/GetReceiptv3">
                    <table >
                        <tr>
                            <td>Number to purchase:<br>(at least 1)</td>
                            <td><input class="textbox" type="text" name="quantity" value="<%=quantity%>" placeholder="Ex.: 5" maxlength=9>*</td>
                            <td><%if (request.getAttribute("quantityError")!=null){%>
                                <span> <%=request.getAttribute("quantityError")%> </span> <%}%></td>
                        </tr>
                        <tr>
                            <td>Your name:</td>
                            <td><input class="textbox" type="text" name="customerName" value="<%=name%>" placeholder="Ex.: Nguyen Van A">*</td>
                            <td><%if (request.getAttribute("nameError")!=null){%>
                                <span> <%=request.getAttribute("nameError")%> </span> <%}%> </td>
                        </tr>
                        <tr>
                            <td>Your phone:<br>(xxx-xxx-xxxx)</td>
                            <td><input class="textbox" type="text" name="phone" value="<%=phone%>" placeholder="Ex.: 0999-888-888">*</td>
                            <td><%if (request.getAttribute("phoneError")!=null){%>
                                <span> <%=request.getAttribute("phoneError")%> </span> <%}%></td>
                        </tr>
                        <tr>
                            <td>Your email:</td>
                            <td><input class="textbox" type="email" name="customerEmail" value="<%=email%>" placeholder="Ex.: something@gmail.com"><i>(optional)</i></td>
                            <td><%if (request.getAttribute("emailError")!=null){%>
                                <span><%=request.getAttribute("emailError")%></span><%}%></td>
                        </tr>
                        <tr>
                            <td>Credits information: </td>
                            <td>
                                <table>
                                    <tr><td>Number:<input class="textbox" type="text" name="CreditsNumber" value="<%=credit%>" placeholder="Ex.: 1234-1234-1234-1234">*</td></tr>
                                    <tr><td>Experition date: <select name="expMonth"><%for (int i=1; i<=12; i++){ if (i==cremonth){%> <option selected><%=i%></option> <%} else {%><option><%=i%></option><%}}%></select>
                                        <select name= "expYear"><%for (int i=2020; i<=2025; i++){ if (i==creyear) {%><option selected><%=i%></option><%} else {%><option><%=i%></option><%}}%></select>*</td></tr>
                                </table> </td>
                            <td><%if (request.getAttribute("creditError")!=null){%>
                                <span> <%=request.getAttribute("creditError")%> </span> <%}%></td>
                        </tr>
                    </table>
                        <table>
                            <thead>
                            <tr>
                                <td class="table-one-cell"><p style="text-align: center"><b>Processor</b></p></td>
                                <td class="table-one-cell"><p style="text-align: center"><b>Accessories</b></p></td>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td class="table-cell">
                                    <label>
                                        <input type="radio" name="processor" value="Celeron D"
                                            <%
                            if (processor.equals("Celeron D"))
                            {
                            %>
                                               checked
                                            <%
                            }
                        %>
                                        >
                                    </label>Celeron D
                                    <br>
                                    <label>
                                        <input type="radio" name="processor" value="Pentium IV"
                                            <%
                            if (processor.equals("Pentium IV"))
                            {
                        %>
                                               checked
                                            <%
                            }
                        %>
                                        >
                                    </label>Pentium IV
                                    <br>
                                    <label>
                                        <input type="radio" name="processor" value="Pentium D"
                                            <%
                            if (processor.equals("Pentium D"))
                            {
                        %>
                                               checked
                                            <%
                            }
                        %>
                                        >
                                    </label>Pentium D
                                </td>
                                <td class="table-cell">
                                    <label>
                                        <input type="checkbox" name="monitor"
                                            <%
                            if (monitor != null)
                            {
                        %>
                                               checked
                                            <%
                            }
                        %>
                                        >
                                    </label>Monitor
                                    <br>
                                    <label>
                                        <select name="peripherals" size="numvisible" style="font-size: 20px" multiple>
                                            <option value="Camera"
                                                    <%
                                                        if (find(accessories, "Camera"))
                                                        {
                                                    %>
                                                    selected
                                                    <%
                                                        }
                                                    %>
                                            >Camera</option>
                                            <option value="Printer"
                                                    <%
                                                        if (find(accessories, "Printer"))
                                                        {
                                                    %>
                                                    selected
                                                    <%
                                                        }
                                                    %>
                                            >Printer</option>
                                            <option value="Scanner"
                                                    <%
                                                        if (find(accessories, "Scanner"))
                                                        {
                                                    %>
                                                    selected
                                                    <%
                                                        }
                                                    %>
                                            >Scanner</option>
                                        </select>
                                    </label>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    <div class="text" style="font-size: 14px; color: red">The asterisk (*) is the field you must fill in</div>
                    <input id="btnSubmit" type="submit" value="PLACE ORDER">
                </form>
            </div>
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

<%!
    private boolean find(String[] accessories, String printer) {
        for (int i=0; i<accessories.length; i++)
            if (printer.equals(accessories[i]))
                return true;
        return false;
    }
%>
